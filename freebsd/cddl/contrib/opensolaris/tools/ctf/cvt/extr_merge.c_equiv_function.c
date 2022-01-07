
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* t_fndef; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {scalar_t__ fn_nargs; scalar_t__ fn_vargs; int * fn_args; int fn_ret; } ;
typedef TYPE_2__ fndef_t ;
typedef int equiv_data_t ;


 int equiv_node (int ,int ,int *) ;

__attribute__((used)) static int
equiv_function(tdesc_t *stdp, tdesc_t *ttdp, equiv_data_t *ed)
{
 fndef_t *fn1 = stdp->t_fndef, *fn2 = ttdp->t_fndef;
 int i;

 if (fn1->fn_nargs != fn2->fn_nargs ||
     fn1->fn_vargs != fn2->fn_vargs)
  return (0);

 if (!equiv_node(fn1->fn_ret, fn2->fn_ret, ed))
  return (0);

 for (i = 0; i < (int) fn1->fn_nargs; i++) {
  if (!equiv_node(fn1->fn_args[i], fn2->fn_args[i], ed))
   return (0);
 }

 return (1);
}
