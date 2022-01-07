
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char code; int str; } ;
struct TYPE_5__ {scalar_t__ base_reg; } ;
struct TYPE_4__ {int disp; } ;


 int NUM_ADDRESS_REGS ;
 scalar_t__ REGNAM_AL ;
 TYPE_3__ cur_token ;
 TYPE_2__ i ;
 scalar_t__ i386_regtab ;
 int intel_e05 () ;
 int intel_match_token (char) ;
 TYPE_1__ intel_parser ;
 int strcat (int ,int ) ;

__attribute__((used)) static int
intel_e04 (void)
{
  int nregs = -1;

  for (;;)
    {
      if (!intel_e05())
 return 0;

      if (nregs >= 0 && NUM_ADDRESS_REGS > nregs)
 i.base_reg = i386_regtab + REGNAM_AL;

      if (cur_token.code == '+')
 nregs = -1;
      else if (cur_token.code == '-')
 nregs = NUM_ADDRESS_REGS;
      else
 return 1;

      strcat (intel_parser.disp, cur_token.str);
      intel_match_token (cur_token.code);
    }
}
