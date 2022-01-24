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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int ARG_POINTER_REGNUM ; 
 int FUNC0 (int) ; 
 unsigned int CC_REGNUM ; 
 int DFmode ; 
 int DImode ; 
 int FALSE ; 
 unsigned int FIRST_FPA_REGNUM ; 
 unsigned int FIRST_VFP_REGNUM ; 
 unsigned int FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 unsigned int LAST_ARM_REGNUM ; 
 unsigned int LAST_FPA_REGNUM ; 
 unsigned int LAST_LO_REGNUM ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ MODE_INT ; 
 int SFmode ; 
 int SImode ; 
 scalar_t__ TARGET_FPA ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 scalar_t__ TARGET_LDRD ; 
 scalar_t__ TARGET_MAVERICK ; 
 scalar_t__ TARGET_REALLY_IWMMXT ; 
 scalar_t__ TARGET_THUMB ; 
 scalar_t__ TARGET_VFP ; 
 int TRUE ; 
 int FUNC7 (int) ; 
 unsigned int VFPCC_REGNUM ; 

int
FUNC8 (unsigned int regno, enum machine_mode mode)
{
  if (FUNC1 (mode) == MODE_CC)
    return (regno == CC_REGNUM
	    || (TARGET_HARD_FLOAT && TARGET_VFP
		&& regno == VFPCC_REGNUM));

  if (TARGET_THUMB)
    /* For the Thumb we only allow values bigger than SImode in
       registers 0 - 6, so that there is always a second low
       register available to hold the upper part of the value.
       We probably we ought to ensure that the register is the
       start of an even numbered register pair.  */
    return (FUNC0 (mode) < 2) || (regno < LAST_LO_REGNUM);

  if (TARGET_HARD_FLOAT && TARGET_MAVERICK
      && FUNC3 (regno))
    /* We have outlawed SI values in Cirrus registers because they
       reside in the lower 32 bits, but SF values reside in the
       upper 32 bits.  This causes gcc all sorts of grief.  We can't
       even split the registers into pairs because Cirrus SI values
       get sign extended to 64bits-- aldyh.  */
    return (FUNC1 (mode) == MODE_FLOAT) || (mode == DImode);

  if (TARGET_HARD_FLOAT && TARGET_VFP
      && FUNC6 (regno))
    {
      if (mode == SFmode || mode == SImode)
	return TRUE;

      /* DFmode values are only valid in even register pairs.  */
      if (mode == DFmode)
	return ((regno - FIRST_VFP_REGNUM) & 1) == 0;
      return FALSE;
    }

  if (TARGET_REALLY_IWMMXT)
    {
      if (FUNC4 (regno))
	return mode == SImode;

      if (FUNC5 (regno))
	return FUNC7 (mode);
    }
  
  /* We allow any value to be stored in the general registers.
     Restrict doubleword quantities to even register pairs so that we can
     use ldrd.  */
  if (regno <= LAST_ARM_REGNUM)
    return !(TARGET_LDRD && FUNC2 (mode) > 4 && (regno & 1) != 0);

  if (regno == FRAME_POINTER_REGNUM
      || regno == ARG_POINTER_REGNUM)
    /* We only allow integers in the fake hard registers.  */
    return FUNC1 (mode) == MODE_INT;

  /* The only registers left are the FPA registers
     which we only allow to hold FP values.  */
  return (TARGET_HARD_FLOAT && TARGET_FPA
	  && FUNC1 (mode) == MODE_FLOAT
	  && regno >= FIRST_FPA_REGNUM
	  && regno <= LAST_FPA_REGNUM);
}