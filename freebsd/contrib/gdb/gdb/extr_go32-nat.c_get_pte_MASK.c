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
 int /*<<< orphan*/  _dos_ds ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC1 (unsigned long pde, int n)
{
  unsigned long pte = 0;

  /* pde & 0x80 tests the 4MB page bit.  We don't support 4MB
     page tables, for now.  */
  if ((pde & 1) && !(pde & 0x80) && n >= 0 && n < 1024)
    {
      pde &= ~0xfff;	/* clear non-address bits */
      pte = FUNC0 (_dos_ds, pde + 4*n);
    }
  return pte;
}