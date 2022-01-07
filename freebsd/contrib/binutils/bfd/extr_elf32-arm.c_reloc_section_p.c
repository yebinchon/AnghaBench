
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf32_arm_link_hash_table {scalar_t__ use_rel; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ asection ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bfd_boolean
reloc_section_p (struct elf32_arm_link_hash_table *htab,
   const char *name, asection *s)
{
  if (htab->use_rel)
    return CONST_STRNEQ (name, ".rel") && strcmp (s->name, name + 4) == 0;
  else
    return CONST_STRNEQ (name, ".rela") && strcmp (s->name, name + 5) == 0;
}
