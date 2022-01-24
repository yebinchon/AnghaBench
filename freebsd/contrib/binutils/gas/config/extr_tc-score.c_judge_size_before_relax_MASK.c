#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int fr_fix; int /*<<< orphan*/  fr_subtype; int /*<<< orphan*/ * fr_literal; int /*<<< orphan*/ * fr_opcode; int /*<<< orphan*/  fr_symbol; } ;
typedef  TYPE_1__ fragS ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 scalar_t__ NO_PIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ score_pic ; 

__attribute__((used)) static int
FUNC5 (fragS * fragp, asection *sec)
{
  int change = 0;

  if (score_pic == NO_PIC)
    change = FUNC3 (fragp->fr_symbol, 0);
  else
    change = FUNC4 (fragp->fr_symbol, sec);

  if (change == 1)
    {
      /* Only at the first time determining whether GP instruction relax should be done,
         return the difference between insntruction size and instruction relax size.  */
      if (fragp->fr_opcode == NULL)
	{
	  fragp->fr_fix = FUNC0 (fragp->fr_subtype);
	  fragp->fr_opcode = fragp->fr_literal + FUNC2 (fragp->fr_subtype);
          return FUNC0 (fragp->fr_subtype) - FUNC1 (fragp->fr_subtype);
	}
    }

  return 0;
}