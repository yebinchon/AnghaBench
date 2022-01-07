
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_9__ {scalar_t__ value; int flags; TYPE_2__* section; int name; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_10__ {int name; struct TYPE_10__* output_section; } ;
typedef TYPE_2__ asection ;


 int BSF_LOCAL ;
 int SEC_ALLOC ;
 int SEC_KEEP ;
 int SEC_LOAD ;
 TYPE_1__* bfd_make_empty_symbol (int *) ;
 TYPE_2__* bfd_make_section_old_way (int *,char const*) ;
 int bfd_set_section_alignment (int *,TYPE_2__*,int) ;
 int bfd_set_section_flags (int *,TYPE_2__*,int) ;
 int symptr ;
 TYPE_1__** symtab ;

__attribute__((used)) static asection *
quick_section (bfd *abfd, const char *name, int flags, int align)
{
  asection *sec;
  asymbol *sym;

  sec = bfd_make_section_old_way (abfd, name);
  bfd_set_section_flags (abfd, sec, flags | SEC_ALLOC | SEC_LOAD | SEC_KEEP);
  bfd_set_section_alignment (abfd, sec, align);

  sec->output_section = sec;

  sym = bfd_make_empty_symbol (abfd);
  symtab[symptr++] = sym;
  sym->name = sec->name;
  sym->section = sec;
  sym->flags = BSF_LOCAL;
  sym->value = 0;

  return sec;
}
