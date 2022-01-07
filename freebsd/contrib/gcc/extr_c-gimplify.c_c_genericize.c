
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_node {int decl; struct cgraph_node* next_nested; struct cgraph_node* nested; } ;
struct TYPE_2__ {char* (* decl_printable_name ) (int ,int) ;} ;
typedef int FILE ;


 int DECL_ASSEMBLER_NAME (int ) ;
 int DECL_SAVED_TREE (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 int TDF_RAW ;
 int TDF_SLIM ;
 int TDI_generic ;
 int TDI_original ;
 struct cgraph_node* cgraph_node (int ) ;
 int * dump_begin (int ,int*) ;
 int dump_end (int ,int *) ;
 char* dump_flag_name (int ) ;
 int dump_function (int ,int ) ;
 int dump_node (int ,int,int *) ;
 int fprintf (int *,char*,...) ;
 int gimplify_function_tree (int ) ;
 TYPE_1__ lang_hooks ;
 int print_c_tree (int *,int ) ;
 char* stub1 (int ,int) ;
 char* stub2 (int ,int) ;

void
c_genericize (tree fndecl)
{
  FILE *dump_orig;
  int local_dump_flags;
  struct cgraph_node *cgn;


  dump_orig = dump_begin (TDI_original, &local_dump_flags);
  if (dump_orig)
    {
      fprintf (dump_orig, "\n;; Function %s",
        lang_hooks.decl_printable_name (fndecl, 2));
      fprintf (dump_orig, " (%s)\n",
        IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (fndecl)));
      fprintf (dump_orig, ";; enabled by -%s\n", dump_flag_name (TDI_original));
      fprintf (dump_orig, "\n");

      if (local_dump_flags & TDF_RAW)
 dump_node (DECL_SAVED_TREE (fndecl),
     TDF_SLIM | local_dump_flags, dump_orig);
      else
 print_c_tree (dump_orig, DECL_SAVED_TREE (fndecl));
      fprintf (dump_orig, "\n");

      dump_end (TDI_original, dump_orig);
    }


  gimplify_function_tree (fndecl);


  dump_function (TDI_generic, fndecl);




  cgn = cgraph_node (fndecl);
  for (cgn = cgn->nested; cgn ; cgn = cgn->next_nested)
    c_genericize (cgn->decl);
}
