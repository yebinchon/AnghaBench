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
typedef  enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;

/* Variables and functions */
 int PPC_OPCODE_ANY ; 
 int PPC_OPCODE_COMMON ; 
 int PPC_OPCODE_POWER ; 
 int PPC_OPCODE_PPC ; 
 char* TARGET_CPU ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int bfd_arch_powerpc ; 
 int bfd_arch_rs6000 ; 
 int bfd_arch_unknown ; 
 int ppc_cpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

enum bfd_architecture
FUNC5 (void)
{
  const char *default_cpu = TARGET_CPU;
  FUNC2 ();

  if ((ppc_cpu & PPC_OPCODE_PPC) != 0)
    return bfd_arch_powerpc;
  else if ((ppc_cpu & PPC_OPCODE_POWER) != 0)
    return bfd_arch_rs6000;
  else if ((ppc_cpu & (PPC_OPCODE_COMMON | PPC_OPCODE_ANY)) != 0)
    {
      if (FUNC3 (default_cpu, "rs6000") == 0)
	return bfd_arch_rs6000;
      else if (FUNC4 (default_cpu, "powerpc", 7) == 0)
	return bfd_arch_powerpc;
    }

  FUNC1 (FUNC0("Neither Power nor PowerPC opcodes were selected."));
  return bfd_arch_unknown;
}