
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int check_global_declaration_1 (int ) ;

void
check_global_declarations (tree *vec, int len)
{
  int i;

  for (i = 0; i < len; i++)
    check_global_declaration_1 (vec[i]);
}
