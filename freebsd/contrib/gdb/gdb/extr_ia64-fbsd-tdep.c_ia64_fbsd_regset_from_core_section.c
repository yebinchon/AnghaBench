
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct regset const fpregset ;
 struct regset const gregset ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static const struct regset *
ia64_fbsd_regset_from_core_section (struct gdbarch *gdbarch,
        const char *sect_name, size_t sect_size)
{
  if (strcmp (sect_name, ".reg") == 0)
    return (&gregset);
  if (strcmp (sect_name, ".reg2") == 0)
    return (&fpregset);
  return (((void*)0));
}
