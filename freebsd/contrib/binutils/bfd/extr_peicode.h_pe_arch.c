
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum arch_type { ____Placeholder_arch_type } arch_type ;


 int arch_type_i386 ;
 int arch_type_unknown ;
 int arch_type_x86_64 ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static enum arch_type
pe_arch (const char *arch)
{
  if (strcmp (arch, "i386") == 0 || strcmp (arch, "ia32") == 0)
    return arch_type_i386;

  if (strcmp (arch, "x86_64") == 0 || strcmp (arch, "x86-64") == 0)
    return arch_type_x86_64;

  return arch_type_unknown;
}
