#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int NUM_ARM_REGNAMES ; 
 char* FUNC1 (char*) ; 
 int force_thumb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int regname_selected ; 
 TYPE_1__* regnames ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5 (char *option)
{
  if (option == NULL)
    return;

  if (FUNC0 (option, "reg-names-"))
    {
      int i;

      option += 10;

      for (i = NUM_ARM_REGNAMES; i--;)
	if (FUNC4 (option, regnames[i].name, FUNC3 (regnames[i].name)))
	  {
	    regname_selected = i;
	    break;
	  }

      if (i < 0)
	/* XXX - should break 'option' at following delimiter.  */
	FUNC2 (stderr, FUNC1("Unrecognised register name set: %s\n"), option);
    }
  else if (FUNC0 (option, "force-thumb"))
    force_thumb = 1;
  else if (FUNC0 (option, "no-force-thumb"))
    force_thumb = 0;
  else
    /* XXX - should break 'option' at following delimiter.  */
    FUNC2 (stderr, FUNC1("Unrecognised disassembler option: %s\n"), option);

  return;
}