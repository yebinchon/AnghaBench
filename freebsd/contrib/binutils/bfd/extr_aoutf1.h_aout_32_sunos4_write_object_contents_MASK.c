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
struct internal_exec {int dummy; } ;
struct external_exec {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_2__ {int /*<<< orphan*/  exec_hdr_flags; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  M_386 ; 
 int /*<<< orphan*/  M_68010 ; 
 int /*<<< orphan*/  M_68020 ; 
 int /*<<< orphan*/  M_SPARC ; 
 int /*<<< orphan*/  M_SPARCLET ; 
 int /*<<< orphan*/  M_SPARCLITE_LE ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct internal_exec,long) ; 
 int /*<<< orphan*/  FUNC1 (struct internal_exec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct internal_exec,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct internal_exec*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
#define  bfd_arch_i386 135 
#define  bfd_arch_m68k 134 
#define  bfd_arch_sparc 133 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
#define  bfd_mach_m68000 132 
#define  bfd_mach_m68010 131 
#define  bfd_mach_m68020 130 
#define  bfd_mach_sparc_sparclet 129 
#define  bfd_mach_sparc_sparclite_le 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct internal_exec* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (bfd *abfd)
{
  struct external_exec exec_bytes;
  struct internal_exec *execp = FUNC9 (abfd);

  /* Magic number, maestro, please!  */
  switch (FUNC5 (abfd))
    {
    case bfd_arch_m68k:
      switch (FUNC7 (abfd))
	{
	case bfd_mach_m68000:
	  FUNC2 (*execp, M_UNKNOWN);
	  break;
	case bfd_mach_m68010:
	  FUNC2 (*execp, M_68010);
	  break;
	default:
	case bfd_mach_m68020:
	  FUNC2 (*execp, M_68020);
	  break;
	}
      break;
    case bfd_arch_sparc:
      switch (FUNC7 (abfd))
	{
	case bfd_mach_sparc_sparclet:
	  FUNC2 (*execp, M_SPARCLET);
	  break;
	case bfd_mach_sparc_sparclite_le:
	  FUNC2 (*execp, M_SPARCLITE_LE);
	  break;
	default:
	  FUNC2 (*execp, M_SPARC);
	  break;
	}
      break;
    case bfd_arch_i386:
      FUNC2 (*execp, M_386);
      break;
    default:
      FUNC2 (*execp, M_UNKNOWN);
    }

  FUNC8 (abfd);

  FUNC1 (*execp, FUNC4 (abfd)->exec_hdr_flags);

  FUNC0 (*execp, (long)(FUNC6 (abfd) & DYNAMIC));

  FUNC3 (abfd, execp);

  return TRUE;
}