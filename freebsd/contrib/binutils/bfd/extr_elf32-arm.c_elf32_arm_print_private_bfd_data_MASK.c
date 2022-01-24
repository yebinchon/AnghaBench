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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {unsigned long e_flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long EF_ARM_APCS_26 ; 
 unsigned long EF_ARM_APCS_FLOAT ; 
 unsigned long EF_ARM_BE8 ; 
 unsigned long EF_ARM_DYNSYMSUSESEGIDX ; 
 unsigned long EF_ARM_EABIMASK ; 
#define  EF_ARM_EABI_UNKNOWN 133 
#define  EF_ARM_EABI_VER1 132 
#define  EF_ARM_EABI_VER2 131 
#define  EF_ARM_EABI_VER3 130 
#define  EF_ARM_EABI_VER4 129 
#define  EF_ARM_EABI_VER5 128 
 int FUNC1 (unsigned long) ; 
 unsigned long EF_ARM_HASENTRY ; 
 unsigned long EF_ARM_INTERWORK ; 
 unsigned long EF_ARM_LE8 ; 
 unsigned long EF_ARM_MAPSYMSFIRST ; 
 unsigned long EF_ARM_MAVERICK_FLOAT ; 
 unsigned long EF_ARM_NEW_ABI ; 
 unsigned long EF_ARM_OLD_ABI ; 
 unsigned long EF_ARM_PIC ; 
 unsigned long EF_ARM_RELEXEC ; 
 unsigned long EF_ARM_SOFT_FLOAT ; 
 unsigned long EF_ARM_SYMSARESORTED ; 
 unsigned long EF_ARM_VFP_FLOAT ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *abfd, void * ptr)
{
  FILE * file = (FILE *) ptr;
  unsigned long flags;

  FUNC0 (abfd != NULL && ptr != NULL);

  /* Print normal ELF private data.  */
  FUNC3 (abfd, ptr);

  flags = FUNC4 (abfd)->e_flags;
  /* Ignore init flag - it may not be set, despite the flags field
     containing valid data.  */

  /* xgettext:c-format */
  FUNC5 (file, FUNC2("private flags = %lx:"), FUNC4 (abfd)->e_flags);

  switch (FUNC1 (flags))
    {
    case EF_ARM_EABI_UNKNOWN:
      /* The following flag bits are GNU extensions and not part of the
	 official ARM ELF extended ABI.  Hence they are only decoded if
	 the EABI version is not set.  */
      if (flags & EF_ARM_INTERWORK)
	FUNC5 (file, FUNC2(" [interworking enabled]"));

      if (flags & EF_ARM_APCS_26)
	FUNC5 (file, " [APCS-26]");
      else
	FUNC5 (file, " [APCS-32]");

      if (flags & EF_ARM_VFP_FLOAT)
	FUNC5 (file, FUNC2(" [VFP float format]"));
      else if (flags & EF_ARM_MAVERICK_FLOAT)
	FUNC5 (file, FUNC2(" [Maverick float format]"));
      else
	FUNC5 (file, FUNC2(" [FPA float format]"));

      if (flags & EF_ARM_APCS_FLOAT)
	FUNC5 (file, FUNC2(" [floats passed in float registers]"));

      if (flags & EF_ARM_PIC)
	FUNC5 (file, FUNC2(" [position independent]"));

      if (flags & EF_ARM_NEW_ABI)
	FUNC5 (file, FUNC2(" [new ABI]"));

      if (flags & EF_ARM_OLD_ABI)
	FUNC5 (file, FUNC2(" [old ABI]"));

      if (flags & EF_ARM_SOFT_FLOAT)
	FUNC5 (file, FUNC2(" [software FP]"));

      flags &= ~(EF_ARM_INTERWORK | EF_ARM_APCS_26 | EF_ARM_APCS_FLOAT
		 | EF_ARM_PIC | EF_ARM_NEW_ABI | EF_ARM_OLD_ABI
		 | EF_ARM_SOFT_FLOAT | EF_ARM_VFP_FLOAT
		 | EF_ARM_MAVERICK_FLOAT);
      break;

    case EF_ARM_EABI_VER1:
      FUNC5 (file, FUNC2(" [Version1 EABI]"));

      if (flags & EF_ARM_SYMSARESORTED)
	FUNC5 (file, FUNC2(" [sorted symbol table]"));
      else
	FUNC5 (file, FUNC2(" [unsorted symbol table]"));

      flags &= ~ EF_ARM_SYMSARESORTED;
      break;

    case EF_ARM_EABI_VER2:
      FUNC5 (file, FUNC2(" [Version2 EABI]"));

      if (flags & EF_ARM_SYMSARESORTED)
	FUNC5 (file, FUNC2(" [sorted symbol table]"));
      else
	FUNC5 (file, FUNC2(" [unsorted symbol table]"));

      if (flags & EF_ARM_DYNSYMSUSESEGIDX)
	FUNC5 (file, FUNC2(" [dynamic symbols use segment index]"));

      if (flags & EF_ARM_MAPSYMSFIRST)
	FUNC5 (file, FUNC2(" [mapping symbols precede others]"));

      flags &= ~(EF_ARM_SYMSARESORTED | EF_ARM_DYNSYMSUSESEGIDX
		 | EF_ARM_MAPSYMSFIRST);
      break;

    case EF_ARM_EABI_VER3:
      FUNC5 (file, FUNC2(" [Version3 EABI]"));
      break;

    case EF_ARM_EABI_VER4:
      FUNC5 (file, FUNC2(" [Version4 EABI]"));
      goto eabi;

    case EF_ARM_EABI_VER5:
      FUNC5 (file, FUNC2(" [Version5 EABI]"));
    eabi:
      if (flags & EF_ARM_BE8)
	FUNC5 (file, FUNC2(" [BE8]"));

      if (flags & EF_ARM_LE8)
	FUNC5 (file, FUNC2(" [LE8]"));

      flags &= ~(EF_ARM_LE8 | EF_ARM_BE8);
      break;

    default:
      FUNC5 (file, FUNC2(" <EABI version unrecognised>"));
      break;
    }

  flags &= ~ EF_ARM_EABIMASK;

  if (flags & EF_ARM_RELEXEC)
    FUNC5 (file, FUNC2(" [relocatable executable]"));

  if (flags & EF_ARM_HASENTRY)
    FUNC5 (file, FUNC2(" [has entry point]"));

  flags &= ~ (EF_ARM_RELEXEC | EF_ARM_HASENTRY);

  if (flags)
    FUNC5 (file, FUNC2("<Unrecognised flag bits set>"));

  FUNC6 ('\n', file);

  return TRUE;
}