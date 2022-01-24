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
struct dummy_frame {int /*<<< orphan*/  regcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC0 (struct dummy_frame**) ; 
 struct dummy_frame* dummy_frame_stack ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4 (void)
{
  struct dummy_frame *dummy_frame = dummy_frame_stack;

  /* FIXME: what if the first frame isn't the right one, eg..
     because one call-by-hand function has done a longjmp into another one? */

  if (!dummy_frame)
    FUNC1 ("Can't pop dummy frame!");
  FUNC3 (current_regcache, dummy_frame->regcache);
  FUNC2 ();

  FUNC0 (&dummy_frame_stack);
}