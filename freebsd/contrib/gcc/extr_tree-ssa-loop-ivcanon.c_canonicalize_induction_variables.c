
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int dummy; } ;


 unsigned int TODO_cleanup_cfg ;
 int UL_SINGLE_ITER ;
 int canonicalize_loop_induction_variables (struct loops*,struct loop*,int,int ,int) ;
 int scev_reset () ;

unsigned int
canonicalize_induction_variables (struct loops *loops)
{
  unsigned i;
  struct loop *loop;
  bool changed = 0;

  for (i = 1; i < loops->num; i++)
    {
      loop = loops->parray[i];

      if (loop)
 changed |= canonicalize_loop_induction_variables (loops, loop,
         1, UL_SINGLE_ITER,
         1);
    }



  scev_reset ();

  if (changed)
    return TODO_cleanup_cfg;
  return 0;
}
