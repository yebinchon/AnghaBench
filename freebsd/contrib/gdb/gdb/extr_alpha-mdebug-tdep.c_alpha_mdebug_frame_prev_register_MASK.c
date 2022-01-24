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
struct alpha_mdebug_unwind_cache {int /*<<< orphan*/  vfp; scalar_t__* saved_regs; int /*<<< orphan*/  proc_desc; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int ALPHA_PC_REGNUM ; 
 int /*<<< orphan*/  ALPHA_REGISTER_SIZE ; 
 int ALPHA_SP_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct alpha_mdebug_unwind_cache* FUNC1 (struct frame_info*,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int lval_memory ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct frame_info *next_frame,
				  void **this_prologue_cache,
				  int regnum, int *optimizedp,
				  enum lval_type *lvalp, CORE_ADDR *addrp,
				  int *realnump, void *bufferp)
{
  struct alpha_mdebug_unwind_cache *info
    = FUNC1 (next_frame, this_prologue_cache);

  /* The PC of the previous frame is stored in the link register of
     the current frame.  Frob regnum so that we pull the value from
     the correct place.  */
  if (regnum == ALPHA_PC_REGNUM)
    regnum = FUNC0 (info->proc_desc);
  
  /* For all registers known to be saved in the current frame, 
     do the obvious and pull the value out.  */
  if (info->saved_regs[regnum])
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = info->saved_regs[regnum];
      *realnump = -1;
      if (bufferp != NULL)
	FUNC3 (next_frame, *addrp, bufferp, ALPHA_REGISTER_SIZE);
      return;
    }

  /* The stack pointer of the previous frame is computed by popping
     the current stack frame.  */
  if (regnum == ALPHA_SP_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (bufferp != NULL)
	FUNC4 (bufferp, ALPHA_REGISTER_SIZE, info->vfp);
      return;
    }

  /* Otherwise assume the next frame has the same register value.  */
  FUNC2 (next_frame, regnum, optimizedp, lvalp, addrp,
  		  realnump, bufferp);
}