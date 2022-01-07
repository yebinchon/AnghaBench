
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_parent; int s_name; } ;
struct sysfs_addrm_cxt {int cnt; scalar_t__ parent_inode; int parent_sd; } ;


 int EEXIST ;
 scalar_t__ SYSFS_DIR ;
 int inc_nlink (scalar_t__) ;
 scalar_t__ sysfs_find_dirent (int ,int ) ;
 int sysfs_get (int ) ;
 int sysfs_link_sibling (struct sysfs_dirent*) ;
 scalar_t__ sysfs_type (struct sysfs_dirent*) ;

int __sysfs_add_one(struct sysfs_addrm_cxt *acxt, struct sysfs_dirent *sd)
{
 if (sysfs_find_dirent(acxt->parent_sd, sd->s_name))
  return -EEXIST;

 sd->s_parent = sysfs_get(acxt->parent_sd);

 if (sysfs_type(sd) == SYSFS_DIR && acxt->parent_inode)
  inc_nlink(acxt->parent_inode);

 acxt->cnt++;

 sysfs_link_sibling(sd);

 return 0;
}
