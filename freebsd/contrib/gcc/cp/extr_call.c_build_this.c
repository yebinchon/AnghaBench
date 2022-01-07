
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int build_address (int ) ;
 int build_unary_op (int ,int ,int ) ;
 scalar_t__ processing_template_decl ;

__attribute__((used)) static tree
build_this (tree obj)
{


  if (processing_template_decl)
    return build_address (obj);

  return build_unary_op (ADDR_EXPR, obj, 0);
}
