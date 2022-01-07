
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_opcode_arch {scalar_t__ name; } ;
typedef enum sparc_opcode_arch_val { ____Placeholder_sparc_opcode_arch_val } sparc_opcode_arch_val ;


 int SPARC_OPCODE_ARCH_BAD ;
 struct sparc_opcode_arch const* sparc_opcode_archs ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

enum sparc_opcode_arch_val
sparc_opcode_lookup_arch (const char *name)
{
  const struct sparc_opcode_arch *p;

  for (p = &sparc_opcode_archs[0]; p->name; ++p)
    if (strcmp (name, p->name) == 0)
      return (enum sparc_opcode_arch_val) (p - &sparc_opcode_archs[0]);

  return SPARC_OPCODE_ARCH_BAD;
}
