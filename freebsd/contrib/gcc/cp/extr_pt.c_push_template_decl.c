
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int push_template_decl_real (int ,int) ;

tree
push_template_decl (tree decl)
{
  return push_template_decl_real (decl, 0);
}
