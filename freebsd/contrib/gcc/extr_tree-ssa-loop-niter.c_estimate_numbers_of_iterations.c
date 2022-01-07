
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; struct loop** parray; } ;
struct loop {int dummy; } ;


 int estimate_numbers_of_iterations_loop (struct loop*) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_and_ignore_overflow_warnings () ;

void
estimate_numbers_of_iterations (struct loops *loops)
{
  unsigned i;
  struct loop *loop;



  fold_defer_overflow_warnings ();

  for (i = 1; i < loops->num; i++)
    {
      loop = loops->parray[i];
      if (loop)
 estimate_numbers_of_iterations_loop (loop);
    }

  fold_undefer_and_ignore_overflow_warnings ();
}
