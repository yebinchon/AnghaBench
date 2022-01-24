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
struct amd64_frame_cache {int* saved_regs; scalar_t__ saved_sp; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int AMD64_NUM_SAVED_REGS ; 
 int SP_REGNUM ; 
 struct amd64_frame_cache* FUNC0 (struct frame_info*,void**) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int,int*,int*,int*,int*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int lval_memory ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC3 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (struct frame_info *next_frame, void **this_cache,
			   int regnum, int *optimizedp,
			   enum lval_type *lvalp, CORE_ADDR *addrp,
			   int *realnump, void *valuep)
{
  struct amd64_frame_cache *cache =
    FUNC0 (next_frame, this_cache);

  FUNC2 (regnum >= 0);

  if (regnum == SP_REGNUM && cache->saved_sp)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
	{
	  /* Store the value.  */
	  FUNC5 (valuep, 8, cache->saved_sp);
	}
      return;
    }

  if (regnum < AMD64_NUM_SAVED_REGS && cache->saved_regs[regnum] != -1)
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = cache->saved_regs[regnum];
      *realnump = -1;
      if (valuep)
	{
	  /* Read the value in from memory.  */
	  FUNC3 (*addrp, valuep,
		       FUNC4 (current_gdbarch, regnum));
	}
      return;
    }

  FUNC1 (next_frame, regnum,
			 optimizedp, lvalp, addrp, realnump, valuep);
}