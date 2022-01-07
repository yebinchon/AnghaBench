
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct hppa_unw_aux_info {int nsyms; char* symtab; int strtab_size; scalar_t__ table_len; int * strtab; int * table; } ;
typedef int aux ;
struct TYPE_9__ {unsigned long e_shnum; } ;
struct TYPE_8__ {scalar_t__ sh_type; int sh_size; int sh_entsize; scalar_t__ sh_offset; int sh_link; } ;
typedef int FILE ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 char* GET_ELF_SYMBOLS (int *,TYPE_1__*) ;
 TYPE_1__* SECTION_HEADER (int ) ;
 unsigned long SECTION_HEADER_INDEX (int ) ;
 char* SECTION_NAME (TYPE_1__*) ;
 scalar_t__ SHT_SYMTAB ;
 char* _ (char*) ;
 int dump_hppa_unwind (struct hppa_unw_aux_info*) ;
 int eh_addr_size ;
 TYPE_4__ elf_header ;
 int free (char*) ;
 int * get_data (int *,int *,scalar_t__,int,int,char*) ;
 int memset (struct hppa_unw_aux_info*,int ,int) ;
 int printf (char*,...) ;
 TYPE_1__* section_headers ;
 int slurp_hppa_unwind_table (int *,struct hppa_unw_aux_info*,TYPE_1__*) ;
 scalar_t__ streq (char*,char*) ;
 int * string_table ;

__attribute__((used)) static int
hppa_process_unwind (FILE *file)
{
  struct hppa_unw_aux_info aux;
  Elf_Internal_Shdr *unwsec = ((void*)0);
  Elf_Internal_Shdr *strsec;
  Elf_Internal_Shdr *sec;
  unsigned long i;

  memset (& aux, 0, sizeof (aux));

  if (string_table == ((void*)0))
    return 1;

  for (i = 0, sec = section_headers; i < elf_header.e_shnum; ++i, ++sec)
    {
      if (sec->sh_type == SHT_SYMTAB
   && SECTION_HEADER_INDEX (sec->sh_link) < elf_header.e_shnum)
 {
   aux.nsyms = sec->sh_size / sec->sh_entsize;
   aux.symtab = GET_ELF_SYMBOLS (file, sec);

   strsec = SECTION_HEADER (sec->sh_link);
   aux.strtab = get_data (((void*)0), file, strsec->sh_offset,
     1, strsec->sh_size, _("string table"));
   aux.strtab_size = aux.strtab != ((void*)0) ? strsec->sh_size : 0;
 }
      else if (streq (SECTION_NAME (sec), ".PARISC.unwind"))
 unwsec = sec;
    }

  if (!unwsec)
    printf (_("\nThere are no unwind sections in this file.\n"));

  for (i = 0, sec = section_headers; i < elf_header.e_shnum; ++i, ++sec)
    {
      if (streq (SECTION_NAME (sec), ".PARISC.unwind"))
 {
   printf (_("\nUnwind section "));
   printf (_("'%s'"), SECTION_NAME (sec));

   printf (_(" at offset 0x%lx contains %lu entries:\n"),
    (unsigned long) sec->sh_offset,
    (unsigned long) (sec->sh_size / (2 * eh_addr_size + 8)));

          slurp_hppa_unwind_table (file, &aux, sec);
   if (aux.table_len > 0)
     dump_hppa_unwind (&aux);

   if (aux.table)
     free ((char *) aux.table);
   aux.table = ((void*)0);
 }
    }

  if (aux.symtab)
    free (aux.symtab);
  if (aux.strtab)
    free ((char *) aux.strtab);

  return 1;
}
