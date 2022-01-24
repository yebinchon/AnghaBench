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
struct line_subseg {struct line_entry** ptail; struct line_entry* head; struct line_subseg* next; } ;
struct line_seg {struct line_seg* next; struct line_subseg* head; } ;
struct line_entry {int dummy; } ;
typedef  int /*<<< orphan*/ * segT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SEC_DEBUGGING ; 
 int SEC_READONLY ; 
 struct line_seg* all_segs ; 
 int /*<<< orphan*/  FUNC1 (struct line_seg*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int sizeof_address ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/ * FUNC12 (char*,int /*<<< orphan*/ ) ; 

void
FUNC13 (void)
{
  segT line_seg;
  struct line_seg *s;
  segT info_seg;
  int emit_other_sections = 0;

  info_seg = FUNC2 (stdoutput, ".debug_info");
  emit_other_sections = info_seg == NULL || !FUNC11 (info_seg);

  if (!all_segs && emit_other_sections)
    /* There is no line information and no non-empty .debug_info
       section.  */
    return;

  /* Calculate the size of an address for the target machine.  */
  sizeof_address = FUNC0 (stdoutput);

  /* Create and switch to the line number section.  */
  line_seg = FUNC12 (".debug_line", 0);
  FUNC3 (stdoutput, line_seg, SEC_READONLY | SEC_DEBUGGING);

  /* For each subsection, chain the debug entries together.  */
  for (s = all_segs; s; s = s->next)
    {
      struct line_subseg *ss = s->head;
      struct line_entry **ptail = ss->ptail;

      while ((ss = ss->next) != NULL)
	{
	  *ptail = ss->head;
	  ptail = ss->ptail;
	}
    }

  FUNC8 (line_seg);

  /* If this is assembler generated line info, and there is no
     debug_info already, we need .debug_info and .debug_abbrev
     sections as well.  */
  if (emit_other_sections)
    {
      segT abbrev_seg;
      segT aranges_seg;
      segT ranges_seg;

      FUNC1 (all_segs);
      
      info_seg = FUNC12 (".debug_info", 0);
      abbrev_seg = FUNC12 (".debug_abbrev", 0);
      aranges_seg = FUNC12 (".debug_aranges", 0);

      FUNC3 (stdoutput, info_seg,
			     SEC_READONLY | SEC_DEBUGGING);
      FUNC3 (stdoutput, abbrev_seg,
			     SEC_READONLY | SEC_DEBUGGING);
      FUNC3 (stdoutput, aranges_seg,
			     SEC_READONLY | SEC_DEBUGGING);

      FUNC10 (aranges_seg, FUNC4 (2 * sizeof_address) - 1);

      if (all_segs->next == NULL)
	ranges_seg = NULL;
      else
	{
	  ranges_seg = FUNC12 (".debug_ranges", 0);
	  FUNC3 (stdoutput, ranges_seg, 
				 SEC_READONLY | SEC_DEBUGGING);
	  FUNC10 (ranges_seg, FUNC4 (2 * sizeof_address) - 1);
	  FUNC9 (ranges_seg);
	}

      FUNC6 (aranges_seg, info_seg);
      FUNC5 (abbrev_seg);
      FUNC7 (info_seg, abbrev_seg, line_seg, ranges_seg);
    }
}