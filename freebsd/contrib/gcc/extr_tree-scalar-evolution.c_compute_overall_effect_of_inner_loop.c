
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {scalar_t__ num; } ;
struct TYPE_2__ {struct loop** parray; } ;


 size_t CHREC_VARIABLE (scalar_t__) ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int build_int_cst (scalar_t__,int) ;
 scalar_t__ chrec_apply (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ chrec_dont_know ;
 scalar_t__ chrec_fold_minus (scalar_t__,scalar_t__,int ) ;
 scalar_t__ chrec_type (scalar_t__) ;
 TYPE_1__* current_loops ;
 scalar_t__ no_evolution_in_loop_p (scalar_t__,scalar_t__,int*) ;
 scalar_t__ number_of_iterations_in_loop (struct loop*) ;

__attribute__((used)) static tree
compute_overall_effect_of_inner_loop (struct loop *loop, tree evolution_fn)
{
  bool val = 0;

  if (evolution_fn == chrec_dont_know)
    return chrec_dont_know;

  else if (TREE_CODE (evolution_fn) == POLYNOMIAL_CHREC)
    {
      if (CHREC_VARIABLE (evolution_fn) >= (unsigned) loop->num)
 {
   struct loop *inner_loop =
     current_loops->parray[CHREC_VARIABLE (evolution_fn)];
   tree nb_iter = number_of_iterations_in_loop (inner_loop);

   if (nb_iter == chrec_dont_know)
     return chrec_dont_know;
   else
     {
       tree res;
       tree type = chrec_type (nb_iter);



       nb_iter = chrec_fold_minus (type, nb_iter,
       build_int_cst (type, 1));



       res = chrec_apply (inner_loop->num, evolution_fn, nb_iter);


       return compute_overall_effect_of_inner_loop (loop, res);
     }
 }
      else
 return evolution_fn;
     }


  else if (no_evolution_in_loop_p (evolution_fn, loop->num, &val) && val)
    return evolution_fn;

  else
    return chrec_dont_know;
}
