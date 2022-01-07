
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; int mnt; } ;


 int dget (int ) ;
 int mntget (int ) ;

void path_get(struct path *path)
{
 mntget(path->mnt);
 dget(path->dentry);
}
