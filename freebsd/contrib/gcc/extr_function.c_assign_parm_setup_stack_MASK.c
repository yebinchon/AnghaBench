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
typedef  int /*<<< orphan*/  tree ;
struct assign_parm_data_one {scalar_t__ promoted_mode; scalar_t__ nominal_mode; scalar_t__ entry_parm; scalar_t__ stack_parm; int /*<<< orphan*/  passed_type; } ;
struct assign_parm_data_all {int /*<<< orphan*/  conversion_insns; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 

__attribute__((used)) static void
FUNC20 (struct assign_parm_data_all *all, tree parm,
		         struct assign_parm_data_one *data)
{
  /* Value must be stored in the stack slot STACK_PARM during function
     execution.  */
  bool to_conversion = false;

  if (data->promoted_mode != data->nominal_mode)
    {
      /* Conversion is required.  */
      rtx tempreg = FUNC14 (FUNC1 (data->entry_parm));

      FUNC12 (tempreg, FUNC19 (data->entry_parm));

      FUNC17 (all->conversion_insns);
      to_conversion = true;

      data->entry_parm = FUNC10 (data->nominal_mode, tempreg,
					  FUNC7 (FUNC5 (parm)));

      if (data->stack_parm)
	/* ??? This may need a big-endian conversion on sparc64.  */
	data->stack_parm
	  = FUNC8 (data->stack_parm, data->nominal_mode, 0);
    }

  if (data->entry_parm != data->stack_parm)
    {
      rtx src, dest;

      if (data->stack_parm == 0)
	{
	  data->stack_parm
	    = FUNC9 (FUNC1 (data->entry_parm),
				  FUNC2 (FUNC1 (data->entry_parm)),
				  FUNC6 (data->passed_type));
	  FUNC18 (data->stack_parm, parm, 1);
	}

      dest = FUNC19 (data->stack_parm);
      src = FUNC19 (data->entry_parm);

      if (FUNC3 (src))
	{
	  /* Use a block move to handle potentially misaligned entry_parm.  */
	  if (!to_conversion)
	    FUNC17 (all->conversion_insns);
	  to_conversion = true;

	  FUNC11 (dest, src,
			   FUNC0 (FUNC16 (data->passed_type)),
			   BLOCK_OP_NORMAL);
	}
      else
	FUNC12 (dest, src);
    }

  if (to_conversion)
    {
      all->conversion_insns = FUNC15 ();
      FUNC13 ();
    }

  FUNC4 (parm, data->stack_parm);
}