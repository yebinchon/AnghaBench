
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ocfs2_dinode {int i_suballoc_bit; int i_blkno; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,int ,int) ;
 int ocfs2_which_suballoc_group (int ,int ) ;

int ocfs2_free_dinode(handle_t *handle,
        struct inode *inode_alloc_inode,
        struct buffer_head *inode_alloc_bh,
        struct ocfs2_dinode *di)
{
 u64 blk = le64_to_cpu(di->i_blkno);
 u16 bit = le16_to_cpu(di->i_suballoc_bit);
 u64 bg_blkno = ocfs2_which_suballoc_group(blk, bit);

 return ocfs2_free_suballoc_bits(handle, inode_alloc_inode,
     inode_alloc_bh, bit, bg_blkno, 1);
}
