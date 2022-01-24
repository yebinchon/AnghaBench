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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IA64_BR0_REGNUM ; 
 int /*<<< orphan*/  IA64_BSP_REGNUM ; 
 int /*<<< orphan*/  IA64_CFM_REGNUM ; 
 int IA64_FR16_REGNUM ; 
 int IA64_FR8_REGNUM ; 
 int /*<<< orphan*/  IA64_GR1_REGNUM ; 
 int /*<<< orphan*/  IA64_GR8_REGNUM ; 
 int /*<<< orphan*/  IA64_PFS_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_ia64_ext ; 
 struct type* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct type*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 struct type* FUNC10 (struct type*) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct regcache*,int,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct regcache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int) ; 
 scalar_t__ FUNC17 (struct type*) ; 
 int /*<<< orphan*/  sp_regnum ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC21 (struct gdbarch *gdbarch, CORE_ADDR func_addr, 
		      struct regcache *regcache, CORE_ADDR bp_addr,
		      int nargs, struct value **args, CORE_ADDR sp,
		      int struct_return, CORE_ADDR struct_addr)
{
  int argno;
  struct value *arg;
  struct type *type;
  int len, argoffset;
  int nslots, rseslots, memslots, slotnum, nfuncargs;
  int floatreg;
  CORE_ADDR bsp, cfm, pfs, new_bsp, funcdescaddr, pc, global_pointer;

  nslots = 0;
  nfuncargs = 0;
  /* Count the number of slots needed for the arguments.  */
  for (argno = 0; argno < nargs; argno++)
    {
      arg = args[argno];
      type = FUNC6 (FUNC5 (arg));
      len = FUNC2 (type);

      if ((nslots & 1) && FUNC17 (type))
	nslots++;

      if (FUNC1 (type) == TYPE_CODE_FUNC)
	nfuncargs++;

      nslots += (len + 7) / 8;
    }

  /* Divvy up the slots between the RSE and the memory stack.  */
  rseslots = (nslots > 8) ? 8 : nslots;
  memslots = nslots - rseslots;

  /* Allocate a new RSE frame.  */
  cfm = FUNC13 (IA64_CFM_REGNUM);

  bsp = FUNC13 (IA64_BSP_REGNUM);
  new_bsp = FUNC16 (bsp, rseslots);
  FUNC20 (IA64_BSP_REGNUM, new_bsp);

  pfs = FUNC13 (IA64_PFS_REGNUM);
  pfs &= 0xc000000000000000LL;
  pfs |= (cfm & 0xffffffffffffLL);
  FUNC20 (IA64_PFS_REGNUM, pfs);

  cfm &= 0xc000000000000000LL;
  cfm |= rseslots;
  FUNC20 (IA64_CFM_REGNUM, cfm);
  
  /* We will attempt to find function descriptors in the .opd segment,
     but if we can't we'll construct them ourselves.  That being the
     case, we'll need to reserve space on the stack for them.  */
  funcdescaddr = sp - nfuncargs * 16;
  funcdescaddr &= ~0xfLL;

  /* Adjust the stack pointer to it's new value.  The calling conventions
     require us to have 16 bytes of scratch, plus whatever space is
     necessary for the memory slots and our function descriptors.  */
  sp = sp - 16 - (memslots + nfuncargs) * 8;
  sp &= ~0xfLL;				/* Maintain 16 byte alignment.  */

  /* Place the arguments where they belong.  The arguments will be
     either placed in the RSE backing store or on the memory stack.
     In addition, floating point arguments or HFAs are placed in
     floating point registers.  */
  slotnum = 0;
  floatreg = IA64_FR8_REGNUM;
  for (argno = 0; argno < nargs; argno++)
    {
      struct type *float_elt_type;

      arg = args[argno];
      type = FUNC6 (FUNC5 (arg));
      len = FUNC2 (type);

      /* Special handling for function parameters.  */
      if (len == 8 
          && FUNC1 (type) == TYPE_CODE_PTR 
	  && FUNC1 (FUNC3 (type)) == TYPE_CODE_FUNC)
	{
	  char val_buf[8];

	  FUNC18 (val_buf, 8,
				  FUNC9 (FUNC8 (FUNC4 (arg), 8),
						   &funcdescaddr));
	  if (slotnum < rseslots)
	    FUNC19 (FUNC16 (bsp, slotnum), val_buf, 8);
	  else
	    FUNC19 (sp + 16 + 8 * (slotnum - rseslots), val_buf, 8);
	  slotnum++;
	  continue;
	}

      /* Normal slots.  */

      /* Skip odd slot if necessary...  */
      if ((slotnum & 1) && FUNC17 (type))
	slotnum++;

      argoffset = 0;
      while (len > 0)
	{
	  char val_buf[8];

	  FUNC12 (val_buf, 0, 8);
	  FUNC11 (val_buf, FUNC4 (arg) + argoffset, (len > 8) ? 8 : len);

	  if (slotnum < rseslots)
	    FUNC19 (FUNC16 (bsp, slotnum), val_buf, 8);
	  else
	    FUNC19 (sp + 16 + 8 * (slotnum - rseslots), val_buf, 8);

	  argoffset += 8;
	  len -= 8;
	  slotnum++;
	}

      /* Handle floating point types (including HFAs).  */
      float_elt_type = FUNC10 (type);
      if (float_elt_type != NULL)
	{
	  argoffset = 0;
	  len = FUNC2 (type);
	  while (len > 0 && floatreg < IA64_FR16_REGNUM)
	    {
	      char to[MAX_REGISTER_SIZE];
	      FUNC7 (FUNC4 (arg) + argoffset, float_elt_type,
				      to, builtin_type_ia64_ext);
	      FUNC14 (regcache, floatreg, (void *)to);
	      floatreg++;
	      argoffset += FUNC2 (float_elt_type);
	      len -= FUNC2 (float_elt_type);
	    }
	}
    }

  /* Store the struct return value in r8 if necessary.  */
  if (struct_return)
    {
      FUNC15 (regcache, IA64_GR8_REGNUM, (ULONGEST)struct_addr);
    }

  global_pointer = FUNC0 (func_addr);

  if (global_pointer != 0)
    FUNC20 (IA64_GR1_REGNUM, global_pointer);

  FUNC20 (IA64_BR0_REGNUM, bp_addr);

  FUNC20 (sp_regnum, sp);

  return sp;
}