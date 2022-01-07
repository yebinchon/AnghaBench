
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct nb_iter_bound {struct nb_iter_bound* next; void* at_stmt; void* bound; } ;
struct loop {int num; struct nb_iter_bound* bounds; } ;
typedef int double_int ;


 int TDF_DETAILS ;
 int TDF_SLIM ;
 int TREE_TYPE (void*) ;
 int derive_constant_upper_bound (void*,void*) ;
 void* double_int_to_tree (int ,int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,...) ;
 int print_generic_expr (scalar_t__,void*,int ) ;
 int unsigned_type_for (int ) ;
 struct nb_iter_bound* xmalloc (int) ;

void
record_estimate (struct loop *loop, tree bound, tree additional, tree at_stmt)
{
  struct nb_iter_bound *elt = xmalloc (sizeof (struct nb_iter_bound));
  double_int i_bound = derive_constant_upper_bound (bound, additional);
  tree c_bound = double_int_to_tree (unsigned_type_for (TREE_TYPE (bound)),
         i_bound);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      fprintf (dump_file, "Statements after ");
      print_generic_expr (dump_file, at_stmt, TDF_SLIM);
      fprintf (dump_file, " are executed at most ");
      print_generic_expr (dump_file, bound, TDF_SLIM);
      fprintf (dump_file, " (bounded by ");
      print_generic_expr (dump_file, c_bound, TDF_SLIM);
      fprintf (dump_file, ") times in loop %d.\n", loop->num);
    }

  elt->bound = c_bound;
  elt->at_stmt = at_stmt;
  elt->next = loop->bounds;
  loop->bounds = elt;
}
