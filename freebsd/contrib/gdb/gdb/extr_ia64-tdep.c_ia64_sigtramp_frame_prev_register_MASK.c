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
struct ia64_frame_cache {scalar_t__* saved_regs; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int IA64_GR127_REGNUM ; 
 int IA64_GR32_REGNUM ; 
 int IA64_IP_REGNUM ; 
 unsigned int IA64_NAT127_REGNUM ; 
 size_t IA64_VRAP_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int V127_REGNUM ; 
 int V32_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 char** ia64_register_names ; 
 struct ia64_frame_cache* FUNC5 (struct frame_info*,void**) ; 
 int lval_memory ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int not_lval ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,scalar_t__) ; 
 int /*<<< orphan*/  target_has_registers ; 

__attribute__((used)) static void
FUNC10 (struct frame_info *next_frame,
				   void **this_cache,
				   int regnum, int *optimizedp,
				   enum lval_type *lvalp, CORE_ADDR *addrp,
				   int *realnump, void *valuep)
{
  char dummy_valp[MAX_REGISTER_SIZE];
  char buf[MAX_REGISTER_SIZE];

  struct ia64_frame_cache *cache =
    FUNC5 (next_frame, this_cache);

  FUNC3 (regnum >= 0);

  if (!target_has_registers)
    FUNC0 ("No registers.");

  *optimizedp = 0;
  *addrp = 0;
  *lvalp = not_lval;
  *realnump = -1;

  /* Rather than check each time if valuep is non-null, supply a dummy buffer
     when valuep is not supplied.  */
  if (!valuep)
    valuep = dummy_valp;
  
  FUNC6 (valuep, 0, FUNC8 (current_gdbarch, regnum));
 
  if (regnum == IA64_IP_REGNUM)
    {
      CORE_ADDR pc = 0;
      CORE_ADDR addr = cache->saved_regs[IA64_VRAP_REGNUM];

      if (addr != 0)
	{
	  *lvalp = lval_memory;
	  *addrp = addr;
	  FUNC4 (addr, buf, FUNC8 (current_gdbarch, IA64_IP_REGNUM));
	  pc = FUNC1 (buf, 8);
	}
      pc &= ~0xf;
      FUNC9 (valuep, 8, pc);
    }
 else if ((regnum >= IA64_GR32_REGNUM && regnum <= IA64_GR127_REGNUM) ||
	   (regnum >= V32_REGNUM && regnum <= V127_REGNUM))
    {
      CORE_ADDR addr = 0;
      if (regnum >= V32_REGNUM)
	regnum = IA64_GR32_REGNUM + (regnum - V32_REGNUM);
      addr = cache->saved_regs[regnum];
      if (addr != 0)
	{
	  *lvalp = lval_memory;
	  *addrp = addr;
	  FUNC4 (addr, valuep, FUNC8 (current_gdbarch, regnum));
	}
    }
  else
    {
      /* All other registers not listed above.  */
      CORE_ADDR addr = cache->saved_regs[regnum];
      if (addr != 0)
	{
	  *lvalp = lval_memory;
	  *addrp = addr;
	  FUNC4 (addr, valuep, FUNC8 (current_gdbarch, regnum));
	}
    }

  if (gdbarch_debug >= 1)
    FUNC2 (gdb_stdlog,
			"sigtramp prev register <%s> is 0x%s\n",
			(((unsigned) regnum <= IA64_NAT127_REGNUM)
			 ? ia64_register_names[regnum] : "r??"), 
			FUNC7 (FUNC1 (valuep, 8)));
}