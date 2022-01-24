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
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void
FUNC2 (char *cp, unsigned int abreg)
{
  static const char *special_reg[16] =
  {
    "pr", "psp", "@priunat", "rp", "ar.bsp", "ar.bspstore", "ar.rnat",
    "ar.unat", "ar.fpsr", "ar.pfs", "ar.lc",
    "Unknown11", "Unknown12", "Unknown13", "Unknown14", "Unknown15"
  };

  switch ((abreg >> 5) & 0x3)
    {
    case 0: /* gr */
      FUNC0 (cp, "r%u", (abreg & 0x1f));
      break;

    case 1: /* fr */
      FUNC0 (cp, "f%u", (abreg & 0x1f));
      break;

    case 2: /* br */
      FUNC0 (cp, "b%u", (abreg & 0x1f));
      break;

    case 3: /* special */
      FUNC1 (cp, special_reg[abreg & 0xf]);
      break;
    }
}