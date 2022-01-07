
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {TYPE_3__* d_inode; } ;
struct TYPE_6__ {TYPE_1__* i_op; } ;
struct TYPE_5__ {struct dentry* proc_dentry; } ;
struct TYPE_4__ {void* (* follow_link ) (struct dentry*,struct nameidata*) ;} ;


 TYPE_2__* HPPFS_I (TYPE_3__*) ;
 void* stub1 (struct dentry*,struct nameidata*) ;

__attribute__((used)) static void *hppfs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 struct dentry *proc_dentry;

 proc_dentry = HPPFS_I(dentry->d_inode)->proc_dentry;

 return proc_dentry->d_inode->i_op->follow_link(proc_dentry, nd);
}
