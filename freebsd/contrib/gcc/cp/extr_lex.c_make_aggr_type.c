
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ IS_AGGR_TYPE_CODE (int) ;
 int SET_IS_AGGR_TYPE (int ,int) ;
 int cxx_make_type (int) ;

tree
make_aggr_type (enum tree_code code)
{
  tree t = cxx_make_type (code);

  if (IS_AGGR_TYPE_CODE (code))
    SET_IS_AGGR_TYPE (t, 1);

  return t;
}
