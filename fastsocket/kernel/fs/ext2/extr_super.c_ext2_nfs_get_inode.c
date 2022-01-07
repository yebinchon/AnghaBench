
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_inodes_count; } ;


 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int ESTALE ;
 scalar_t__ EXT2_FIRST_INO (struct super_block*) ;
 scalar_t__ EXT2_ROOT_INO ;
 TYPE_2__* EXT2_SB (struct super_block*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* ext2_iget (struct super_block*,scalar_t__) ;
 int iput (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static struct inode *ext2_nfs_get_inode(struct super_block *sb,
  u64 ino, u32 generation)
{
 struct inode *inode;

 if (ino < EXT2_FIRST_INO(sb) && ino != EXT2_ROOT_INO)
  return ERR_PTR(-ESTALE);
 if (ino > le32_to_cpu(EXT2_SB(sb)->s_es->s_inodes_count))
  return ERR_PTR(-ESTALE);






 inode = ext2_iget(sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 if (generation && inode->i_generation != generation) {

  iput(inode);
  return ERR_PTR(-ESTALE);
 }
 return inode;
}
