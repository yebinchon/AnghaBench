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
struct frame_info {int dummy; } ;
struct alpha_sigtramp_unwind_cache {scalar_t__ sigcontext_addr; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_REGISTER_SIZE ; 
 struct alpha_sigtramp_unwind_cache* FUNC0 (struct frame_info*,void**) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int lval_memory ; 

__attribute__((used)) static void
FUNC4 (struct frame_info *next_frame,
				    void **this_prologue_cache,
				    int regnum, int *optimizedp,
				    enum lval_type *lvalp, CORE_ADDR *addrp,
				    int *realnump, void *bufferp)
{
  struct alpha_sigtramp_unwind_cache *info
    = FUNC0 (next_frame, this_prologue_cache);
  CORE_ADDR addr;

  if (info->sigcontext_addr != 0)
    {
      /* All integer and fp registers are stored in memory.  */
      addr = FUNC1 (info->sigcontext_addr, regnum);
      if (addr != 0)
	{
	  *optimizedp = 0;
	  *lvalp = lval_memory;
	  *addrp = addr;
	  *realnump = -1;
	  if (bufferp != NULL)
	    FUNC3 (next_frame, addr, bufferp, ALPHA_REGISTER_SIZE);
	  return;
	}
    }

  /* This extra register may actually be in the sigcontext, but our
     current description of it in alpha_sigtramp_frame_unwind_cache
     doesn't include it.  Too bad.  Fall back on whatever's in the
     outer frame.  */
  FUNC2 (next_frame, regnum, optimizedp, lvalp, addrp,
		  realnump, bufferp);
}