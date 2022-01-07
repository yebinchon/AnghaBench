
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int location_t ;



 int * BIND_EXPR_BODY (int *) ;

 scalar_t__ COND_EXPR_ELSE (int *) ;
 int OPT_Wparentheses ;
 int SET_EXPR_LOCATION (int *,int ) ;

 int TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int ) ;


 int add_stmt (int *) ;
 int * build3 (int const,int ,int *,int *,int *) ;
 int empty_body_warning (int *,int *) ;
 int * expr_last (int *) ;
 int gcc_unreachable () ;
 int void_type_node ;
 scalar_t__ warn_parentheses ;
 int warning (int ,char*,int *) ;

void
c_finish_if_stmt (location_t if_locus, tree cond, tree then_block,
    tree else_block, bool nested_if)
{
  tree stmt;


  if (warn_parentheses && nested_if && else_block == ((void*)0))
    {
      tree inner_if = then_block;





      while (1)
 switch (TREE_CODE (inner_if))
   {
   case 131:
     goto found;
   case 132:
     inner_if = BIND_EXPR_BODY (inner_if);
     break;
   case 130:
     inner_if = expr_last (then_block);
     break;
   case 128:
   case 129:
     inner_if = TREE_OPERAND (inner_if, 0);
     break;
   default:
     gcc_unreachable ();
   }
    found:

      if (COND_EXPR_ELSE (inner_if))
  warning (OPT_Wparentheses,
    "%Hsuggest explicit braces to avoid ambiguous %<else%>",
    &if_locus);
    }

  empty_body_warning (then_block, else_block);

  stmt = build3 (131, void_type_node, cond, then_block, else_block);
  SET_EXPR_LOCATION (stmt, if_locus);
  add_stmt (stmt);
}
