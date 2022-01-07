
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* voidp ;
struct TYPE_6__ {struct TYPE_6__* al_fo; } ;
typedef TYPE_1__ am_loc ;


 int XFREE (TYPE_1__*) ;
 int free_opts (TYPE_1__*) ;

__attribute__((used)) static void
discard_loc(voidp v)
{
  am_loc *loc = v;
  if (loc->al_fo) {
    free_opts(loc->al_fo);
    XFREE(loc->al_fo);
  }
  XFREE(loc);
}
