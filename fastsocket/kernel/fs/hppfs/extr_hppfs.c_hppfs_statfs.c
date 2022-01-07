
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstatfs {int f_type; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; scalar_t__ f_blocks; } ;
struct dentry {int dummy; } ;


 int HPPFS_SUPER_MAGIC ;

__attribute__((used)) static int hppfs_statfs(struct dentry *dentry, struct kstatfs *sf)
{
 sf->f_blocks = 0;
 sf->f_bfree = 0;
 sf->f_bavail = 0;
 sf->f_files = 0;
 sf->f_ffree = 0;
 sf->f_type = HPPFS_SUPER_MAGIC;
 return 0;
}
