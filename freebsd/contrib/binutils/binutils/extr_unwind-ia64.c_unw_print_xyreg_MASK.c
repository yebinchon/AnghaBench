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

__attribute__((used)) static void
FUNC1 (char *cp, unsigned int x, unsigned int ytreg)
{
  switch ((x << 1) | ((ytreg >> 7) & 1))
    {
    case 0: /* gr */
      FUNC0 (cp, "r%u", (ytreg & 0x1f));
      break;

    case 1: /* fr */
      FUNC0 (cp, "f%u", (ytreg & 0x1f));
      break;

    case 2: /* br */
      FUNC0 (cp, "b%u", (ytreg & 0x1f));
      break;
    }
}