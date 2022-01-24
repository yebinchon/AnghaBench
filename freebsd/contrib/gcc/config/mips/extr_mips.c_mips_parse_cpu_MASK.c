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
struct mips_cpu_info {scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ ABI_NEEDS_32BIT_REGS ; 
 scalar_t__ ABI_NEEDS_64BIT_REGS ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ TARGET_64BIT ; 
 struct mips_cpu_info const* FUNC1 (int) ; 
 struct mips_cpu_info* mips_cpu_info_table ; 
 scalar_t__ FUNC2 (scalar_t__,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const struct mips_cpu_info *
FUNC5 (const char *cpu_string)
{
  const struct mips_cpu_info *p;
  const char *s;

  /* In the past, we allowed upper-case CPU names, but it doesn't
     work well with the multilib machinery.  */
  for (s = cpu_string; *s != 0; s++)
    if (FUNC0 (*s))
      {
	FUNC4 (0, "the cpu name must be lower case");
	break;
      }

  /* 'from-abi' selects the most compatible architecture for the given
     ABI: MIPS I for 32-bit ABIs and MIPS III for 64-bit ABIs.  For the
     EABIs, we have to decide whether we're using the 32-bit or 64-bit
     version.  Look first at the -mgp options, if given, otherwise base
     the choice on MASK_64BIT in TARGET_DEFAULT.  */
  if (FUNC3 (cpu_string, "from-abi") == 0)
    return FUNC1 (ABI_NEEDS_32BIT_REGS ? 1
				   : ABI_NEEDS_64BIT_REGS ? 3
				   : (TARGET_64BIT ? 3 : 1));

  /* 'default' has traditionally been a no-op.  Probably not very useful.  */
  if (FUNC3 (cpu_string, "default") == 0)
    return 0;

  for (p = mips_cpu_info_table; p->name != 0; p++)
    if (FUNC2 (p->name, cpu_string))
      return p;

  return 0;
}