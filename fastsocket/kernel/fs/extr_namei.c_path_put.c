
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; int dentry; } ;


 int dput (int ) ;
 int mntput (int ) ;

void path_put(struct path *path)
{
 dput(path->dentry);
 mntput(path->mnt);
}
