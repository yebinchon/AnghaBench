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
struct frame_id {int dummy; } ;
struct TYPE_3__ {int p; struct frame_id value; } ;
struct frame_info {TYPE_1__ this_id; int /*<<< orphan*/  prologue_cache; int /*<<< orphan*/  next; TYPE_2__* unwind; int /*<<< orphan*/  type; int /*<<< orphan*/  level; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* this_id ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct frame_id*) ;int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct frame_id) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ frame_debug ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct frame_id null_frame_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct frame_id*) ; 

struct frame_id
FUNC6 (struct frame_info *fi)
{
  if (fi == NULL)
    {
      return null_frame_id;
    }
  if (!fi->this_id.p)
    {
      FUNC3 (!FUNC4 (current_gdbarch));
      if (frame_debug)
	FUNC1 (gdb_stdlog, "{ get_frame_id (fi=%d) ",
			    fi->level);
      /* Find the unwinder.  */
      if (fi->unwind == NULL)
	{
	  fi->unwind = FUNC2 (fi->next);
	  /* FIXME: cagney/2003-04-02: Rather than storing the frame's
	     type in the frame, the unwinder's type should be returned
	     directly.  Unfortunately, legacy code, called by
	     legacy_get_prev_frame, explicitly set the frames type
	     using the method deprecated_set_frame_type().  */
	  fi->type = fi->unwind->type;
	}
      /* Find THIS frame's ID.  */
      fi->unwind->this_id (fi->next, &fi->prologue_cache, &fi->this_id.value);
      fi->this_id.p = 1;
      if (frame_debug)
	{
	  FUNC1 (gdb_stdlog, "-> ");
	  FUNC0 (gdb_stdlog, fi->this_id.value);
	  FUNC1 (gdb_stdlog, " }\n");
	}
    }
  return fi->this_id.value;
}