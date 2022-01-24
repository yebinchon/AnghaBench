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
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * deprecated_registers ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void
FUNC9 (int myregstart, char *myaddr, int inlen)
{
  int myregend = myregstart + inlen;
  int regnum;

  FUNC7 ();

  /* Scan through the registers updating any that are covered by the
     range myregstart<=>myregend using write_register_gen, which does
     nice things like handling threads, and avoiding updates when the
     new and old contents are the same.  */

  for (regnum = 0; regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      int regstart, regend;

      regstart = FUNC0 (regnum);
      regend = regstart + FUNC1 (regnum);

      /* Is this register completely outside the range the user is writing?  */
      if (myregend <= regstart || regend <= myregstart)
	/* do nothing */ ;		

      /* Is this register completely within the range the user is writing?  */
      else if (myregstart <= regstart && regend <= myregend)
	FUNC3 (regnum, myaddr + (regstart - myregstart));

      /* The register partially overlaps the range being written.  */
      else
	{
	  char regbuf[MAX_REGISTER_SIZE];
	  /* What's the overlap between this register's bytes and
             those the caller wants to write?  */
	  int overlapstart = FUNC4 (regstart, myregstart);
	  int overlapend   = FUNC6 (regend,   myregend);

	  /* We may be doing a partial update of an invalid register.
	     Update it from the target before scribbling on it.  */
	  FUNC2 (regnum, regbuf);

	  FUNC5 (&deprecated_registers[overlapstart],
		  myaddr + (overlapstart - myregstart),
		  overlapend - overlapstart);

	  FUNC8 (regnum);
	}
    }
}