
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_4__ {TYPE_2__* t_fndef; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_5__ {int * fn_args; scalar_t__ fn_nargs; int fn_ret; } ;
typedef TYPE_2__ fndef_t ;


 int tdtraverse (int ,int *,int *) ;

__attribute__((used)) static int
tdtrav_func(tdesc_t *this, tdtrav_data_t *tdtd)
{
 fndef_t *fn = this->t_fndef;
 int i, rc;

 if ((rc = tdtraverse(fn->fn_ret, &fn->fn_ret, tdtd)) < 0)
  return (rc);

 for (i = 0; i < (int) fn->fn_nargs; i++) {
  if ((rc = tdtraverse(fn->fn_args[i], &fn->fn_args[i],
      tdtd)) < 0)
   return (rc);
 }

 return (0);
}
