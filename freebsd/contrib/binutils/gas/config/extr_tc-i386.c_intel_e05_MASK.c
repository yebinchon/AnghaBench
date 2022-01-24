#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char code; } ;
struct TYPE_5__ {scalar_t__ base_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  disp; } ;

/* Variables and functions */
 int NUM_ADDRESS_REGS ; 
 scalar_t__ REGNAM_AL ; 
 TYPE_3__ cur_token ; 
 TYPE_2__ i ; 
 scalar_t__ i386_regtab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 TYPE_1__ intel_parser ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3 (void)
{
  int nregs = ~NUM_ADDRESS_REGS;

  for (;;)
    {
      if (!FUNC0())
	return 0;

      if (cur_token.code == '&'
	  || cur_token.code == '|'
	  || cur_token.code == '^')
	{
	  char str[2];

	  str[0] = cur_token.code;
	  str[1] = 0;
	  FUNC2 (intel_parser.disp, str);
	}
      else
	break;

      FUNC1 (cur_token.code);

      if (nregs < 0)
	nregs = ~nregs;
    }
  if (nregs >= 0 && NUM_ADDRESS_REGS > nregs)
    i.base_reg = i386_regtab + REGNAM_AL + 1; /* cl is invalid as base */
  return 1;
}