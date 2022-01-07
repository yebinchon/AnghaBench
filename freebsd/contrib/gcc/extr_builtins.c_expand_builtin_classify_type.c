
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 int GEN_INT (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (scalar_t__) ;
 int no_type_class ;
 int type_to_class (int ) ;

__attribute__((used)) static rtx
expand_builtin_classify_type (tree arglist)
{
  if (arglist != 0)
    return GEN_INT (type_to_class (TREE_TYPE (TREE_VALUE (arglist))));
  return GEN_INT (no_type_class);
}
