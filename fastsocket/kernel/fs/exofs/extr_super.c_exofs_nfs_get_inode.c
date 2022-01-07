
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* exofs_iget (struct super_block*,int ) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct inode *exofs_nfs_get_inode(struct super_block *sb,
  u64 ino, u32 generation)
{
 struct inode *inode;

 inode = exofs_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (generation && inode->i_generation != generation) {

  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
