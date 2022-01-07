
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_24__ {int flags; TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_23__ {char* name; } ;


 int FALSE ;
 int HAS_RELOC ;
 int TRUE ;
 char* _ (char*) ;
 int adjust_addresses ;
 scalar_t__ adjust_section_vma ;
 int bfd_demangle ;
 scalar_t__ bfd_get_dynamic_symtab_upper_bound (TYPE_2__*) ;
 char* bfd_get_filename (TYPE_2__*) ;
 scalar_t__ bfd_get_synthetic_symtab (TYPE_2__*,scalar_t__,int *,scalar_t__,int *,int **) ;
 int bfd_map_over_sections (TYPE_2__*,int ,int*) ;
 scalar_t__ disassemble ;
 int disassemble_data (TYPE_2__*) ;
 scalar_t__ dump_ar_hdrs ;
 int dump_bfd_header (TYPE_2__*) ;
 int dump_bfd_private_header (TYPE_2__*) ;
 int dump_data (TYPE_2__*) ;
 scalar_t__ dump_debugging ;
 scalar_t__ dump_debugging_tags ;
 int dump_dwarf (TYPE_2__*) ;
 scalar_t__ dump_dwarf_section_info ;
 scalar_t__ dump_dynamic_reloc_info ;
 int dump_dynamic_relocs (TYPE_2__*) ;
 scalar_t__ dump_dynamic_symtab ;
 scalar_t__ dump_file_header ;
 int dump_headers (TYPE_2__*) ;
 scalar_t__ dump_private_headers ;
 scalar_t__ dump_reloc_info ;
 int dump_relocs (TYPE_2__*) ;
 scalar_t__ dump_section_contents ;
 scalar_t__ dump_section_headers ;
 scalar_t__ dump_stab_section_info ;
 int dump_stabs (TYPE_2__*) ;
 int dump_symbols (TYPE_2__*,int ) ;
 scalar_t__ dump_symtab ;
 scalar_t__ dynsymcount ;
 int * dynsyms ;
 int exit_status ;
 int free (int *) ;
 int non_fatal (char*,char*) ;
 int print_arelt_descr (int ,TYPE_2__*,int ) ;
 int print_debugging_info (int ,void*,TYPE_2__*,int *,int ,int ) ;
 int printf (char*,char*,char*) ;
 int putchar (char) ;
 void* read_debugging_info (TYPE_2__*,int *,scalar_t__) ;
 int * slurp_dynamic_symtab (TYPE_2__*) ;
 int * slurp_symtab (TYPE_2__*) ;
 int stdout ;
 scalar_t__ symcount ;
 int * syms ;
 scalar_t__ synthcount ;
 int * synthsyms ;

__attribute__((used)) static void
dump_bfd (bfd *abfd)
{



  if (adjust_section_vma != 0)
    {
      bfd_boolean has_reloc = (abfd->flags & HAS_RELOC);
      bfd_map_over_sections (abfd, adjust_addresses, &has_reloc);
    }

  if (! dump_debugging_tags)
    printf (_("\n%s:     file format %s\n"), bfd_get_filename (abfd),
     abfd->xvec->name);
  if (dump_ar_hdrs)
    print_arelt_descr (stdout, abfd, TRUE);
  if (dump_file_header)
    dump_bfd_header (abfd);
  if (dump_private_headers)
    dump_bfd_private_header (abfd);
  if (! dump_debugging_tags)
    putchar ('\n');
  if (dump_section_headers)
    dump_headers (abfd);

  if (dump_symtab
      || dump_reloc_info
      || disassemble
      || dump_debugging
      || dump_dwarf_section_info)
    syms = slurp_symtab (abfd);
  if (dump_dynamic_symtab || dump_dynamic_reloc_info
      || (disassemble && bfd_get_dynamic_symtab_upper_bound (abfd) > 0))
    dynsyms = slurp_dynamic_symtab (abfd);
  if (disassemble)
    {
      synthcount = bfd_get_synthetic_symtab (abfd, symcount, syms,
          dynsymcount, dynsyms, &synthsyms);
      if (synthcount < 0)
 synthcount = 0;
    }

  if (dump_symtab)
    dump_symbols (abfd, FALSE);
  if (dump_dynamic_symtab)
    dump_symbols (abfd, TRUE);
  if (dump_dwarf_section_info)
    dump_dwarf (abfd);
  if (dump_stab_section_info)
    dump_stabs (abfd);
  if (dump_reloc_info && ! disassemble)
    dump_relocs (abfd);
  if (dump_dynamic_reloc_info && ! disassemble)
    dump_dynamic_relocs (abfd);
  if (dump_section_contents)
    dump_data (abfd);
  if (disassemble)
    disassemble_data (abfd);

  if (dump_debugging)
    {
      void *dhandle;

      dhandle = read_debugging_info (abfd, syms, symcount);
      if (dhandle != ((void*)0))
 {
   if (!print_debugging_info (stdout, dhandle, abfd, syms,
         bfd_demangle,
         dump_debugging_tags ? TRUE : FALSE))
     {
       non_fatal (_("%s: printing debugging information failed"),
    bfd_get_filename (abfd));
       exit_status = 1;
     }
 }
    }

  if (syms)
    {
      free (syms);
      syms = ((void*)0);
    }

  if (dynsyms)
    {
      free (dynsyms);
      dynsyms = ((void*)0);
    }

  if (synthsyms)
    {
      free (synthsyms);
      synthsyms = ((void*)0);
    }

  symcount = 0;
  dynsymcount = 0;
  synthcount = 0;
}
