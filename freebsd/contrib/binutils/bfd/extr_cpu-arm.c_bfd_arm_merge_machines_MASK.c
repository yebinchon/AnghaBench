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
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_arch_arm ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int bfd_mach_arm_XScale ; 
 unsigned int bfd_mach_arm_ep9312 ; 
 unsigned int bfd_mach_arm_iWMMXt ; 
 unsigned int bfd_mach_arm_iWMMXt2 ; 
 unsigned int bfd_mach_arm_unknown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bfd_boolean
FUNC5 (bfd *ibfd, bfd *obfd)
{
  unsigned int in  = FUNC2 (ibfd);
  unsigned int out = FUNC2 (obfd);

  /* If the output architecture is unknown, we now have a value to set.  */
  if (out == bfd_mach_arm_unknown)
    FUNC3 (obfd, bfd_arch_arm, in);

  /* If the input architecture is unknown,
     then so must be the output architecture.  */
  else if (in == bfd_mach_arm_unknown)
    /* FIXME: We ought to have some way to
       override this on the command line.  */
    FUNC3 (obfd, bfd_arch_arm, bfd_mach_arm_unknown);

  /* If they are the same then nothing needs to be done.  */
  else if (out == in)
    ;

  /* Otherwise the general principle that a earlier architecture can be
     linked with a later architecture to produce a binary that will execute
     on the later architecture.

     We fail however if we attempt to link a Cirrus EP9312 binary with an
     Intel XScale binary, since these architecture have co-processors which
     will not both be present on the same physical hardware.  */
  else if (in == bfd_mach_arm_ep9312
	   && (out == bfd_mach_arm_XScale
	       || out == bfd_mach_arm_iWMMXt
	       || out == bfd_mach_arm_iWMMXt2))
    {
      FUNC1 (FUNC0("\
ERROR: %B is compiled for the EP9312, whereas %B is compiled for XScale"),
			  ibfd, obfd);
      FUNC4 (bfd_error_wrong_format);
      return FALSE;
    }
  else if (out == bfd_mach_arm_ep9312
	   && (in == bfd_mach_arm_XScale
	       || in == bfd_mach_arm_iWMMXt
	       || in == bfd_mach_arm_iWMMXt2))
    {
      FUNC1 (FUNC0("\
ERROR: %B is compiled for the EP9312, whereas %B is compiled for XScale"),
			  obfd, ibfd);
      FUNC4 (bfd_error_wrong_format);
      return FALSE;
    }
  else if (in > out)
    FUNC3 (obfd, bfd_arch_arm, in);
  /* else
     Nothing to do.  */

  return TRUE;
}