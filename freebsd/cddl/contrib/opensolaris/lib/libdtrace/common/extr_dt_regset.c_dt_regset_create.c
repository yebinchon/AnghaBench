
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong_t ;
struct TYPE_5__ {int dr_size; int * dr_bitmap; } ;
typedef TYPE_1__ dt_regset_t ;


 int BT_BITOUL (int ) ;
 int * calloc (int ,int) ;
 int dt_regset_destroy (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

dt_regset_t *
dt_regset_create(ulong_t nregs)
{
 ulong_t n = BT_BITOUL(nregs);
 dt_regset_t *drp = malloc(sizeof (dt_regset_t));

 if (drp == ((void*)0))
  return (((void*)0));

 drp->dr_bitmap = calloc(n, sizeof (ulong_t));

 if (drp->dr_bitmap == ((void*)0)) {
  dt_regset_destroy(drp);
  return (((void*)0));
 }

 drp->dr_size = nregs;

 return (drp);
}
