
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int non_lvalue (int ) ;
 scalar_t__ pedantic_lvalues ;

__attribute__((used)) static tree
pedantic_non_lvalue (tree x)
{
  if (pedantic_lvalues)
    return non_lvalue (x);
  else
    return x;
}
