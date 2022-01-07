
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;


 scalar_t__ NULL_TREE ;
 int REPORT_DETAILS ;
 int TDF_SLIM ;
 scalar_t__ chrec_dont_know ;
 int fprintf (int ,char*) ;
 scalar_t__ get_loop_exit_condition (struct loop*) ;
 scalar_t__ number_of_iterations_in_loop (struct loop*) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;

__attribute__((used)) static tree
vect_get_loop_niters (struct loop *loop, tree *number_of_iterations)
{
  tree niters;

  if (vect_print_dump_info (REPORT_DETAILS))
    fprintf (vect_dump, "=== get_loop_niters ===");

  niters = number_of_iterations_in_loop (loop);

  if (niters != NULL_TREE
      && niters != chrec_dont_know)
    {
      *number_of_iterations = niters;

      if (vect_print_dump_info (REPORT_DETAILS))
 {
   fprintf (vect_dump, "==> get_loop_niters:" );
   print_generic_expr (vect_dump, *number_of_iterations, TDF_SLIM);
 }
    }

  return get_loop_exit_condition (loop);
}
