
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_leaf_bh; int dl_hinfo; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOSPC ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 int brelse (struct buffer_head*) ;
 int mlog (int ,char*,int,unsigned long long) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_dir_indexed (struct inode*) ;
 int ocfs2_dx_dir_name_hash (struct inode*,char const*,int,int *) ;
 int ocfs2_extend_dir (struct ocfs2_super*,struct inode*,struct buffer_head*,unsigned int,struct ocfs2_dir_lookup_result*,struct buffer_head**) ;
 int ocfs2_find_dir_space_el (struct inode*,char const*,int,struct buffer_head**) ;
 int ocfs2_find_dir_space_id (struct inode*,struct buffer_head*,char const*,int,struct buffer_head**,unsigned int*) ;
 int ocfs2_prepare_dx_dir_for_insert (struct inode*,struct buffer_head*,char const*,int,struct ocfs2_dir_lookup_result*) ;
 scalar_t__ ocfs2_supports_indexed_dirs (struct ocfs2_super*) ;

int ocfs2_prepare_dir_for_insert(struct ocfs2_super *osb,
     struct inode *dir,
     struct buffer_head *parent_fe_bh,
     const char *name,
     int namelen,
     struct ocfs2_dir_lookup_result *lookup)
{
 int ret;
 unsigned int blocks_wanted = 1;
 struct buffer_head *bh = ((void*)0);

 mlog(0, "getting ready to insert namelen %d into dir %llu\n",
      namelen, (unsigned long long)OCFS2_I(dir)->ip_blkno);

 if (!namelen) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto out;
 }
 if (ocfs2_supports_indexed_dirs(osb))
  ocfs2_dx_dir_name_hash(dir, name, namelen, &lookup->dl_hinfo);

 if (ocfs2_dir_indexed(dir)) {
  ret = ocfs2_prepare_dx_dir_for_insert(dir, parent_fe_bh,
            name, namelen, lookup);
  if (ret)
   mlog_errno(ret);
  goto out;
 }

 if (OCFS2_I(dir)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
  ret = ocfs2_find_dir_space_id(dir, parent_fe_bh, name,
           namelen, &bh, &blocks_wanted);
 } else
  ret = ocfs2_find_dir_space_el(dir, name, namelen, &bh);

 if (ret && ret != -ENOSPC) {
  mlog_errno(ret);
  goto out;
 }

 if (ret == -ENOSPC) {



  BUG_ON(bh);

  ret = ocfs2_extend_dir(osb, dir, parent_fe_bh, blocks_wanted,
           lookup, &bh);
  if (ret) {
   if (ret != -ENOSPC)
    mlog_errno(ret);
   goto out;
  }

  BUG_ON(!bh);
 }

 lookup->dl_leaf_bh = bh;
 bh = ((void*)0);
out:
 brelse(bh);
 return ret;
}
