
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_abi_choice {int name; } ;


 unsigned int ARRAY_SIZE (struct mips_abi_choice*) ;
 struct mips_abi_choice* mips_abi_choices ;
 unsigned int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,unsigned int) ;

__attribute__((used)) static const struct mips_abi_choice *
choose_abi_by_name (const char *name, unsigned int namelen)
{
  const struct mips_abi_choice *c;
  unsigned int i;

  for (i = 0, c = ((void*)0); i < ARRAY_SIZE (mips_abi_choices) && c == ((void*)0); i++)
    if (strncmp (mips_abi_choices[i].name, name, namelen) == 0
 && strlen (mips_abi_choices[i].name) == namelen)
      c = &mips_abi_choices[i];

  return c;
}
