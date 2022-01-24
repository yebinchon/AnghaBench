#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum reg_list_els { ____Placeholder_reg_list_els } reg_list_els ;
typedef  enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;
struct TYPE_2__ {void* error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FAIL ; 
#define  REGLIST_NEON_D 130 
#define  REGLIST_VFP_D 129 
#define  REGLIST_VFP_S 128 
 int REG_TYPE_NDQ ; 
 int REG_TYPE_NQ ; 
 int REG_TYPE_VFD ; 
 int REG_TYPE_VFS ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  arm_arch_used ; 
 int FUNC4 (char**,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  cpu_variant ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  fpu_vfp_ext_v3 ; 
 void* FUNC7 (char*) ; 
 TYPE_1__ inst ; 
 char** reg_expected_msgs ; 
 int FUNC8 (char**) ; 
 int /*<<< orphan*/  thumb_arch_used ; 
 scalar_t__ thumb_mode ; 

__attribute__((used)) static int
FUNC9 (char **ccp, unsigned int *pbase, enum reg_list_els etype)
{
  char *str = *ccp;
  int base_reg;
  int new_base;
  enum arm_reg_type regtype = 0;
  int max_regs = 0;
  int count = 0;
  int warned = 0;
  unsigned long mask = 0;
  int i;

  if (*str != '{')
    {
      inst.error = FUNC2("expecting {");
      return FAIL;
    }

  str++;

  switch (etype)
    {
    case REGLIST_VFP_S:
      regtype = REG_TYPE_VFS;
      max_regs = 32;
      break;
    
    case REGLIST_VFP_D:
      regtype = REG_TYPE_VFD;
      break;
    
    case REGLIST_NEON_D:
      regtype = REG_TYPE_NDQ;
      break;
    }

  if (etype != REGLIST_VFP_S)
    {
      /* VFPv3 allows 32 D registers.  */
      if (FUNC0 (cpu_variant, fpu_vfp_ext_v3))
        {
          max_regs = 32;
          if (thumb_mode)
            FUNC1 (thumb_arch_used, thumb_arch_used,
                                    fpu_vfp_ext_v3);
          else
            FUNC1 (arm_arch_used, arm_arch_used,
                                    fpu_vfp_ext_v3);
        }
      else
        max_regs = 16;
    }

  base_reg = max_regs;

  do
    {
      int setmask = 1, addregs = 1;

      new_base = FUNC4 (&str, regtype, &regtype, NULL);

      if (new_base == FAIL)
	{
	  FUNC6 (FUNC2(reg_expected_msgs[regtype]));
	  return FAIL;
	}
 
      if (new_base >= max_regs)
        {
          FUNC6 (FUNC2("register out of range in list"));
          return FAIL;
        }
 
      /* Note: a value of 2 * n is returned for the register Q<n>.  */
      if (regtype == REG_TYPE_NQ)
        {
          setmask = 3;
          addregs = 2;
        }

      if (new_base < base_reg)
	base_reg = new_base;

      if (mask & (setmask << new_base))
	{
	  FUNC6 (FUNC2("invalid register list"));
	  return FAIL;
	}

      if ((mask >> new_base) != 0 && ! warned)
	{
	  FUNC5 (FUNC2("register list not in ascending order"));
	  warned = 1;
	}

      mask |= setmask << new_base;
      count += addregs;

      if (*str == '-') /* We have the start of a range expression */
	{
	  int high_range;

	  str++;

	  if ((high_range = FUNC4 (&str, regtype, NULL, NULL))
              == FAIL)
	    {
	      inst.error = FUNC7 (reg_expected_msgs[regtype]);
	      return FAIL;
	    }

          if (high_range >= max_regs)
            {
              FUNC6 (FUNC2("register out of range in list"));
              return FAIL;
            }

          if (regtype == REG_TYPE_NQ)
            high_range = high_range + 1;

	  if (high_range <= new_base)
	    {
	      inst.error = FUNC2("register range not in ascending order");
	      return FAIL;
	    }

	  for (new_base += addregs; new_base <= high_range; new_base += addregs)
	    {
	      if (mask & (setmask << new_base))
		{
		  inst.error = FUNC2("invalid register list");
		  return FAIL;
		}

	      mask |= setmask << new_base;
	      count += addregs;
	    }
	}
    }
  while (FUNC8 (&str) != FAIL);

  str++;

  /* Sanity check -- should have raised a parse error above.  */
  if (count == 0 || count > max_regs)
    FUNC3 ();

  *pbase = base_reg;

  /* Final test -- the registers must be consecutive.  */
  mask >>= base_reg;
  for (i = 0; i < count; i++)
    {
      if ((mask & (1u << i)) == 0)
	{
	  inst.error = FUNC2("non-contiguous register range");
	  return FAIL;
	}
    }

  *ccp = str;

  return count;
}