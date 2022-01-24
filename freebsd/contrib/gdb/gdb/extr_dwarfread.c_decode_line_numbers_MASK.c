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
 int /*<<< orphan*/  GET_UNSIGNED ; 
 scalar_t__ SIZEOF_LINETBL_DELTA ; 
 scalar_t__ SIZEOF_LINETBL_LENGTH ; 
 scalar_t__ SIZEOF_LINETBL_LINENO ; 
 scalar_t__ SIZEOF_LINETBL_STMT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ baseaddr ; 
 int /*<<< orphan*/  current_objfile ; 
 int /*<<< orphan*/  current_subfile ; 
 int /*<<< orphan*/  objfile ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (char *linetable)
{
  char *tblscan;
  char *tblend;
  unsigned long length;
  unsigned long base;
  unsigned long line;
  unsigned long pc;

  if (linetable != NULL)
    {
      tblscan = tblend = linetable;
      length = FUNC2 (tblscan, SIZEOF_LINETBL_LENGTH, GET_UNSIGNED,
			       current_objfile);
      tblscan += SIZEOF_LINETBL_LENGTH;
      tblend += length;
      base = FUNC2 (tblscan, FUNC0 (objfile),
			     GET_UNSIGNED, current_objfile);
      tblscan += FUNC0 (objfile);
      base += baseaddr;
      while (tblscan < tblend)
	{
	  line = FUNC2 (tblscan, SIZEOF_LINETBL_LINENO, GET_UNSIGNED,
				 current_objfile);
	  tblscan += SIZEOF_LINETBL_LINENO + SIZEOF_LINETBL_STMT;
	  pc = FUNC2 (tblscan, SIZEOF_LINETBL_DELTA, GET_UNSIGNED,
			       current_objfile);
	  tblscan += SIZEOF_LINETBL_DELTA;
	  pc += base;
	  if (line != 0)
	    {
	      FUNC1 (current_subfile, line, pc);
	    }
	}
    }
}