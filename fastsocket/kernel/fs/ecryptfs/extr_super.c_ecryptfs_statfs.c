
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kstatfs {int dummy; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* statfs ) (struct dentry*,struct kstatfs*) ;} ;


 int ENOSYS ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int stub1 (struct dentry*,struct kstatfs*) ;

__attribute__((used)) static int ecryptfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct dentry *lower_dentry = ecryptfs_dentry_to_lower(dentry);

 if (!lower_dentry->d_sb->s_op->statfs)
  return -ENOSYS;
 return lower_dentry->d_sb->s_op->statfs(lower_dentry, buf);
}
