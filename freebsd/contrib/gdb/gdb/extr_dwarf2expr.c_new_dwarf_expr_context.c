
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_context {int stack_allocated; scalar_t__ pieces; scalar_t__ num_pieces; int stack; scalar_t__ stack_len; } ;
typedef int CORE_ADDR ;


 struct dwarf_expr_context* xcalloc (int,int) ;
 int xmalloc (int) ;

struct dwarf_expr_context *
new_dwarf_expr_context (void)
{
  struct dwarf_expr_context *retval;
  retval = xcalloc (1, sizeof (struct dwarf_expr_context));
  retval->stack_len = 0;
  retval->stack_allocated = 10;
  retval->stack = xmalloc (retval->stack_allocated * sizeof (CORE_ADDR));
  retval->num_pieces = 0;
  retval->pieces = 0;
  return retval;
}
