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
typedef  enum mips_abi { ____Placeholder_mips_abi } mips_abi ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int MIPS_ABI_EABI32 ; 
 int MIPS_ABI_EABI64 ; 
 int MIPS_ABI_N32 ; 
 int MIPS_ABI_N64 ; 
 int MIPS_ABI_O32 ; 
 int MIPS_ABI_O64 ; 
 int MIPS_ABI_UNKNOWN ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd, asection *sect, void *obj)
{
  enum mips_abi *abip = (enum mips_abi *) obj;
  const char *name = FUNC0 (abfd, sect);

  if (*abip != MIPS_ABI_UNKNOWN)
    return;

  if (FUNC2 (name, ".mdebug.", 8) != 0)
    return;

  if (FUNC1 (name, ".mdebug.abi32") == 0)
    *abip = MIPS_ABI_O32;
  else if (FUNC1 (name, ".mdebug.abiN32") == 0)
    *abip = MIPS_ABI_N32;
  else if (FUNC1 (name, ".mdebug.abi64") == 0)
    *abip = MIPS_ABI_N64;
  else if (FUNC1 (name, ".mdebug.abiO64") == 0)
    *abip = MIPS_ABI_O64;
  else if (FUNC1 (name, ".mdebug.eabi32") == 0)
    *abip = MIPS_ABI_EABI32;
  else if (FUNC1 (name, ".mdebug.eabi64") == 0)
    *abip = MIPS_ABI_EABI64;
  else
    FUNC3 ("unsupported ABI %s.", name + 8);
}