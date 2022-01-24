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
struct dummy_frame {struct dummy_frame* next; int /*<<< orphan*/  regcache; int /*<<< orphan*/  id; int /*<<< orphan*/  fp; scalar_t__ top; int /*<<< orphan*/  sp; int /*<<< orphan*/  pc; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_regcache ; 
 struct dummy_frame* dummy_frame_stack ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dummy_frame*) ; 
 struct dummy_frame* FUNC10 (int) ; 

void
FUNC11 (void)
{
  struct dummy_frame *dummy_frame;
  CORE_ADDR fp = FUNC2 (FUNC1 ());

  /* check to see if there are stale dummy frames, 
     perhaps left over from when a longjump took us out of a 
     function that was called by the debugger */

  dummy_frame = dummy_frame_stack;
  while (dummy_frame)
    if (FUNC0 (dummy_frame->fp, fp))	/* stale -- destroy! */
      {
	dummy_frame_stack = dummy_frame->next;
	FUNC7 (dummy_frame->regcache);
	FUNC9 (dummy_frame);
	dummy_frame = dummy_frame_stack;
      }
    else
      dummy_frame = dummy_frame->next;

  dummy_frame = FUNC10 (sizeof (struct dummy_frame));
  dummy_frame->regcache = FUNC8 (current_gdbarch);

  dummy_frame->pc = FUNC4 ();
  dummy_frame->sp = FUNC5 ();
  dummy_frame->top = 0;
  dummy_frame->fp = fp;
  dummy_frame->id = FUNC3 (FUNC1 ());
  FUNC6 (dummy_frame->regcache, current_regcache);
  dummy_frame->next = dummy_frame_stack;
  dummy_frame_stack = dummy_frame;
}