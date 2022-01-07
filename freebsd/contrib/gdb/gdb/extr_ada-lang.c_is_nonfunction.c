
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int SYMBOL_TYPE (struct symbol*) ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_FUNC ;

__attribute__((used)) static int
is_nonfunction (struct symbol *syms[], int n)
{
  int i;

  for (i = 0; i < n; i += 1)
    if (TYPE_CODE (SYMBOL_TYPE (syms[i])) != TYPE_CODE_FUNC
 && TYPE_CODE (SYMBOL_TYPE (syms[i])) != TYPE_CODE_ENUM)
      return 1;

  return 0;
}
