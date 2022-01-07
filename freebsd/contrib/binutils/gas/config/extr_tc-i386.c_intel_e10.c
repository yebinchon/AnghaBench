
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char code; } ;


 TYPE_1__ cur_token ;
 int intel_bracket_expr () ;
 int intel_e11 () ;

__attribute__((used)) static int
intel_e10 (void)
{
  if (!intel_e11 ())
    return 0;

  while (cur_token.code == '[')
    {
      if (!intel_bracket_expr ())
 return 0;
    }

  return 1;
}
