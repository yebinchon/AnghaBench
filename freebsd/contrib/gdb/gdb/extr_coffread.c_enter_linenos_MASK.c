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
struct objfile {int /*<<< orphan*/  section_offsets; } ;
struct TYPE_2__ {scalar_t__ l_paddr; } ;
struct internal_lineno {TYPE_1__ l_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct internal_lineno*) ; 
 int /*<<< orphan*/  FUNC2 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct internal_lineno*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  current_subfile ; 
 char* linetab ; 
 long linetab_offset ; 
 long linetab_size ; 
 int /*<<< orphan*/  local_linesz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  symfile_bfd ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static void
FUNC6 (long file_offset, int first_line,
	       int last_line, struct objfile *objfile)
{
  char *rawptr;
  struct internal_lineno lptr;

  if (!linetab)
    return;
  if (file_offset < linetab_offset)
    {
      FUNC4 (&symfile_complaints,
		 "Line number pointer %ld lower than start of line numbers",
		 file_offset);
      if (file_offset > linetab_size)	/* Too big to be an offset? */
	return;
      file_offset += linetab_offset;	/* Try reading at that linetab offset */
    }

  rawptr = &linetab[file_offset - linetab_offset];

  /* skip first line entry for each function */
  rawptr += local_linesz;
  /* line numbers start at one for the first line of the function */
  first_line--;

  /* If the line number table is full (e.g. 64K lines in COFF debug
     info), the next function's L_LNNO32 might not be zero, so don't
     overstep the table's end in any case.  */
  while (rawptr <= &linetab[0] + linetab_size)
    {
      FUNC3 (symfile_bfd, rawptr, &lptr);
      rawptr += local_linesz;
      /* The next function, or the sentinel, will have L_LNNO32 zero;
	 we exit. */
      if (FUNC1 (&lptr) && FUNC1 (&lptr) <= last_line)
	FUNC5 (current_subfile, first_line + FUNC1 (&lptr),
		     lptr.l_addr.l_paddr
		     + FUNC0 (objfile->section_offsets, FUNC2 (objfile)));
      else
	break;
    }
}