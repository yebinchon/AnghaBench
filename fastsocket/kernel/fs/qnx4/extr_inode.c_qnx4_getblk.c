
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_sb; } ;
struct buffer_head {int dummy; } ;


 int CURRENT_TIME_SEC ;
 int brelse (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int qnx4_block_map (struct inode*,int) ;
 int qnx4_free_block (int ,int) ;
 int qnx4_new_block (int ) ;
 struct buffer_head* sb_getblk (int ,int) ;
 int tmp ;
 int tst ;

__attribute__((used)) static struct buffer_head *qnx4_getblk(struct inode *inode, int nr,
           int create)
{
 struct buffer_head *result = ((void*)0);

 if ( nr >= 0 )
  nr = qnx4_block_map( inode, nr );
 if (nr) {
  result = sb_getblk(inode->i_sb, nr);
  return result;
 }
 if (!create) {
  return ((void*)0);
 }
 inode->i_ctime = CURRENT_TIME_SEC;
 mark_inode_dirty(inode);
 return result;
}
