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
struct mips_arch_choice {int /*<<< orphan*/  hwr_names; int /*<<< orphan*/  cp0sel_names_len; int /*<<< orphan*/  cp0sel_names; int /*<<< orphan*/  cp0_names; } ;
struct mips_abi_choice {int /*<<< orphan*/  fpr_names; int /*<<< orphan*/  gpr_names; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 struct mips_abi_choice* FUNC1 (char const*,unsigned int) ; 
 struct mips_arch_choice* FUNC2 (char const*,unsigned int) ; 
 int /*<<< orphan*/  mips_cp0_names ; 
 int /*<<< orphan*/  mips_cp0sel_names ; 
 int /*<<< orphan*/  mips_cp0sel_names_len ; 
 int /*<<< orphan*/  mips_fpr_names ; 
 int /*<<< orphan*/  mips_gpr_names ; 
 int /*<<< orphan*/  mips_hwr_names ; 
 int no_aliases ; 
 int octeon_use_unalign ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 unsigned int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char const*,unsigned int) ; 

__attribute__((used)) static void
FUNC6 (const char *option, unsigned int len)
{
  unsigned int i, optionlen, vallen;
  const char *val;
  const struct mips_abi_choice *chosen_abi;
  const struct mips_arch_choice *chosen_arch;

  if (FUNC3 ("octeon-useun", option) == 0)
    {
      octeon_use_unalign = 1;
      return;
    }
  if (FUNC3 ("no-octeon-useun", option) == 0)
    {
      octeon_use_unalign = 0;
      return;
    }

  /* Try to match options that are simple flags */
  if (FUNC0 (option, "no-aliases"))
    {
      no_aliases = 1;
      return;
    }
  
  /* Look for the = that delimits the end of the option name.  */
  for (i = 0; i < len; i++)
    if (option[i] == '=')
      break;

  if (i == 0)		/* Invalid option: no name before '='.  */
    return;
  if (i == len)		/* Invalid option: no '='.  */
    return;
  if (i == (len - 1))	/* Invalid option: no value after '='.  */
    return;

  optionlen = i;
  val = option + (optionlen + 1);
  vallen = len - (optionlen + 1);

  if (FUNC5 ("gpr-names", option, optionlen) == 0
      && FUNC4 ("gpr-names") == optionlen)
    {
      chosen_abi = FUNC1 (val, vallen);
      if (chosen_abi != NULL)
	mips_gpr_names = chosen_abi->gpr_names;
      return;
    }

  if (FUNC5 ("fpr-names", option, optionlen) == 0
      && FUNC4 ("fpr-names") == optionlen)
    {
      chosen_abi = FUNC1 (val, vallen);
      if (chosen_abi != NULL)
	mips_fpr_names = chosen_abi->fpr_names;
      return;
    }

  if (FUNC5 ("cp0-names", option, optionlen) == 0
      && FUNC4 ("cp0-names") == optionlen)
    {
      chosen_arch = FUNC2 (val, vallen);
      if (chosen_arch != NULL)
	{
	  mips_cp0_names = chosen_arch->cp0_names;
	  mips_cp0sel_names = chosen_arch->cp0sel_names;
	  mips_cp0sel_names_len = chosen_arch->cp0sel_names_len;
	}
      return;
    }

  if (FUNC5 ("hwr-names", option, optionlen) == 0
      && FUNC4 ("hwr-names") == optionlen)
    {
      chosen_arch = FUNC2 (val, vallen);
      if (chosen_arch != NULL)
	mips_hwr_names = chosen_arch->hwr_names;
      return;
    }

  if (FUNC5 ("reg-names", option, optionlen) == 0
      && FUNC4 ("reg-names") == optionlen)
    {
      /* We check both ABI and ARCH here unconditionally, so
	 that "numeric" will do the desirable thing: select
	 numeric register names for all registers.  Other than
	 that, a given name probably won't match both.  */
      chosen_abi = FUNC1 (val, vallen);
      if (chosen_abi != NULL)
	{
	  mips_gpr_names = chosen_abi->gpr_names;
	  mips_fpr_names = chosen_abi->fpr_names;
	}
      chosen_arch = FUNC2 (val, vallen);
      if (chosen_arch != NULL)
	{
	  mips_cp0_names = chosen_arch->cp0_names;
	  mips_cp0sel_names = chosen_arch->cp0sel_names;
	  mips_cp0sel_names_len = chosen_arch->cp0sel_names_len;
	  mips_hwr_names = chosen_arch->hwr_names;
	}
      return;
    }

  /* Invalid option.  */
}