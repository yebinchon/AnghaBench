
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_magic; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_2__ {struct super_block* mnt_sb; } ;


 scalar_t__ DEVPTS_SUPER_MAGIC ;
 TYPE_1__* devpts_mnt ;

__attribute__((used)) static inline struct super_block *pts_sb_from_inode(struct inode *inode)
{




 return devpts_mnt->mnt_sb;
}
