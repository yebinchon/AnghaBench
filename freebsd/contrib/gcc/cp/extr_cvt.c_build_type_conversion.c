
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int LOOKUP_NORMAL ;
 int build_user_type_conversion (int ,int ,int ) ;

__attribute__((used)) static tree
build_type_conversion (tree xtype, tree expr)
{


  return build_user_type_conversion (xtype, expr, LOOKUP_NORMAL);
}
