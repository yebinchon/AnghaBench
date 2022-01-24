#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long fx_pcrel_adjust; long fx_im_disp; int fx_size; int fx_r_type; scalar_t__ fx_subsy; scalar_t__ fx_addsy; scalar_t__ fx_addnumber; scalar_t__ fx_offset; scalar_t__ fx_where; scalar_t__ fx_frag; scalar_t__ fx_done; scalar_t__ fx_tcbit; scalar_t__ fx_pcrel; int /*<<< orphan*/  fx_line; int /*<<< orphan*/  fx_file; } ;
typedef  TYPE_1__ fixS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int indent_level ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (fixS *fixp)
{
  indent_level = 1;
  FUNC2 (stderr, "fix %lx %d:%d", (long) fixp, fixp->fx_file, fixp->fx_line);
  if (fixp->fx_pcrel)
    FUNC2 (stderr, " pcrel");
  if (fixp->fx_pcrel_adjust)
    FUNC2 (stderr, " pcrel_adjust=%ld", fixp->fx_pcrel_adjust);
  if (fixp->fx_im_disp)
    {
#ifdef TC_NS32K
      fprintf (stderr, " im_disp=%d", fixp->fx_im_disp);
#else
      FUNC2 (stderr, " im_disp");
#endif
    }
  if (fixp->fx_tcbit)
    FUNC2 (stderr, " tcbit");
  if (fixp->fx_done)
    FUNC2 (stderr, " done");
  FUNC2 (stderr, "\n    size=%d frag=%lx where=%ld offset=%lx addnumber=%lx",
	   fixp->fx_size, (long) fixp->fx_frag, (long) fixp->fx_where,
	   (long) fixp->fx_offset, (long) fixp->fx_addnumber);
  FUNC2 (stderr, "\n    %s (%d)", FUNC1 (fixp->fx_r_type),
	   fixp->fx_r_type);
  if (fixp->fx_addsy)
    {
      FUNC2 (stderr, "\n   +<");
      FUNC3 (stderr, fixp->fx_addsy);
      FUNC2 (stderr, ">");
    }
  if (fixp->fx_subsy)
    {
      FUNC2 (stderr, "\n   -<");
      FUNC3 (stderr, fixp->fx_subsy);
      FUNC2 (stderr, ">");
    }
  FUNC2 (stderr, "\n");
#ifdef TC_FIX_DATA_PRINT
  TC_FIX_DATA_PRINT (stderr, fixp);
#endif
}