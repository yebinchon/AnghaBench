
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_dentry_info {int dummy; } ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline struct ecryptfs_dentry_info *
ecryptfs_dentry_to_private(struct dentry *dentry)
{
 return (struct ecryptfs_dentry_info *)dentry->d_fsdata;
}
