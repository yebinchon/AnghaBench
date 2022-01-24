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
struct TYPE_3__ {int p; } ;
struct frame_info {scalar_t__ type; TYPE_1__ this_id; TYPE_2__* unwind; int /*<<< orphan*/  next; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct frame_info*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ UNKNOWN_FRAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct frame_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ frame_debug ; 
 struct frame_info* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct frame_info *
FUNC11 (CORE_ADDR addr, CORE_ADDR pc)
{
  struct frame_info *fi;

  if (frame_debug)
    {
      FUNC6 (gdb_stdlog,
			  "{ create_new_frame (addr=0x%s, pc=0x%s) ",
			  FUNC10 (addr), FUNC10 (pc));
    }

  fi = FUNC7 (sizeof (struct frame_info));

  fi->next = FUNC2 (current_regcache);

  /* Select/initialize both the unwind function and the frame's type
     based on the PC.  */
  fi->unwind = FUNC9 (fi->next);
  if (fi->unwind->type != UNKNOWN_FRAME)
    fi->type = fi->unwind->type;
  else
    fi->type = FUNC8 (pc);

  fi->this_id.p = 1;
  FUNC3 (fi, addr);
  FUNC4 (fi, pc);

  if (FUNC1 ())
    FUNC0 (0, fi);

  if (frame_debug)
    {
      FUNC6 (gdb_stdlog, "-> ");
      FUNC5 (gdb_stdlog, fi);
      FUNC6 (gdb_stdlog, " }\n");
    }

  return fi;
}