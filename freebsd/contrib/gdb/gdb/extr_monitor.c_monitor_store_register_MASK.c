#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGEST ;
struct TYPE_3__ {char* cmd; char const* term_cmd; scalar_t__ term; scalar_t__ resp_delim; } ;
struct TYPE_4__ {char* (* regname ) (int) ;char** regnames; int flags; TYPE_1__ setreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MO_REGISTER_VALUE_FIRST ; 
 int MO_SETREG_INTERACTIVE ; 
 TYPE_2__* current_monitor ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  setreg_resp_delim_pattern ; 
 char* FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10 (int regno)
{
  const char *name;
  ULONGEST val;
  
  if (current_monitor->regname != NULL)
    name = current_monitor->regname (regno);
  else
    name = current_monitor->regnames[regno];
  
  if (!name || (*name == '\0'))
    {
      FUNC1 ("MON Cannot store unknown register\n");
      return;
    }

  val = FUNC8 (regno);
  FUNC1 ("MON storeg %d %s\n", regno,
		 FUNC7 (val, FUNC0 (regno)));

  /* send the register deposit command */

  if (current_monitor->flags & MO_REGISTER_VALUE_FIRST)
    FUNC5 (current_monitor->setreg.cmd, val, name);
  else if (current_monitor->flags & MO_SETREG_INTERACTIVE)
    FUNC5 (current_monitor->setreg.cmd, name);
  else
    FUNC5 (current_monitor->setreg.cmd, name, val);

  if (current_monitor->setreg.resp_delim)
    {
      FUNC1 ("EXP setreg.resp_delim\n");
      FUNC4 (&setreg_resp_delim_pattern, NULL, 0);
      if (current_monitor->flags & MO_SETREG_INTERACTIVE)
	FUNC5 ("%s\r", FUNC6 (val));
    }
  if (current_monitor->setreg.term)
    {
      FUNC1 ("EXP setreg.term\n");
      FUNC2 (current_monitor->setreg.term, NULL, 0);
      if (current_monitor->flags & MO_SETREG_INTERACTIVE)
	FUNC5 ("%s\r", FUNC6 (val));
      FUNC3 (NULL, 0);
    }
  else
    FUNC3 (NULL, 0);
  if (current_monitor->setreg.term_cmd)		/* Mode exit required */
    {
      FUNC1 ("EXP setreg_termcmd\n");
      FUNC5 ("%s", current_monitor->setreg.term_cmd);
      FUNC3 (NULL, 0);
    }
}