#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtx ;
struct TYPE_5__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ location_t ;

/* Variables and functions */
 scalar_t__ ASM_OPERANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ input_location ; 

__attribute__((used)) static location_t
FUNC7 (rtx insn)
{
  rtx body = FUNC4 (insn);
  rtx asmop;
  location_t loc;

  /* Find the (or one of the) ASM_OPERANDS in the insn.  */
  if (FUNC3 (body) == SET && FUNC3 (FUNC5 (body)) == ASM_OPERANDS)
    asmop = FUNC5 (body);
  else if (FUNC3 (body) == ASM_OPERANDS)
    asmop = body;
  else if (FUNC3 (body) == PARALLEL
	   && FUNC3 (FUNC6 (body, 0, 0)) == SET)
    asmop = FUNC5 (FUNC6 (body, 0, 0));
  else if (FUNC3 (body) == PARALLEL
	   && FUNC3 (FUNC6 (body, 0, 0)) == ASM_OPERANDS)
    asmop = FUNC6 (body, 0, 0);
  else
    asmop = NULL;

  if (asmop)
#ifdef USE_MAPPED_LOCATION
    loc = ASM_OPERANDS_SOURCE_LOCATION (asmop);
#else
    {
      loc.file = FUNC0 (asmop);
      loc.line = FUNC1 (asmop);
    }
#endif
  else
    loc = input_location;
  return loc;
}