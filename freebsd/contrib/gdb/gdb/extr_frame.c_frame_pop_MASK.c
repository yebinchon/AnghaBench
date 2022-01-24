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
struct regcache {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEPRECATED_POP_FRAME ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  do_frame_unwind_register ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct cleanup* FUNC3 (struct regcache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct regcache*) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,int /*<<< orphan*/ ,struct frame_info*) ; 
 struct regcache* FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (struct frame_info *this_frame)
{
  struct regcache *scratch_regcache;
  struct cleanup *cleanups;

  if (FUNC0 ())
    {
      /* A legacy architecture that has implemented a custom pop
	 function.  All new architectures should instead be using the
	 generic code below.  */
      DEPRECATED_POP_FRAME;
    }
  else
    {
      /* Make a copy of all the register values unwound from this
	 frame.  Save them in a scratch buffer so that there isn't a
	 race betweening trying to extract the old values from the
	 current_regcache while, at the same time writing new values
	 into that same cache.  */
      struct regcache *scratch = FUNC6 (current_gdbarch);
      struct cleanup *cleanups = FUNC3 (scratch);
      FUNC5 (scratch, do_frame_unwind_register, this_frame);
      /* FIXME: cagney/2003-03-16: It should be possible to tell the
         target's register cache that it is about to be hit with a
         burst register transfer and that the sequence of register
         writes should be batched.  The pair target_prepare_to_store()
         and target_store_registers() kind of suggest this
         functionality.  Unfortunately, they don't implement it.  Their
         lack of a formal definition can lead to targets writing back
         bogus values (arguably a bug in the target code mind).  */
      /* Now copy those saved registers into the current regcache.
         Here, regcache_cpy() calls regcache_restore().  */
      FUNC4 (current_regcache, scratch);
      FUNC1 (cleanups);
    }
  /* We've made right mess of GDB's local state, just discard
     everything.  */
  FUNC2 ();
}