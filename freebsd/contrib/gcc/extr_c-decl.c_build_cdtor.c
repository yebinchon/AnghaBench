
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DEFAULT_INIT_PRIORITY ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int append_to_statement_list (int ,scalar_t__*) ;
 int build_function_call (int ,int ) ;
 int cgraph_build_static_cdtor (int,scalar_t__,int ) ;

__attribute__((used)) static void
build_cdtor (int method_type, tree cdtors)
{
  tree body = 0;

  if (!cdtors)
    return;

  for (; cdtors; cdtors = TREE_CHAIN (cdtors))
    append_to_statement_list (build_function_call (TREE_VALUE (cdtors), 0),
         &body);

  cgraph_build_static_cdtor (method_type, body, DEFAULT_INIT_PRIORITY);
}
