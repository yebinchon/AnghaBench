
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_arch_choice {unsigned long bfd_mach; scalar_t__ bfd_mach_valid; } ;


 unsigned int ARRAY_SIZE (struct mips_arch_choice*) ;
 struct mips_arch_choice* mips_arch_choices ;

__attribute__((used)) static const struct mips_arch_choice *
choose_arch_by_number (unsigned long mach)
{
  static unsigned long hint_bfd_mach;
  static const struct mips_arch_choice *hint_arch_choice;
  const struct mips_arch_choice *c;
  unsigned int i;



  if (hint_bfd_mach == mach
      && hint_arch_choice != ((void*)0)
      && hint_arch_choice->bfd_mach == hint_bfd_mach)
    return hint_arch_choice;

  for (i = 0, c = ((void*)0); i < ARRAY_SIZE (mips_arch_choices) && c == ((void*)0); i++)
    {
      if (mips_arch_choices[i].bfd_mach_valid
   && mips_arch_choices[i].bfd_mach == mach)
 {
   c = &mips_arch_choices[i];
   hint_bfd_mach = mach;
   hint_arch_choice = c;
 }
    }
  return c;
}
