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

/* Variables and functions */
#define  EF_ARM_ALIGN8 148 
#define  EF_ARM_APCS_26 147 
#define  EF_ARM_APCS_FLOAT 146 
#define  EF_ARM_BE8 145 
#define  EF_ARM_DYNSYMSUSESEGIDX 144 
 unsigned int EF_ARM_EABIMASK ; 
#define  EF_ARM_EABI_UNKNOWN 143 
#define  EF_ARM_EABI_VER1 142 
#define  EF_ARM_EABI_VER2 141 
#define  EF_ARM_EABI_VER3 140 
#define  EF_ARM_EABI_VER4 139 
#define  EF_ARM_EABI_VER5 138 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int EF_ARM_HASENTRY ; 
#define  EF_ARM_INTERWORK 137 
#define  EF_ARM_LE8 136 
#define  EF_ARM_MAPSYMSFIRST 135 
#define  EF_ARM_MAVERICK_FLOAT 134 
#define  EF_ARM_NEW_ABI 133 
#define  EF_ARM_OLD_ABI 132 
#define  EF_ARM_PIC 131 
 unsigned int EF_ARM_RELEXEC ; 
#define  EF_ARM_SOFT_FLOAT 130 
#define  EF_ARM_SYMSARESORTED 129 
#define  EF_ARM_VFP_FLOAT 128 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2 (unsigned e_flags, char buf[])
{
  unsigned eabi;
  int unknown = 0;

  eabi = FUNC0 (e_flags);
  e_flags &= ~ EF_ARM_EABIMASK;

  /* Handle "generic" ARM flags.  */
  if (e_flags & EF_ARM_RELEXEC)
    {
      FUNC1 (buf, ", relocatable executable");
      e_flags &= ~ EF_ARM_RELEXEC;
    }

  if (e_flags & EF_ARM_HASENTRY)
    {
      FUNC1 (buf, ", has entry point");
      e_flags &= ~ EF_ARM_HASENTRY;
    }

  /* Now handle EABI specific flags.  */
  switch (eabi)
    {
    default:
      FUNC1 (buf, ", <unrecognized EABI>");
      if (e_flags)
	unknown = 1;
      break;

    case EF_ARM_EABI_VER1:
      FUNC1 (buf, ", Version1 EABI");
      while (e_flags)
	{
	  unsigned flag;

	  /* Process flags one bit at a time.  */
	  flag = e_flags & - e_flags;
	  e_flags &= ~ flag;

	  switch (flag)
	    {
	    case EF_ARM_SYMSARESORTED: /* Conflicts with EF_ARM_INTERWORK.  */
	      FUNC1 (buf, ", sorted symbol tables");
	      break;

	    default:
	      unknown = 1;
	      break;
	    }
	}
      break;

    case EF_ARM_EABI_VER2:
      FUNC1 (buf, ", Version2 EABI");
      while (e_flags)
	{
	  unsigned flag;

	  /* Process flags one bit at a time.  */
	  flag = e_flags & - e_flags;
	  e_flags &= ~ flag;

	  switch (flag)
	    {
	    case EF_ARM_SYMSARESORTED: /* Conflicts with EF_ARM_INTERWORK.  */
	      FUNC1 (buf, ", sorted symbol tables");
	      break;

	    case EF_ARM_DYNSYMSUSESEGIDX:
	      FUNC1 (buf, ", dynamic symbols use segment index");
	      break;

	    case EF_ARM_MAPSYMSFIRST:
	      FUNC1 (buf, ", mapping symbols precede others");
	      break;

	    default:
	      unknown = 1;
	      break;
	    }
	}
      break;

    case EF_ARM_EABI_VER3:
      FUNC1 (buf, ", Version3 EABI");
      break;

    case EF_ARM_EABI_VER4:
      FUNC1 (buf, ", Version4 EABI");
      goto eabi;

    case EF_ARM_EABI_VER5:
      FUNC1 (buf, ", Version5 EABI");
    eabi:
      while (e_flags)
	{
	  unsigned flag;

	  /* Process flags one bit at a time.  */
	  flag = e_flags & - e_flags;
	  e_flags &= ~ flag;

	  switch (flag)
	    {
	    case EF_ARM_BE8:
	      FUNC1 (buf, ", BE8");
	      break;

	    case EF_ARM_LE8:
	      FUNC1 (buf, ", LE8");
	      break;

	    default:
	      unknown = 1;
	      break;
	    }
	}
      break;

    case EF_ARM_EABI_UNKNOWN:
      FUNC1 (buf, ", GNU EABI");
      while (e_flags)
	{
	  unsigned flag;

	  /* Process flags one bit at a time.  */
	  flag = e_flags & - e_flags;
	  e_flags &= ~ flag;

	  switch (flag)
	    {
	    case EF_ARM_INTERWORK:
	      FUNC1 (buf, ", interworking enabled");
	      break;

	    case EF_ARM_APCS_26:
	      FUNC1 (buf, ", uses APCS/26");
	      break;

	    case EF_ARM_APCS_FLOAT:
	      FUNC1 (buf, ", uses APCS/float");
	      break;

	    case EF_ARM_PIC:
	      FUNC1 (buf, ", position independent");
	      break;

	    case EF_ARM_ALIGN8:
	      FUNC1 (buf, ", 8 bit structure alignment");
	      break;

	    case EF_ARM_NEW_ABI:
	      FUNC1 (buf, ", uses new ABI");
	      break;

	    case EF_ARM_OLD_ABI:
	      FUNC1 (buf, ", uses old ABI");
	      break;

	    case EF_ARM_SOFT_FLOAT:
	      FUNC1 (buf, ", software FP");
	      break;

	    case EF_ARM_VFP_FLOAT:
	      FUNC1 (buf, ", VFP");
	      break;

	    case EF_ARM_MAVERICK_FLOAT:
	      FUNC1 (buf, ", Maverick FP");
	      break;

	    default:
	      unknown = 1;
	      break;
	    }
	}
    }

  if (unknown)
    FUNC1 (buf,", <unknown>");
}