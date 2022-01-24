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
struct TYPE_3__ {scalar_t__ term_cmd; scalar_t__ term; scalar_t__ resp_delim; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {char* (* regname ) (int) ;char** regnames; int flags; TYPE_1__ getreg; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int MO_32_REGS_PAIRED ; 
 int MO_HEX_PREFIX ; 
 char* FUNC1 (int) ; 
 TYPE_2__* current_monitor ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void
FUNC13 (int regno)
{
  const char *name;
  char *zerobuf;
  char *regbuf;
  int i;

  regbuf  = FUNC1 (MAX_REGISTER_SIZE * 2 + 1);
  zerobuf = FUNC1 (MAX_REGISTER_SIZE);
  FUNC4 (zerobuf, 0, MAX_REGISTER_SIZE);

  if (current_monitor->regname != NULL)
    name = current_monitor->regname (regno);
  else
    name = current_monitor->regnames[regno];
  FUNC5 ("MON fetchreg %d '%s'\n", regno, name ? name : "(null name)");

  if (!name || (*name == '\0'))
    {
      FUNC5 ("No register known for %d\n", regno);
      FUNC12 (regno, zerobuf);
      return;
    }

  /* send the register examine command */

  FUNC8 (current_monitor->getreg.cmd, name);

  /* If RESP_DELIM is specified, we search for that as a leading
     delimiter for the register value.  Otherwise, we just start
     searching from the start of the buf.  */

  if (current_monitor->getreg.resp_delim)
    {
      FUNC5 ("EXP getreg.resp_delim\n");
      FUNC6 (current_monitor->getreg.resp_delim, NULL, 0);
      /* Handle case of first 32 registers listed in pairs.  */
      if (current_monitor->flags & MO_32_REGS_PAIRED
	  && (regno & 1) != 0 && regno < 32)
	{
	  FUNC5 ("EXP getreg.resp_delim\n");
	  FUNC6 (current_monitor->getreg.resp_delim, NULL, 0);
	}
    }

  /* Skip leading spaces and "0x" if MO_HEX_PREFIX flag is set */
  if (current_monitor->flags & MO_HEX_PREFIX)
    {
      int c;
      c = FUNC10 (timeout);
      while (c == ' ')
	c = FUNC10 (timeout);
      if ((c == '0') && ((c = FUNC10 (timeout)) == 'x'))
	;
      else
	FUNC2 ("Bad value returned from monitor while fetching register %x.",
	       regno);
    }

  /* Read upto the maximum number of hex digits for this register, skipping
     spaces, but stop reading if something else is seen.  Some monitors
     like to drop leading zeros.  */

  for (i = 0; i < FUNC0 (regno) * 2; i++)
    {
      int c;
      c = FUNC10 (timeout);
      while (c == ' ')
	c = FUNC10 (timeout);

      if (!FUNC3 (c))
	break;

      regbuf[i] = c;
    }

  regbuf[i] = '\000';		/* terminate the number */
  FUNC5 ("REGVAL '%s'\n", regbuf);

  /* If TERM is present, we wait for that to show up.  Also, (if TERM
     is present), we will send TERM_CMD if that is present.  In any
     case, we collect all of the output into buf, and then wait for
     the normal prompt.  */

  if (current_monitor->getreg.term)
    {
      FUNC5 ("EXP getreg.term\n");
      FUNC6 (current_monitor->getreg.term, NULL, 0);		/* get response */
    }

  if (current_monitor->getreg.term_cmd)
    {
      FUNC5 ("EMIT getreg.term.cmd\n");
      FUNC8 (current_monitor->getreg.term_cmd);
    }
  if (!current_monitor->getreg.term ||	/* Already expected or */
      current_monitor->getreg.term_cmd)		/* ack expected */
    FUNC7 (NULL, 0);	/* get response */

  FUNC9 (regno, regbuf);
}