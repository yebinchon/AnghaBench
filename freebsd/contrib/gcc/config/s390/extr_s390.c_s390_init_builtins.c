
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {int (* builtin_function ) (char*,int ,int ,int ,int *,int ) ;} ;


 int BUILT_IN_MD ;
 int NULL_TREE ;
 int S390_BUILTIN_SET_THREAD_POINTER ;
 int S390_BUILTIN_THREAD_POINTER ;
 int build_function_type (int ,int ) ;
 int build_function_type_list (int ,int ,int ) ;
 TYPE_1__ lang_hooks ;
 int ptr_type_node ;
 int stub1 (char*,int ,int ,int ,int *,int ) ;
 int stub2 (char*,int ,int ,int ,int *,int ) ;
 int void_list_node ;
 int void_type_node ;

__attribute__((used)) static void
s390_init_builtins (void)
{
  tree ftype;

  ftype = build_function_type (ptr_type_node, void_list_node);
  lang_hooks.builtin_function ("__builtin_thread_pointer", ftype,
          S390_BUILTIN_THREAD_POINTER, BUILT_IN_MD,
          ((void*)0), NULL_TREE);

  ftype = build_function_type_list (void_type_node, ptr_type_node, NULL_TREE);
  lang_hooks.builtin_function ("__builtin_set_thread_pointer", ftype,
          S390_BUILTIN_SET_THREAD_POINTER, BUILT_IN_MD,
          ((void*)0), NULL_TREE);
}
