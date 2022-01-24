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
typedef  int /*<<< orphan*/  CGEN_INSN ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC1 (const CGEN_INSN *insn)
{
  unsigned mask = FUNC0 (insn);
  int bits = 0;
  int m;
  for (m = 1; m != 0; m <<= 1)
    {
      if (mask & m)
	++bits;
    }
  return bits;
}