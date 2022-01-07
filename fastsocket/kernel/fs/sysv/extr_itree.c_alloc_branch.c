
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* sysv_zone_t ;
struct inode {TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {int s_blocksize; } ;
struct TYPE_7__ {void* key; struct buffer_head* bh; void** p; } ;
typedef TYPE_1__ Indirect ;


 int ENOSPC ;
 int SYSV_SB (TYPE_2__*) ;
 int bforget (struct buffer_head*) ;
 int block_to_cpu (int ,void*) ;
 int dirty_indirect (struct buffer_head*,struct inode*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (scalar_t__,int ,int) ;
 struct buffer_head* sb_getblk (TYPE_2__*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sysv_free_block (TYPE_2__*,void*) ;
 void* sysv_new_block (TYPE_2__*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int alloc_branch(struct inode *inode,
   int num,
   int *offsets,
   Indirect *branch)
{
 int blocksize = inode->i_sb->s_blocksize;
 int n = 0;
 int i;

 branch[0].key = sysv_new_block(inode->i_sb);
 if (branch[0].key) for (n = 1; n < num; n++) {
  struct buffer_head *bh;
  int parent;

  branch[n].key = sysv_new_block(inode->i_sb);
  if (!branch[n].key)
   break;




  parent = block_to_cpu(SYSV_SB(inode->i_sb), branch[n-1].key);
  bh = sb_getblk(inode->i_sb, parent);
  lock_buffer(bh);
  memset(bh->b_data, 0, blocksize);
  branch[n].bh = bh;
  branch[n].p = (sysv_zone_t*) bh->b_data + offsets[n];
  *branch[n].p = branch[n].key;
  set_buffer_uptodate(bh);
  unlock_buffer(bh);
  dirty_indirect(bh, inode);
 }
 if (n == num)
  return 0;


 for (i = 1; i < n; i++)
  bforget(branch[i].bh);
 for (i = 0; i < n; i++)
  sysv_free_block(inode->i_sb, branch[i].key);
 return -ENOSPC;
}
