
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int constant_value_1 (int ,int ) ;
 int processing_template_decl ;

tree
decl_constant_value (tree decl)
{
  return constant_value_1 (decl,
                     processing_template_decl);
}
