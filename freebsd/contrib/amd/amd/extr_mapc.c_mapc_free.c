
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ opaque_t ;
struct TYPE_4__ {scalar_t__ refc; int hdr; struct TYPE_4__* map_name; } ;
typedef TYPE_1__ mnt_map ;


 int XFREE (TYPE_1__*) ;
 int mapc_clear (TYPE_1__*) ;
 int rem_que (int *) ;

void
mapc_free(opaque_t arg)
{
  mnt_map *m = (mnt_map *) arg;






  if (m && --m->refc == 0) {
    mapc_clear(m);
    XFREE(m->map_name);
    rem_que(&m->hdr);
    XFREE(m);
  }
}
