
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int s_nilfs; } ;


 TYPE_1__* NILFS_SB (struct super_block*) ;
 struct inode* nilfs_alloc_inode_common (int ) ;

struct inode *nilfs_alloc_inode(struct super_block *sb)
{
 return nilfs_alloc_inode_common(NILFS_SB(sb)->s_nilfs);
}
