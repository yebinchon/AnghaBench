
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_iter_bound {struct nb_iter_bound* next; } ;
struct loop {struct nb_iter_bound* bounds; int * estimated_nb_iterations; int * nb_iterations; } ;


 int free (struct nb_iter_bound*) ;

void
free_numbers_of_iterations_estimates_loop (struct loop *loop)
{
  struct nb_iter_bound *bound, *next;

  loop->nb_iterations = ((void*)0);
  loop->estimated_nb_iterations = ((void*)0);
  for (bound = loop->bounds; bound; bound = next)
    {
      next = bound->next;
      free (bound);
    }

  loop->bounds = ((void*)0);
}
