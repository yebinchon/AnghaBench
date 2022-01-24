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
struct TYPE_6__ {char code; int /*<<< orphan*/  str; } ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (void)
{
  int nregs = -1;

  for (;;)
    {
      if (!FUNC0())
	return 0;

      if (nregs >= 0 && NUM_ADDRESS_REGS > nregs)
	i.base_reg = i386_regtab + REGNAM_AL; /* al is invalid as base */

      if (cur_token.code == '+')
	nregs = -1;
      else if (cur_token.code == '-')
	nregs = NUM_ADDRESS_REGS;
      else
	return 1;

      FUNC2 (intel_parser.disp, cur_token.str);
      FUNC1 (cur_token.code);
    }
}