
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ al_mnt; int al_refc; } ;
typedef TYPE_1__ am_loc ;


 int dup_mntfs (scalar_t__) ;

am_loc *
dup_loc(am_loc *loc)
{
  loc->al_refc++;
  if (loc->al_mnt) {
    dup_mntfs(loc->al_mnt);
  }
  return loc;
}
