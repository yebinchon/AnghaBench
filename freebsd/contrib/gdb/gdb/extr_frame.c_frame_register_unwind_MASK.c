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
struct frame_unwind_cache {int dummy; } ;
struct frame_info {int /*<<< orphan*/  prologue_cache; int /*<<< orphan*/  next; TYPE_1__* unwind; int /*<<< orphan*/  type; int /*<<< orphan*/  level; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
struct TYPE_2__ {int /*<<< orphan*/  (* prev_register ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,int*,void*) ;int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ frame_debug ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int*,int /*<<< orphan*/ *,int*,void*) ; 

void
FUNC7 (struct frame_info *frame, int regnum,
		       int *optimizedp, enum lval_type *lvalp,
		       CORE_ADDR *addrp, int *realnump, void *bufferp)
{
  struct frame_unwind_cache *cache;

  if (frame_debug)
    {
      FUNC0 (gdb_stdlog, "\
{ frame_register_unwind (frame=%d,regnum=%d(%s),...) ",
			  frame->level, regnum,
			  FUNC1 (frame, regnum));
    }

  /* Require all but BUFFERP to be valid.  A NULL BUFFERP indicates
     that the value proper does not need to be fetched.  */
  FUNC3 (optimizedp != NULL);
  FUNC3 (lvalp != NULL);
  FUNC3 (addrp != NULL);
  FUNC3 (realnump != NULL);
  /* gdb_assert (bufferp != NULL); */

  /* NOTE: cagney/2002-11-27: A program trying to unwind a NULL frame
     is broken.  There is always a frame.  If there, for some reason,
     isn't, there is some pretty busted code as it should have
     detected the problem before calling here.  */
  FUNC3 (frame != NULL);

  /* Find the unwinder.  */
  if (frame->unwind == NULL)
    {
      frame->unwind = FUNC2 (frame->next);
      /* FIXME: cagney/2003-04-02: Rather than storing the frame's
	 type in the frame, the unwinder's type should be returned
	 directly.  Unfortunately, legacy code, called by
	 legacy_get_prev_frame, explicitly set the frames type using
	 the method deprecated_set_frame_type().  */
      frame->type = frame->unwind->type;
    }

  /* Ask this frame to unwind its register.  See comment in
     "frame-unwind.h" for why NEXT frame and this unwind cace are
     passed in.  */
  frame->unwind->prev_register (frame->next, &frame->prologue_cache, regnum,
				optimizedp, lvalp, addrp, realnump, bufferp);

  if (frame_debug)
    {
      FUNC0 (gdb_stdlog, "->");
      FUNC0 (gdb_stdlog, " *optimizedp=%d", (*optimizedp));
      FUNC0 (gdb_stdlog, " *lvalp=%d", (int) (*lvalp));
      FUNC0 (gdb_stdlog, " *addrp=0x%s", FUNC4 ((*addrp)));
      FUNC0 (gdb_stdlog, " *bufferp=");
      if (bufferp == NULL)
	FUNC0 (gdb_stdlog, "<NULL>");
      else
	{
	  int i;
	  const unsigned char *buf = bufferp;
	  FUNC0 (gdb_stdlog, "[");
	  for (i = 0; i < FUNC5 (current_gdbarch, regnum); i++)
	    FUNC0 (gdb_stdlog, "%02x", buf[i]);
	  FUNC0 (gdb_stdlog, "]");
	}
      FUNC0 (gdb_stdlog, " }\n");
    }
}