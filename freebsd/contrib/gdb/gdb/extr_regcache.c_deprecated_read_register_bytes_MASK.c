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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int MAX_REGISTER_SIZE ; 
 int NUM_PSEUDO_REGS ; 
 int NUM_REGS ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * deprecated_registers ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC5 (int in_start, char *in_buf, int in_len)
{
  int in_end = in_start + in_len;
  int regnum;
  char reg_buf[MAX_REGISTER_SIZE];

  /* See if we are trying to read bytes from out-of-date registers.  If so,
     update just those registers.  */

  for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      int reg_start;
      int reg_end;
      int reg_len;
      int start;
      int end;
      int byte;

      reg_start = FUNC0 (regnum);
      reg_len = FUNC1 (regnum);
      reg_end = reg_start + reg_len;

      if (reg_end <= in_start || in_end <= reg_start)
	/* The range the user wants to read doesn't overlap with regnum.  */
	continue;

      if (FUNC2 (regnum) != NULL && *FUNC2 (regnum) != '\0')
	/* Force the cache to fetch the entire register.  */
	FUNC3 (regnum, reg_buf);
      else
	/* Legacy note: even though this register is ``invalid'' we
           still need to return something.  It would appear that some
           code relies on apparent gaps in the register array also
           being returned.  */
	/* FIXME: cagney/2001-08-18: This is just silly.  It defeats
           the entire register read/write flow of control.  Must
           resist temptation to return 0xdeadbeef.  */
	FUNC4 (reg_buf, &deprecated_registers[reg_start], reg_len);

      /* Legacy note: This function, for some reason, allows a NULL
         input buffer.  If the buffer is NULL, the registers are still
         fetched, just the final transfer is skipped. */
      if (in_buf == NULL)
	continue;

      /* start = max (reg_start, in_start) */
      if (reg_start > in_start)
	start = reg_start;
      else
	start = in_start;

      /* end = min (reg_end, in_end) */
      if (reg_end < in_end)
	end = reg_end;
      else
	end = in_end;

      /* Transfer just the bytes common to both IN_BUF and REG_BUF */
      for (byte = start; byte < end; byte++)
	{
	  in_buf[byte - in_start] = reg_buf[byte - reg_start];
	}
    }
}