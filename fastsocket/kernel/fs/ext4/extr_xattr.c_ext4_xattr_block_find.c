
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct ext4_xattr_info {int name; int name_index; scalar_t__ value_len; int value; } ;
struct TYPE_9__ {int not_found; int here; int first; scalar_t__ end; TYPE_6__* base; } ;
struct ext4_xattr_block_find {TYPE_1__ s; TYPE_2__* bh; } ;
struct TYPE_12__ {int h_refcount; } ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;
struct TYPE_10__ {scalar_t__ b_size; scalar_t__ b_data; int b_count; } ;


 int BFIRST (TYPE_2__*) ;
 TYPE_6__* BHDR (TYPE_2__*) ;
 int EIO ;
 int ENODATA ;
 TYPE_5__* EXT4_I (struct inode*) ;
 int atomic_read (int *) ;
 int ea_bdebug (TYPE_2__*,char*,int ,int ) ;
 int ea_idebug (struct inode*,char*,int ,int ,int ,long) ;
 int ext4_error (struct super_block*,char*,int ,scalar_t__) ;
 scalar_t__ ext4_xattr_check_block (TYPE_2__*) ;
 int ext4_xattr_find_entry (int *,int ,int ,scalar_t__,int) ;
 int le32_to_cpu (int ) ;
 TYPE_2__* sb_bread (struct super_block*,scalar_t__) ;

__attribute__((used)) static int
ext4_xattr_block_find(struct inode *inode, struct ext4_xattr_info *i,
        struct ext4_xattr_block_find *bs)
{
 struct super_block *sb = inode->i_sb;
 int error;

 ea_idebug(inode, "name=%d.%s, value=%p, value_len=%ld",
    i->name_index, i->name, i->value, (long)i->value_len);

 if (EXT4_I(inode)->i_file_acl) {

  bs->bh = sb_bread(sb, EXT4_I(inode)->i_file_acl);
  error = -EIO;
  if (!bs->bh)
   goto cleanup;
  ea_bdebug(bs->bh, "b_count=%d, refcount=%d",
   atomic_read(&(bs->bh->b_count)),
   le32_to_cpu(BHDR(bs->bh)->h_refcount));
  if (ext4_xattr_check_block(bs->bh)) {
   ext4_error(sb, "inode %lu: bad block %llu",
       inode->i_ino, EXT4_I(inode)->i_file_acl);
   error = -EIO;
   goto cleanup;
  }

  bs->s.base = BHDR(bs->bh);
  bs->s.first = BFIRST(bs->bh);
  bs->s.end = bs->bh->b_data + bs->bh->b_size;
  bs->s.here = bs->s.first;
  error = ext4_xattr_find_entry(&bs->s.here, i->name_index,
           i->name, bs->bh->b_size, 1);
  if (error && error != -ENODATA)
   goto cleanup;
  bs->s.not_found = error;
 }
 error = 0;

cleanup:
 return error;
}
