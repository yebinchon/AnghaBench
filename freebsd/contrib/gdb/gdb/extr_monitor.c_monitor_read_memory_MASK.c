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
struct re_registers {int /*<<< orphan*/ * end; } ;
struct TYPE_3__ {char* term_cmd; char* resp_delim; scalar_t__ term; int /*<<< orphan*/  cmdb; } ;
struct TYPE_4__ {int flags; TYPE_1__ getmem; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MO_ADDR_BITS_REMOVE ; 
 int MO_EXACT_DUMPADDR ; 
 int MO_GETMEM_16_BOUNDARY ; 
 int MO_GETMEM_NEEDS_RANGE ; 
 int MO_GETMEM_READ_SINGLE ; 
 TYPE_2__* current_monitor ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (char) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  getmem_resp_delim_pattern ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (struct re_registers*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ monitor_debug_p ; 
 int /*<<< orphan*/  monitor_desc ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,char*,int) ; 
 int FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,...) ; 
 int FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,struct re_registers*) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 (char*) ; 
 char* FUNC17 (char*,char*) ; 
 unsigned int FUNC18 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC19 (CORE_ADDR memaddr, char *myaddr, int len)
{
  unsigned int val;
  char buf[512];
  char *p, *p1;
  int resp_len;
  int i;
  CORE_ADDR dumpaddr;

  if (len <= 0)
    {
      FUNC7 ("Zero length call to monitor_read_memory\n");
      return 0;
    }

  FUNC7 ("MON read block ta(%s) ha(%lx) %d\n",
		 FUNC13 (memaddr), (long) myaddr, len);

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    memaddr = FUNC0 (memaddr);

  if (current_monitor->flags & MO_GETMEM_READ_SINGLE)
    return FUNC12 (memaddr, myaddr, len);

  len = FUNC6 (len, 16);

  /* Some dumpers align the first data with the preceeding 16
     byte boundary. Some print blanks and start at the
     requested boundary. EXACT_DUMPADDR
   */

  dumpaddr = (current_monitor->flags & MO_EXACT_DUMPADDR)
    ? memaddr : memaddr & ~0x0f;

  /* See if xfer would cross a 16 byte boundary.  If so, clip it.  */
  if (((memaddr ^ (memaddr + len - 1)) & ~0xf) != 0)
    len = ((memaddr + len) & ~0xf) - memaddr;

  /* send the memory examine command */

  if (current_monitor->flags & MO_GETMEM_NEEDS_RANGE)
    FUNC11 (current_monitor->getmem.cmdb, memaddr, memaddr + len);
  else if (current_monitor->flags & MO_GETMEM_16_BOUNDARY)
    FUNC11 (current_monitor->getmem.cmdb, dumpaddr);
  else
    FUNC11 (current_monitor->getmem.cmdb, memaddr, len);

  /* If TERM is present, we wait for that to show up.  Also, (if TERM
     is present), we will send TERM_CMD if that is present.  In any
     case, we collect all of the output into buf, and then wait for
     the normal prompt.  */

  if (current_monitor->getmem.term)
    {
      resp_len = FUNC9 (current_monitor->getmem.term, buf, sizeof buf);	/* get response */

      if (resp_len <= 0)
	FUNC8 ("monitor_read_memory",
		       "excessive response from monitor",
		       memaddr, resp_len, buf, 0);

      if (current_monitor->getmem.term_cmd)
	{
	  FUNC15 (monitor_desc, current_monitor->getmem.term_cmd,
			FUNC16 (current_monitor->getmem.term_cmd));
	  FUNC10 (NULL, 0);
	}
    }
  else
    resp_len = FUNC10 (buf, sizeof buf);		/* get response */

  p = buf;

  /* If RESP_DELIM is specified, we search for that as a leading
     delimiter for the values.  Otherwise, we just start searching
     from the start of the buf.  */

  if (current_monitor->getmem.resp_delim)
    {
      int retval, tmp;
      struct re_registers resp_strings;
      FUNC7 ("MON getmem.resp_delim %s\n", current_monitor->getmem.resp_delim);

      FUNC5 (&resp_strings, 0, sizeof (struct re_registers));
      tmp = FUNC16 (p);
      retval = FUNC14 (&getmem_resp_delim_pattern, p, tmp, 0, tmp,
			  &resp_strings);

      if (retval < 0)
	FUNC8 ("monitor_read_memory",
		       "bad response from monitor",
		       memaddr, resp_len, buf, 0);

      p += resp_strings.end[0];
#if 0
      p = strstr (p, current_monitor->getmem.resp_delim);
      if (!p)
	monitor_error ("monitor_read_memory",
		       "bad response from monitor",
		       memaddr, resp_len, buf, 0);
      p += strlen (current_monitor->getmem.resp_delim);
#endif
    }
  FUNC7 ("MON scanning  %d ,%lx '%s'\n", len, (long) p, p);
  if (current_monitor->flags & MO_GETMEM_16_BOUNDARY)
    {
      char c;
      int fetched = 0;
      i = len;
      c = *p;


      while (!(c == '\000' || c == '\n' || c == '\r') && i > 0)
	{
	  if (FUNC4 (c))
	    {
	      if ((dumpaddr >= memaddr) && (i > 0))
		{
		  val = FUNC3 (c) * 16 + FUNC3 (*(p + 1));
		  *myaddr++ = val;
		  if (monitor_debug_p || remote_debug)
		    FUNC2 (gdb_stdlog, "[%02x]", val);
		  --i;
		  fetched++;
		}
	      ++dumpaddr;
	      ++p;
	    }
	  ++p;			/* skip a blank or other non hex char */
	  c = *p;
	}
      if (fetched == 0)
	FUNC1 ("Failed to read via monitor");
      if (monitor_debug_p || remote_debug)
	FUNC2 (gdb_stdlog, "\n");
      return fetched;		/* Return the number of bytes actually read */
    }
  FUNC7 ("MON scanning bytes\n");

  for (i = len; i > 0; i--)
    {
      /* Skip non-hex chars, but bomb on end of string and newlines */

      while (1)
	{
	  if (FUNC4 (*p))
	    break;

	  if (*p == '\000' || *p == '\n' || *p == '\r')
	    FUNC8 ("monitor_read_memory",
			   "badly terminated response from monitor",
			   memaddr, resp_len, buf, 0);
	  p++;
	}

      val = FUNC18 (p, &p1, 16);

      if (val == 0 && p == p1)
	FUNC8 ("monitor_read_memory",
		       "bad value from monitor",
		       memaddr, resp_len, buf, 0);

      *myaddr++ = val;

      if (i == 1)
	break;

      p = p1;
    }

  return len;
}