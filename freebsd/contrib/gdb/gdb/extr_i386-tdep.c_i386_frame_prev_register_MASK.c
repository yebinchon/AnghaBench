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
struct i386_frame_cache {int saved_sp; int* saved_regs; scalar_t__ pc_in_eax; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int ULONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int I386_EAX_REGNUM ; 
 int I386_EFLAGS_REGNUM ; 
 int I386_EIP_REGNUM ; 
 int I386_ESP_REGNUM ; 
 int I386_NUM_SAVED_REGS ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*,int,int*,int*,int*,int*,void*) ; 
 int FUNC1 (struct frame_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct i386_frame_cache* FUNC3 (struct frame_info*,void**) ; 
 int lval_memory ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC4 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int) ; 

__attribute__((used)) static void
FUNC7 (struct frame_info *next_frame, void **this_cache,
			  int regnum, int *optimizedp,
			  enum lval_type *lvalp, CORE_ADDR *addrp,
			  int *realnump, void *valuep)
{
  struct i386_frame_cache *cache = FUNC3 (next_frame, this_cache);

  FUNC2 (regnum >= 0);

  /* The System V ABI says that:

     "The flags register contains the system flags, such as the
     direction flag and the carry flag.  The direction flag must be
     set to the forward (that is, zero) direction before entry and
     upon exit from a function.  Other user flags have no specified
     role in the standard calling sequence and are not preserved."

     To guarantee the "upon exit" part of that statement we fake a
     saved flags register that has its direction flag cleared.

     Note that GCC doesn't seem to rely on the fact that the direction
     flag is cleared after a function return; it always explicitly
     clears the flag before operations where it matters.

     FIXME: kettenis/20030316: I'm not quite sure whether this is the
     right thing to do.  The way we fake the flags register here makes
     it impossible to change it.  */

  if (regnum == I386_EFLAGS_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
	{
	  ULONGEST val;

	  /* Clear the direction flag.  */
	  val = FUNC1 (next_frame,
						I386_EFLAGS_REGNUM);
	  val &= ~(1 << 10);
	  FUNC6 (valuep, 4, val);
	}

      return;
    }

  if (regnum == I386_EIP_REGNUM && cache->pc_in_eax)
    {
      FUNC0 (next_frame, I386_EAX_REGNUM,
			     optimizedp, lvalp, addrp, realnump, valuep);
      return;
    }

  if (regnum == I386_ESP_REGNUM && cache->saved_sp)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
	{
	  /* Store the value.  */
	  FUNC6 (valuep, 4, cache->saved_sp);
	}
      return;
    }

  if (regnum < I386_NUM_SAVED_REGS && cache->saved_regs[regnum] != -1)
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = cache->saved_regs[regnum];
      *realnump = -1;
      if (valuep)
	{
	  /* Read the value in from memory.  */
	  FUNC4 (*addrp, valuep,
		       FUNC5 (current_gdbarch, regnum));
	}
      return;
    }

  FUNC0 (next_frame, regnum,
			 optimizedp, lvalp, addrp, realnump, valuep);
}