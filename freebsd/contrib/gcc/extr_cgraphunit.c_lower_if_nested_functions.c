
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int lower_nested_functions (int ,int) ;

void
lower_if_nested_functions (tree decl)
{
    lower_nested_functions (decl, 1);
}
