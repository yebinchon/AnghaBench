
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct sysfs_dirent* removed_list; } ;
struct sysfs_dirent {int s_flags; TYPE_1__ u; } ;
struct sysfs_addrm_cxt {int cnt; scalar_t__ parent_inode; struct sysfs_dirent* removed; } ;


 int BUG_ON (int) ;
 scalar_t__ SYSFS_DIR ;
 int SYSFS_FLAG_REMOVED ;
 int drop_nlink (scalar_t__) ;
 scalar_t__ sysfs_type (struct sysfs_dirent*) ;
 int sysfs_unlink_sibling (struct sysfs_dirent*) ;

void sysfs_remove_one(struct sysfs_addrm_cxt *acxt, struct sysfs_dirent *sd)
{
 BUG_ON(sd->s_flags & SYSFS_FLAG_REMOVED);

 sysfs_unlink_sibling(sd);

 sd->s_flags |= SYSFS_FLAG_REMOVED;
 sd->u.removed_list = acxt->removed;
 acxt->removed = sd;

 if (sysfs_type(sd) == SYSFS_DIR && acxt->parent_inode)
  drop_nlink(acxt->parent_inode);

 acxt->cnt++;
}
