
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct elf_strtab_hash {int dummy; } ;
struct TYPE_4__ {char* string; } ;
struct TYPE_5__ {TYPE_1__ root; int type; } ;
struct elf_link_hash_entry {int dynindx; int forced_local; scalar_t__ dynstr_index; TYPE_2__ root; int other; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_6__ {int dynsymcount; struct elf_strtab_hash* dynstr; int is_relocatable_executable; } ;


 int ELF_ST_VISIBILITY (int ) ;
 char ELF_VER_CHR ;
 int FALSE ;


 int TRUE ;
 scalar_t__ _bfd_elf_strtab_add (struct elf_strtab_hash*,char const*,int ) ;
 struct elf_strtab_hash* _bfd_elf_strtab_init () ;
 int bfd_link_hash_undefined ;
 int bfd_link_hash_undefweak ;
 TYPE_3__* elf_hash_table (struct bfd_link_info*) ;
 char* strchr (char const*,char) ;

bfd_boolean
bfd_elf_link_record_dynamic_symbol (struct bfd_link_info *info,
        struct elf_link_hash_entry *h)
{
  if (h->dynindx == -1)
    {
      struct elf_strtab_hash *dynstr;
      char *p;
      const char *name;
      bfd_size_type indx;





      switch (ELF_ST_VISIBILITY (h->other))
 {
 case 128:
 case 129:
   if (h->root.type != bfd_link_hash_undefined
       && h->root.type != bfd_link_hash_undefweak)
     {
       h->forced_local = 1;
       if (!elf_hash_table (info)->is_relocatable_executable)
  return TRUE;
     }

 default:
   break;
 }

      h->dynindx = elf_hash_table (info)->dynsymcount;
      ++elf_hash_table (info)->dynsymcount;

      dynstr = elf_hash_table (info)->dynstr;
      if (dynstr == ((void*)0))
 {

   elf_hash_table (info)->dynstr = dynstr = _bfd_elf_strtab_init ();
   if (dynstr == ((void*)0))
     return FALSE;
 }



      name = h->root.root.string;
      p = strchr (name, ELF_VER_CHR);
      if (p != ((void*)0))





 *p = 0;

      indx = _bfd_elf_strtab_add (dynstr, name, p != ((void*)0));

      if (p != ((void*)0))
 *p = ELF_VER_CHR;

      if (indx == (bfd_size_type) -1)
 return FALSE;
      h->dynstr_index = indx;
    }

  return TRUE;
}
