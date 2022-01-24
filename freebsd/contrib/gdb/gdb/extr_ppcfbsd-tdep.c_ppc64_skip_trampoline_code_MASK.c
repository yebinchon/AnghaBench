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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int PPC64_STANDARD_LINKAGE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  ppc64_standard_linkage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (CORE_ADDR pc)
{
  unsigned int ppc64_standard_linkage_insn[PPC64_STANDARD_LINKAGE_LEN];

  if (FUNC0 (pc, ppc64_standard_linkage,
                           ppc64_standard_linkage_insn))
    return FUNC1 (pc, ppc64_standard_linkage_insn);
  else
    return 0;
}