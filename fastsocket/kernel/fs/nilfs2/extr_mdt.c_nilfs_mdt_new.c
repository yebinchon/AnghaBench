
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {TYPE_1__* i_mapping; int * i_fop; int * i_op; } ;
typedef int ino_t ;
struct TYPE_2__ {int * a_ops; } ;


 int NILFS_MDT_GFP ;
 int def_mdt_aops ;
 int def_mdt_fops ;
 int def_mdt_iops ;
 struct inode* nilfs_mdt_new_common (struct the_nilfs*,struct super_block*,int ,int ) ;

struct inode *nilfs_mdt_new(struct the_nilfs *nilfs, struct super_block *sb,
       ino_t ino)
{
 struct inode *inode = nilfs_mdt_new_common(nilfs, sb, ino,
         NILFS_MDT_GFP);

 if (!inode)
  return ((void*)0);

 inode->i_op = &def_mdt_iops;
 inode->i_fop = &def_mdt_fops;
 inode->i_mapping->a_ops = &def_mdt_aops;
 return inode;
}
