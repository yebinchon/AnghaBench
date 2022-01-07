
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext4_lblk_t ;
typedef int __le32 ;
struct TYPE_7__ {int i_data; } ;
struct TYPE_6__ {int key; } ;
typedef TYPE_1__ Indirect ;


 int EIO ;
 TYPE_5__* EXT4_I (struct inode*) ;
 int add_chain (TYPE_1__*,struct buffer_head*,int) ;
 scalar_t__ bh_submit_read (struct buffer_head*) ;
 int bh_uptodate_or_lock (struct buffer_head*) ;
 scalar_t__ ext4_check_indirect_blockref (struct inode*,struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static Indirect *ext4_get_branch(struct inode *inode, int depth,
     ext4_lblk_t *offsets,
     Indirect chain[4], int *err)
{
 struct super_block *sb = inode->i_sb;
 Indirect *p = chain;
 struct buffer_head *bh;

 *err = 0;

 add_chain(chain, ((void*)0), EXT4_I(inode)->i_data + *offsets);
 if (!p->key)
  goto no_block;
 while (--depth) {
  bh = sb_getblk(sb, le32_to_cpu(p->key));
  if (unlikely(!bh))
   goto failure;

  if (!bh_uptodate_or_lock(bh)) {
   if (bh_submit_read(bh) < 0) {
    put_bh(bh);
    goto failure;
   }

   if (ext4_check_indirect_blockref(inode, bh)) {
    put_bh(bh);
    goto failure;
   }
  }

  add_chain(++p, bh, (__le32 *)bh->b_data + *++offsets);

  if (!p->key)
   goto no_block;
 }
 return ((void*)0);

failure:
 *err = -EIO;
no_block:
 return p;
}
