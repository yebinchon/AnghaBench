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
typedef  void* rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int last_set_mode; scalar_t__ last_set_table_tick; int last_set_invalid; scalar_t__ last_set_sign_bit_copies; scalar_t__ last_set_nonzero_bits; void* last_set_value; scalar_t__ last_set_label; scalar_t__ truncated_to_mode; scalar_t__ last_death; void* last_set; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ CLOBBER ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (void*) ; 
 size_t FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ HOST_BITS_PER_WIDE_INT ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ MAX_LAST_VALUE_RTL ; 
 scalar_t__ MODE_INT ; 
 unsigned int FUNC6 (void*) ; 
 void* FUNC7 (void*,int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 void* FUNC8 (void*) ; 
 int FUNC9 (void*,void*,int) ; 
 scalar_t__ FUNC10 (void*) ; 
 void* FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void**,void*,scalar_t__,int) ; 
 int** hard_regno_nregs ; 
 scalar_t__ label_tick ; 
 scalar_t__ FUNC14 (void*,int) ; 
 int nonzero_bits_mode ; 
 scalar_t__ FUNC15 (void*,size_t) ; 
 scalar_t__ FUNC16 (void*,void*) ; 
 TYPE_1__* reg_stat ; 
 void* FUNC17 (void*,void*,void*) ; 
 int /*<<< orphan*/  subst_low_cuid ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 

__attribute__((used)) static void
FUNC19 (rtx reg, rtx insn, rtx value)
{
  unsigned int regno = FUNC6 (reg);
  unsigned int endregno
    = regno + (regno < FIRST_PSEUDO_REGISTER
	       ? hard_regno_nregs[regno][FUNC2 (reg)] : 1);
  unsigned int i;

  /* If VALUE contains REG and we have a previous value for REG, substitute
     the previous value.  */
  if (value && insn && FUNC16 (reg, value))
    {
      rtx tem;

      /* Set things up so get_last_value is allowed to see anything set up to
	 our insn.  */
      subst_low_cuid = FUNC5 (insn);
      tem = FUNC12 (reg);

      /* If TEM is simply a binary operation with two CLOBBERs as operands,
	 it isn't going to be useful and will take a lot of time to process,
	 so just use the CLOBBER.  */

      if (tem)
	{
	  if (FUNC0 (tem)
	      && FUNC1 (FUNC7 (tem, 0)) == CLOBBER
	      && FUNC1 (FUNC7 (tem, 1)) == CLOBBER)
	    tem = FUNC7 (tem, 0);
	  else if (FUNC9 (value, reg, 1) >= 2)
	    {
	      /* If there are two or more occurrences of REG in VALUE,
		 prevent the value from growing too much.  */
	      if (FUNC10 (tem) > MAX_LAST_VALUE_RTL)
		tem = FUNC11 (FUNC2 (tem), const0_rtx);
	    }

	  value = FUNC17 (FUNC8 (value), reg, tem);
	}
    }

  /* For each register modified, show we don't know its value, that
     we don't know about its bitwise content, that its value has been
     updated, and that we don't know the location of the death of the
     register.  */
  for (i = regno; i < endregno; i++)
    {
      if (insn)
	reg_stat[i].last_set = insn;

      reg_stat[i].last_set_value = 0;
      reg_stat[i].last_set_mode = 0;
      reg_stat[i].last_set_nonzero_bits = 0;
      reg_stat[i].last_set_sign_bit_copies = 0;
      reg_stat[i].last_death = 0;
      reg_stat[i].truncated_to_mode = 0;
    }

  /* Mark registers that are being referenced in this value.  */
  if (value)
    FUNC18 (value);

  /* Now update the status of each register being set.
     If someone is using this register in this block, set this register
     to invalid since we will get confused between the two lives in this
     basic block.  This makes using this register always invalid.  In cse, we
     scan the table to invalidate all entries using this register, but this
     is too much work for us.  */

  for (i = regno; i < endregno; i++)
    {
      reg_stat[i].last_set_label = label_tick;
      if (!insn || (value && reg_stat[i].last_set_table_tick == label_tick))
	reg_stat[i].last_set_invalid = 1;
      else
	reg_stat[i].last_set_invalid = 0;
    }

  /* The value being assigned might refer to X (like in "x++;").  In that
     case, we must replace it with (clobber (const_int 0)) to prevent
     infinite loops.  */
  if (value && ! FUNC13 (&value, insn,
					  reg_stat[regno].last_set_label, 0))
    {
      value = FUNC8 (value);
      if (! FUNC13 (&value, insn,
				     reg_stat[regno].last_set_label, 1))
	value = 0;
    }

  /* For the main register being modified, update the value, the mode, the
     nonzero bits, and the number of sign bit copies.  */

  reg_stat[regno].last_set_value = value;

  if (value)
    {
      enum machine_mode mode = FUNC2 (reg);
      subst_low_cuid = FUNC5 (insn);
      reg_stat[regno].last_set_mode = mode;
      if (FUNC4 (mode) == MODE_INT
	  && FUNC3 (mode) <= HOST_BITS_PER_WIDE_INT)
	mode = nonzero_bits_mode;
      reg_stat[regno].last_set_nonzero_bits = FUNC14 (value, mode);
      reg_stat[regno].last_set_sign_bit_copies
	= FUNC15 (value, FUNC2 (reg));
    }
}