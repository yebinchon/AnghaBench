
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* string; } ;
struct TYPE_10__ {TYPE_1__ root; } ;
struct TYPE_11__ {TYPE_2__ root; } ;
struct ppc_link_hash_entry {TYPE_3__ elf; } ;
typedef int bfd_size_type ;
struct TYPE_12__ {int id; } ;
typedef TYPE_4__ asection ;
struct TYPE_13__ {int r_addend; int r_info; } ;
typedef TYPE_5__ Elf_Internal_Rela ;


 int BFD_ASSERT (int) ;
 scalar_t__ ELF64_R_SYM (int ) ;
 char* bfd_malloc (int) ;
 int sprintf (char*,char*,int,...) ;
 int strlen (char*) ;

__attribute__((used)) static char *
ppc_stub_name (const asection *input_section,
        const asection *sym_sec,
        const struct ppc_link_hash_entry *h,
        const Elf_Internal_Rela *rel)
{
  char *stub_name;
  bfd_size_type len;




  BFD_ASSERT (((int) rel->r_addend & 0xffffffff) == rel->r_addend);

  if (h)
    {
      len = 8 + 1 + strlen (h->elf.root.root.string) + 1 + 8 + 1;
      stub_name = bfd_malloc (len);
      if (stub_name == ((void*)0))
 return stub_name;

      sprintf (stub_name, "%08x.%s+%x",
        input_section->id & 0xffffffff,
        h->elf.root.root.string,
        (int) rel->r_addend & 0xffffffff);
    }
  else
    {
      len = 8 + 1 + 8 + 1 + 8 + 1 + 8 + 1;
      stub_name = bfd_malloc (len);
      if (stub_name == ((void*)0))
 return stub_name;

      sprintf (stub_name, "%08x.%x:%x+%x",
        input_section->id & 0xffffffff,
        sym_sec->id & 0xffffffff,
        (int) ELF64_R_SYM (rel->r_info) & 0xffffffff,
        (int) rel->r_addend & 0xffffffff);
    }
  if (stub_name[len - 2] == '+' && stub_name[len - 1] == '0')
    stub_name[len - 2] = 0;
  return stub_name;
}
