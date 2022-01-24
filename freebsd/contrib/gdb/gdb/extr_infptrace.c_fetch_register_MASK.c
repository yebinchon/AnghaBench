#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PTRACE_XFER_TYPE ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_READ_U ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int U_REGS_OFFSET ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 

__attribute__((used)) static void
FUNC11 (int regno)
{
  /* This isn't really an address.  But ptrace thinks of it as one.  */
  CORE_ADDR regaddr;
  char mess[128];		/* For messages */
  int i;
  unsigned int offset;		/* Offset of registers within the u area.  */
  char buf[MAX_REGISTER_SIZE];
  int tid;

  if (FUNC0 (regno))
    {
      FUNC5 (buf, '\0', FUNC1 (regno));	/* Supply zeroes */
      FUNC10 (regno, buf);
      return;
    }

  /* Overload thread id onto process id */
  if ((tid = FUNC4 (inferior_ptid)) == 0)
    tid = FUNC2 (inferior_ptid);	/* no thread id, just use process id */

  offset = U_REGS_OFFSET;

  regaddr = FUNC8 (regno, offset);
  for (i = 0; i < FUNC1 (regno); i += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      *(PTRACE_XFER_TYPE *) & buf[i] = FUNC7 (PT_READ_U, tid,
					       (PTRACE_ARG3_TYPE) regaddr, 0);
      regaddr += sizeof (PTRACE_XFER_TYPE);
      if (errno != 0)
	{
	  FUNC9 (mess, "reading register %s (#%d)", 
		   FUNC3 (regno), regno);
	  FUNC6 (mess);
	}
    }
  FUNC10 (regno, buf);
}