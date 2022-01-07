
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_dirent {TYPE_2__* s_parent; int name_node; int inode_node; } ;
struct TYPE_3__ {int name_tree; int inode_tree; int subdirs; } ;
struct TYPE_4__ {TYPE_1__ s_dir; } ;


 scalar_t__ SYSFS_DIR ;
 int rb_erase (int *,int *) ;
 scalar_t__ sysfs_type (struct sysfs_dirent*) ;

__attribute__((used)) static void sysfs_unlink_sibling(struct sysfs_dirent *sd)
{
 if (sysfs_type(sd) == SYSFS_DIR)
  sd->s_parent->s_dir.subdirs--;

 rb_erase(&sd->inode_node, &sd->s_parent->s_dir.inode_tree);
 rb_erase(&sd->name_node, &sd->s_parent->s_dir.name_tree);
}
