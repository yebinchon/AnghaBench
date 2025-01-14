
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct dentry {TYPE_2__ d_name; TYPE_3__* d_parent; } ;
struct TYPE_4__ {unsigned char const* name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 int EREMOTE ;
 struct dentry* ERR_PTR (int ) ;
 int _enter (char*,struct inode*,struct dentry*,TYPE_3__*,unsigned char const*,int ) ;

__attribute__((used)) static struct dentry *afs_mntpt_lookup(struct inode *dir,
           struct dentry *dentry,
           struct nameidata *nd)
{
 _enter("%p,%p{%p{%s},%s}",
        dir,
        dentry,
        dentry->d_parent,
        dentry->d_parent ?
        dentry->d_parent->d_name.name : (const unsigned char *) "",
        dentry->d_name.name);

 return ERR_PTR(-EREMOTE);
}
