
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int build_address (int *) ;
 int * convert (int ,int ) ;
 int * eh_type_info (int *) ;
 int mark_used (int *) ;
 int ptr_type_node ;

__attribute__((used)) static tree
build_eh_type_type (tree type)
{
  tree exp = eh_type_info (type);

  if (!exp)
    return ((void*)0);

  mark_used (exp);

  return convert (ptr_type_node, build_address (exp));
}
