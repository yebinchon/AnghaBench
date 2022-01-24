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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
#define  bfd_arch_i960 129 
#define  bfd_arch_m68k 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1 (bfd *abfd, int r)
{
  switch (FUNC0 (abfd))
    {
    case bfd_arch_m68k:
      /* For some reason stabs add 2 to the floating point register
         numbers.  */
      if (r >= 18)
	r -= 2;
      break;

    case bfd_arch_i960:
      /* Stabs uses 0 to 15 for r0 to r15, 16 to 31 for g0 to g15, and
         32 to 35 for fp0 to fp3.  */
      ++r;
      break;

    default:
      break;
    }

  return r;
}