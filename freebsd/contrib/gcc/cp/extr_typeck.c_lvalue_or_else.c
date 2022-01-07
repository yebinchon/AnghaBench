
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum lvalue_use { ____Placeholder_lvalue_use } lvalue_use ;


 int lvalue_error (int) ;
 int lvalue_p (int ) ;

int
lvalue_or_else (tree ref, enum lvalue_use use)
{
  int win = lvalue_p (ref);

  if (!win)
    lvalue_error (use);

  return win;
}
