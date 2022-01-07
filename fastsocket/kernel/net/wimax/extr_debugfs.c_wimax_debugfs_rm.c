
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int debugfs_dentry; } ;


 int debugfs_remove_recursive (int ) ;

void wimax_debugfs_rm(struct wimax_dev *wimax_dev)
{
 debugfs_remove_recursive(wimax_dev->debugfs_dentry);
}
