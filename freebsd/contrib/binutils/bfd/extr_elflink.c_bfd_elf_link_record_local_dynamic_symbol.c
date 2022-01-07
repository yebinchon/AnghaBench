
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct elf_strtab_hash {int dummy; } ;
struct TYPE_9__ {scalar_t__ st_shndx; unsigned long st_name; int st_info; } ;
struct elf_link_local_dynamic_entry {long input_indx; TYPE_5__ isym; int * input_bfd; struct elf_link_local_dynamic_entry* next; } ;
struct elf_link_hash_table {int dynsymcount; struct elf_link_local_dynamic_entry* dynlocal; struct elf_strtab_hash* dynstr; } ;
struct bfd_link_info {int hash; } ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_6__ {int output_section; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int sh_link; } ;
struct TYPE_7__ {TYPE_4__ symtab_hdr; } ;
typedef int Elf_External_Sym_Shndx ;
typedef int Elf64_External_Sym ;


 int ELF_ST_INFO (int ,int ) ;
 int ELF_ST_TYPE (int ) ;
 int FALSE ;
 scalar_t__ SHN_HIRESERVE ;
 scalar_t__ SHN_LORESERVE ;
 scalar_t__ SHN_UNDEF ;
 int STB_LOCAL ;
 unsigned long _bfd_elf_strtab_add (struct elf_strtab_hash*,char*,int ) ;
 struct elf_strtab_hash* _bfd_elf_strtab_init () ;
 struct elf_link_local_dynamic_entry* bfd_alloc (int *,int) ;
 int bfd_elf_get_elf_syms (int *,TYPE_4__*,int,long,TYPE_5__*,char*,int *) ;
 char* bfd_elf_string_from_elf_section (int *,int ,unsigned long) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 int bfd_release (int *,struct elf_link_local_dynamic_entry*) ;
 TYPE_1__* bfd_section_from_elf_index (int *,scalar_t__) ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;
 TYPE_2__* elf_tdata (int *) ;
 int is_elf_hash_table (int ) ;

int
bfd_elf_link_record_local_dynamic_symbol (struct bfd_link_info *info,
       bfd *input_bfd,
       long input_indx)
{
  bfd_size_type amt;
  struct elf_link_local_dynamic_entry *entry;
  struct elf_link_hash_table *eht;
  struct elf_strtab_hash *dynstr;
  unsigned long dynstr_index;
  char *name;
  Elf_External_Sym_Shndx eshndx;
  char esym[sizeof (Elf64_External_Sym)];

  if (! is_elf_hash_table (info->hash))
    return 0;


  for (entry = elf_hash_table (info)->dynlocal; entry ; entry = entry->next)
    if (entry->input_bfd == input_bfd && entry->input_indx == input_indx)
      return 1;

  amt = sizeof (*entry);
  entry = bfd_alloc (input_bfd, amt);
  if (entry == ((void*)0))
    return 0;


  if (!bfd_elf_get_elf_syms (input_bfd, &elf_tdata (input_bfd)->symtab_hdr,
        1, input_indx, &entry->isym, esym, &eshndx))
    {
      bfd_release (input_bfd, entry);
      return 0;
    }

  if (entry->isym.st_shndx != SHN_UNDEF
      && (entry->isym.st_shndx < SHN_LORESERVE
   || entry->isym.st_shndx > SHN_HIRESERVE))
    {
      asection *s;

      s = bfd_section_from_elf_index (input_bfd, entry->isym.st_shndx);
      if (s == ((void*)0) || bfd_is_abs_section (s->output_section))
 {


   bfd_release (input_bfd, entry);
   return 2;
 }
    }

  name = (bfd_elf_string_from_elf_section
   (input_bfd, elf_tdata (input_bfd)->symtab_hdr.sh_link,
    entry->isym.st_name));

  dynstr = elf_hash_table (info)->dynstr;
  if (dynstr == ((void*)0))
    {

      elf_hash_table (info)->dynstr = dynstr = _bfd_elf_strtab_init ();
      if (dynstr == ((void*)0))
 return 0;
    }

  dynstr_index = _bfd_elf_strtab_add (dynstr, name, FALSE);
  if (dynstr_index == (unsigned long) -1)
    return 0;
  entry->isym.st_name = dynstr_index;

  eht = elf_hash_table (info);

  entry->next = eht->dynlocal;
  eht->dynlocal = entry;
  entry->input_bfd = input_bfd;
  entry->input_indx = input_indx;
  eht->dynsymcount++;


  entry->isym.st_info
    = ELF_ST_INFO (STB_LOCAL, ELF_ST_TYPE (entry->isym.st_info));



  return 1;
}
