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
struct TYPE_3__ {char* cmdll; char* cmdl; char* cmdw; char* cmdb; int term_cmd; scalar_t__ term; scalar_t__ resp_delim; } ;
struct TYPE_4__ {int flags; TYPE_1__ setmem; scalar_t__ fill; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MO_ADDR_BITS_REMOVE ; 
 int MO_FILL_USES_ADDR ; 
 int MO_NO_ECHO_ON_SETMEM ; 
 int MO_SETMEM_INTERACTIVE ; 
 TYPE_2__* current_monitor ; 
 unsigned int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  setmem_resp_delim_pattern ; 

__attribute__((used)) static int
FUNC9 (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned int val, hostval;
  char *cmd;
  int i;

  FUNC2 ("MON write %d %s\n", len, FUNC8 (memaddr));

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    memaddr = FUNC0 (memaddr);

  /* Use memory fill command for leading 0 bytes.  */

  if (current_monitor->fill)
    {
      for (i = 0; i < len; i++)
	if (myaddr[i] != 0)
	  break;

      if (i > 4)		/* More than 4 zeros is worth doing */
	{
	  FUNC2 ("MON FILL %d\n", i);
	  if (current_monitor->flags & MO_FILL_USES_ADDR)
	    FUNC6 (current_monitor->fill, memaddr, (memaddr + i) - 1, 0);
	  else
	    FUNC6 (current_monitor->fill, memaddr, i, 0);

	  FUNC4 (NULL, 0);

	  return i;
	}
    }

#if 0
  /* Can't actually use long longs if VAL is an int (nice idea, though).  */
  if ((memaddr & 0x7) == 0 && len >= 8 && current_monitor->setmem.cmdll)
    {
      len = 8;
      cmd = current_monitor->setmem.cmdll;
    }
  else
#endif
  if ((memaddr & 0x3) == 0 && len >= 4 && current_monitor->setmem.cmdl)
    {
      len = 4;
      cmd = current_monitor->setmem.cmdl;
    }
  else if ((memaddr & 0x1) == 0 && len >= 2 && current_monitor->setmem.cmdw)
    {
      len = 2;
      cmd = current_monitor->setmem.cmdw;
    }
  else
    {
      len = 1;
      cmd = current_monitor->setmem.cmdb;
    }

  val = FUNC1 (myaddr, len);

  if (len == 4)
    {
      hostval = *(unsigned int *) myaddr;
      FUNC2 ("Hostval(%08x) val(%08x)\n", hostval, val);
    }


  if (current_monitor->flags & MO_NO_ECHO_ON_SETMEM)
    FUNC7 (cmd, memaddr, val);
  else if (current_monitor->flags & MO_SETMEM_INTERACTIVE)
    {

      FUNC7 (cmd, memaddr);

      if (current_monitor->setmem.resp_delim)
        {
          FUNC2 ("EXP setmem.resp_delim");
          FUNC5 (&setmem_resp_delim_pattern, NULL, 0); 
	  FUNC6 ("%x\r", val);
       }
      if (current_monitor->setmem.term)
	{
	  FUNC2 ("EXP setmem.term");
	  FUNC3 (current_monitor->setmem.term, NULL, 0);
	  FUNC6 ("%x\r", val);
	}
      if (current_monitor->setmem.term_cmd)
	{			/* Emit this to get out of the memory editing state */
	  FUNC6 ("%s", current_monitor->setmem.term_cmd);
	  /* Drop through to expecting a prompt */
	}
    }
  else
    FUNC6 (cmd, memaddr, val);

  FUNC4 (NULL, 0);

  return len;
}