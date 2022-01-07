
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int vn_add_with_vuses (int ,int ,int *) ;

void
vn_add (tree expr, tree val)
{
  vn_add_with_vuses (expr, val, ((void*)0));
}
