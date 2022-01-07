
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (int ) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static inline bool
vrp_val_is_min (tree val)
{
  tree type_min = TYPE_MIN_VALUE (TREE_TYPE (val));

  return (val == type_min
   || (type_min != NULL_TREE
       && operand_equal_p (val, type_min, 0)));
}
