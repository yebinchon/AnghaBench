
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_2__ {int (* builtin_function ) (char*,int *,int ,int ,int *,int *) ;} ;


 int ARM_BUILTIN_THREAD_POINTER ;
 int BUILT_IN_MD ;
 int * build_function_type (int ,int ) ;
 int get_identifier (char*) ;
 TYPE_1__ lang_hooks ;
 int ptr_type_node ;
 int stub1 (char*,int *,int ,int ,int *,int *) ;
 int * tree_cons (int ,int *,int *) ;
 int void_list_node ;

__attribute__((used)) static void
arm_init_tls_builtins (void)
{
  tree ftype;
  tree nothrow = tree_cons (get_identifier ("nothrow"), ((void*)0), ((void*)0));
  tree const_nothrow = tree_cons (get_identifier ("const"), ((void*)0), nothrow);

  ftype = build_function_type (ptr_type_node, void_list_node);
  lang_hooks.builtin_function ("__builtin_thread_pointer", ftype,
          ARM_BUILTIN_THREAD_POINTER, BUILT_IN_MD,
          ((void*)0), const_nothrow);
}
