
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {struct the_nilfs* mi_nilfs; } ;
struct TYPE_3__ {struct the_nilfs* s_nilfs; } ;


 TYPE_2__* NILFS_MDT (struct inode*) ;
 TYPE_1__* NILFS_SB (struct super_block*) ;

__attribute__((used)) static inline struct the_nilfs *NILFS_I_NILFS(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 return sb ? NILFS_SB(sb)->s_nilfs : NILFS_MDT(inode)->mi_nilfs;
}
