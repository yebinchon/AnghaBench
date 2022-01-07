
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minix_inode {scalar_t__ i_mode; scalar_t__ i_nlinks; } ;
struct minix2_inode {scalar_t__ i_mode; scalar_t__ i_nlinks; } ;
struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ INODE_VERSION (struct inode*) ;
 scalar_t__ MINIX_V1 ;
 int brelse (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct minix_inode* minix_V1_raw_inode (int ,int ,struct buffer_head**) ;
 struct minix2_inode* minix_V2_raw_inode (int ,int ,struct buffer_head**) ;

__attribute__((used)) static void minix_clear_inode(struct inode *inode)
{
 struct buffer_head *bh = ((void*)0);

 if (INODE_VERSION(inode) == MINIX_V1) {
  struct minix_inode *raw_inode;
  raw_inode = minix_V1_raw_inode(inode->i_sb, inode->i_ino, &bh);
  if (raw_inode) {
   raw_inode->i_nlinks = 0;
   raw_inode->i_mode = 0;
  }
 } else {
  struct minix2_inode *raw_inode;
  raw_inode = minix_V2_raw_inode(inode->i_sb, inode->i_ino, &bh);
  if (raw_inode) {
   raw_inode->i_nlinks = 0;
   raw_inode->i_mode = 0;
  }
 }
 if (bh) {
  mark_buffer_dirty(bh);
  brelse (bh);
 }
}
