
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_name {int len; int name; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;



__attribute__((used)) static void
xfs_dentry_to_name(
 struct xfs_name *namep,
 struct dentry *dentry)
{
 namep->name = dentry->d_name.name;
 namep->len = dentry->d_name.len;
}
