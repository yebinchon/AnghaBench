
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union parameter_info {int value; } ;
typedef int * tree ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int * fold_convert (int *,int ) ;
 int gcc_assert (int ) ;
 int ipcp_type_is_const (int) ;

__attribute__((used)) static tree
build_const_val (union parameter_info *cvalue, enum cvalue_type type,
   tree tree_type)
{
  tree const_val = ((void*)0);

  gcc_assert (ipcp_type_is_const (type));
  const_val = fold_convert (tree_type, cvalue->value);
  return const_val;
}
