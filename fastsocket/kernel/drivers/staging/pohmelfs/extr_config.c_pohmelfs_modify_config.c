
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_ctl {int prio; int perm; } ;



__attribute__((used)) static int pohmelfs_modify_config(struct pohmelfs_ctl *old, struct pohmelfs_ctl *new)
{
 old->perm = new->perm;
 old->prio = new->prio;
 return 0;
}
