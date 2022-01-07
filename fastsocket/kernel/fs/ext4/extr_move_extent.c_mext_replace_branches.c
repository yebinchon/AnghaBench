
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;


 int EIO ;
 int double_down_write_data_sem (struct inode*,struct inode*) ;
 int double_up_write_data_sem (struct inode*,struct inode*) ;
 int ext4_error (int ,char*,...) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_invalidate_cache (struct inode*) ;
 int ext_depth (struct inode*) ;
 int get_ext_path (struct inode*,scalar_t__,struct ext4_ext_path**) ;
 int kfree (struct ext4_ext_path*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mext_calc_swap_extents (struct ext4_extent*,struct ext4_extent*,scalar_t__,scalar_t__,scalar_t__) ;
 int mext_leaf_block (int *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,scalar_t__*) ;

__attribute__((used)) static int
mext_replace_branches(handle_t *handle, struct inode *orig_inode,
      struct inode *donor_inode, ext4_lblk_t from,
      ext4_lblk_t count, int *err)
{
 struct ext4_ext_path *orig_path = ((void*)0);
 struct ext4_ext_path *donor_path = ((void*)0);
 struct ext4_extent *oext, *dext;
 struct ext4_extent tmp_dext, tmp_oext;
 ext4_lblk_t orig_off = from, donor_off = from;
 int depth;
 int replaced_count = 0;
 int dext_alen;


 double_down_write_data_sem(orig_inode, donor_inode);


 *err = get_ext_path(orig_inode, orig_off, &orig_path);
 if (*err)
  goto out;


 *err = get_ext_path(donor_inode, donor_off, &donor_path);
 if (*err)
  goto out;
 depth = ext_depth(orig_inode);
 oext = orig_path[depth].p_ext;
 tmp_oext = *oext;

 depth = ext_depth(donor_inode);
 dext = donor_path[depth].p_ext;
 tmp_dext = *dext;

 *err = mext_calc_swap_extents(&tmp_dext, &tmp_oext, orig_off,
          donor_off, count);
 if (*err)
  goto out;


 while (1) {

  if (!dext) {
   ext4_error(donor_inode->i_sb,
       "The extent for donor must be found");
   *err = -EIO;
   goto out;
  } else if (donor_off != le32_to_cpu(tmp_dext.ee_block)) {
   ext4_error(donor_inode->i_sb,
    "Donor offset(%u) and the first block of donor "
    "extent(%u) should be equal",
    donor_off,
    le32_to_cpu(tmp_dext.ee_block));
   *err = -EIO;
   goto out;
  }


  *err = mext_leaf_block(handle, orig_inode,
        orig_path, &tmp_dext, &orig_off);
  if (*err)
   goto out;


  *err = mext_leaf_block(handle, donor_inode,
        donor_path, &tmp_oext, &donor_off);
  if (*err)
   goto out;

  dext_alen = ext4_ext_get_actual_len(&tmp_dext);
  replaced_count += dext_alen;
  donor_off += dext_alen;
  orig_off += dext_alen;


  if (replaced_count >= count)
   break;

  if (orig_path)
   ext4_ext_drop_refs(orig_path);
  *err = get_ext_path(orig_inode, orig_off, &orig_path);
  if (*err)
   goto out;
  depth = ext_depth(orig_inode);
  oext = orig_path[depth].p_ext;
  tmp_oext = *oext;

  if (donor_path)
   ext4_ext_drop_refs(donor_path);
  *err = get_ext_path(donor_inode, donor_off, &donor_path);
  if (*err)
   goto out;
  depth = ext_depth(donor_inode);
  dext = donor_path[depth].p_ext;
  tmp_dext = *dext;

  *err = mext_calc_swap_extents(&tmp_dext, &tmp_oext, orig_off,
        donor_off, count - replaced_count);
  if (*err)
   goto out;
 }

out:
 if (orig_path) {
  ext4_ext_drop_refs(orig_path);
  kfree(orig_path);
 }
 if (donor_path) {
  ext4_ext_drop_refs(donor_path);
  kfree(donor_path);
 }

 ext4_ext_invalidate_cache(orig_inode);
 ext4_ext_invalidate_cache(donor_inode);

 double_up_write_data_sem(orig_inode, donor_inode);

 return replaced_count;
}
