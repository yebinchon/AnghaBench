
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_arch_choice {int hwr_names; int cp0sel_names_len; int cp0sel_names; int cp0_names; } ;
struct mips_abi_choice {int fpr_names; int gpr_names; } ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 struct mips_abi_choice* choose_abi_by_name (char const*,unsigned int) ;
 struct mips_arch_choice* choose_arch_by_name (char const*,unsigned int) ;
 int mips_cp0_names ;
 int mips_cp0sel_names ;
 int mips_cp0sel_names_len ;
 int mips_fpr_names ;
 int mips_gpr_names ;
 int mips_hwr_names ;
 int no_aliases ;
 int octeon_use_unalign ;
 scalar_t__ strcmp (char*,char const*) ;
 unsigned int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,unsigned int) ;

__attribute__((used)) static void
parse_mips_dis_option (const char *option, unsigned int len)
{
  unsigned int i, optionlen, vallen;
  const char *val;
  const struct mips_abi_choice *chosen_abi;
  const struct mips_arch_choice *chosen_arch;

  if (strcmp ("octeon-useun", option) == 0)
    {
      octeon_use_unalign = 1;
      return;
    }
  if (strcmp ("no-octeon-useun", option) == 0)
    {
      octeon_use_unalign = 0;
      return;
    }


  if (CONST_STRNEQ (option, "no-aliases"))
    {
      no_aliases = 1;
      return;
    }


  for (i = 0; i < len; i++)
    if (option[i] == '=')
      break;

  if (i == 0)
    return;
  if (i == len)
    return;
  if (i == (len - 1))
    return;

  optionlen = i;
  val = option + (optionlen + 1);
  vallen = len - (optionlen + 1);

  if (strncmp ("gpr-names", option, optionlen) == 0
      && strlen ("gpr-names") == optionlen)
    {
      chosen_abi = choose_abi_by_name (val, vallen);
      if (chosen_abi != ((void*)0))
 mips_gpr_names = chosen_abi->gpr_names;
      return;
    }

  if (strncmp ("fpr-names", option, optionlen) == 0
      && strlen ("fpr-names") == optionlen)
    {
      chosen_abi = choose_abi_by_name (val, vallen);
      if (chosen_abi != ((void*)0))
 mips_fpr_names = chosen_abi->fpr_names;
      return;
    }

  if (strncmp ("cp0-names", option, optionlen) == 0
      && strlen ("cp0-names") == optionlen)
    {
      chosen_arch = choose_arch_by_name (val, vallen);
      if (chosen_arch != ((void*)0))
 {
   mips_cp0_names = chosen_arch->cp0_names;
   mips_cp0sel_names = chosen_arch->cp0sel_names;
   mips_cp0sel_names_len = chosen_arch->cp0sel_names_len;
 }
      return;
    }

  if (strncmp ("hwr-names", option, optionlen) == 0
      && strlen ("hwr-names") == optionlen)
    {
      chosen_arch = choose_arch_by_name (val, vallen);
      if (chosen_arch != ((void*)0))
 mips_hwr_names = chosen_arch->hwr_names;
      return;
    }

  if (strncmp ("reg-names", option, optionlen) == 0
      && strlen ("reg-names") == optionlen)
    {




      chosen_abi = choose_abi_by_name (val, vallen);
      if (chosen_abi != ((void*)0))
 {
   mips_gpr_names = chosen_abi->gpr_names;
   mips_fpr_names = chosen_abi->fpr_names;
 }
      chosen_arch = choose_arch_by_name (val, vallen);
      if (chosen_arch != ((void*)0))
 {
   mips_cp0_names = chosen_arch->cp0_names;
   mips_cp0sel_names = chosen_arch->cp0sel_names;
   mips_cp0sel_names_len = chosen_arch->cp0sel_names_len;
   mips_hwr_names = chosen_arch->hwr_names;
 }
      return;
    }


}
