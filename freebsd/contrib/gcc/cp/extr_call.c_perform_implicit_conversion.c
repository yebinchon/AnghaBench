
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
typedef int conversion ;


 int LOOKUP_NORMAL ;
 char* TREE_TYPE (char*) ;
 char* build_nop (char*,char*) ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 char* convert_like (int *,char*) ;
 int error (char*,char*,char*) ;
 char* error_mark_node ;
 scalar_t__ error_operand_p (char*) ;
 int * implicit_conversion (char*,char*,char*,int,int ) ;
 int obstack_free (int *,void*) ;
 scalar_t__ processing_template_decl ;

tree
perform_implicit_conversion (tree type, tree expr)
{
  conversion *conv;
  void *p;

  if (error_operand_p (expr))
    return error_mark_node;


  p = conversion_obstack_alloc (0);

  conv = implicit_conversion (type, TREE_TYPE (expr), expr,
                      0,
         LOOKUP_NORMAL);
  if (!conv)
    {
      error ("could not convert %qE to %qT", expr, type);
      expr = error_mark_node;
    }
  else if (processing_template_decl)
    {



      if (TREE_TYPE (expr) != type)
 expr = build_nop (type, expr);
    }
  else
    expr = convert_like (conv, expr);


  obstack_free (&conversion_obstack, p);

  return expr;
}
