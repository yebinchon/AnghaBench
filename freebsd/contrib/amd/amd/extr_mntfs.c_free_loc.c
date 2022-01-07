
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_5__ {scalar_t__ al_refc; scalar_t__ al_mnt; } ;
typedef TYPE_1__ am_loc ;


 int XLOG_ERROR ;
 int discard_loc (TYPE_1__*) ;
 int dlog (char*,TYPE_1__*) ;
 int free_mntfs (scalar_t__) ;
 int plog (int ,char*,TYPE_1__*) ;

void
free_loc(opaque_t arg)
{
  am_loc *loc = (am_loc *) arg;
  dlog("free_loc %p", loc);

  if (loc->al_refc <= 0) {
    plog(XLOG_ERROR, "IGNORING free_loc for 0x%p", loc);
    return;
  }

  if (loc->al_mnt)
    free_mntfs(loc->al_mnt);
  if (--loc->al_refc == 0) {
    discard_loc(loc);
  }
}
