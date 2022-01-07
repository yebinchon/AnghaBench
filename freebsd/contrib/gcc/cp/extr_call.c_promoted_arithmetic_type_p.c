
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ same_type_p (int ,int ) ;
 int type_promotes_to (int ) ;

__attribute__((used)) static bool
promoted_arithmetic_type_p (tree type)
{







  return ((INTEGRAL_TYPE_P (type)
    && same_type_p (type_promotes_to (type), type))
   || TREE_CODE (type) == REAL_TYPE);
}
