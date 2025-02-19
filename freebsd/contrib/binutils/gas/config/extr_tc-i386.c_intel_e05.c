
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char code; } ;
struct TYPE_5__ {scalar_t__ base_reg; } ;
struct TYPE_4__ {int disp; } ;


 int NUM_ADDRESS_REGS ;
 scalar_t__ REGNAM_AL ;
 TYPE_3__ cur_token ;
 TYPE_2__ i ;
 scalar_t__ i386_regtab ;
 int intel_e06 () ;
 int intel_match_token (char) ;
 TYPE_1__ intel_parser ;
 int strcat (int ,char*) ;

__attribute__((used)) static int
intel_e05 (void)
{
  int nregs = ~NUM_ADDRESS_REGS;

  for (;;)
    {
      if (!intel_e06())
 return 0;

      if (cur_token.code == '&'
   || cur_token.code == '|'
   || cur_token.code == '^')
 {
   char str[2];

   str[0] = cur_token.code;
   str[1] = 0;
   strcat (intel_parser.disp, str);
 }
      else
 break;

      intel_match_token (cur_token.code);

      if (nregs < 0)
 nregs = ~nregs;
    }
  if (nregs >= 0 && NUM_ADDRESS_REGS > nregs)
    i.base_reg = i386_regtab + REGNAM_AL + 1;
  return 1;
}
