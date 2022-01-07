
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int _enter (char*,int ) ;

__attribute__((used)) static void afs_d_release(struct dentry *dentry)
{
 _enter("%s", dentry->d_name.name);
}
