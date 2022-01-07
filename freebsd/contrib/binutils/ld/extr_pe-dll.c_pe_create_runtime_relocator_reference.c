
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd ;
typedef int asymbol ;
struct TYPE_7__ {unsigned char* contents; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int bfd_arch; int object_target; } ;


 int BFD_RELOC_RVA ;
 int BSF_NO_FLAGS ;
 int SEC_HAS_CONTENTS ;
 int U (char*) ;
 int UNDSEC ;
 int * bfd_create (char*,int *) ;
 int bfd_find_target (int ,int *) ;
 int bfd_make_readable (int *) ;
 int bfd_make_writable (int *) ;
 int bfd_object ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_format (int *,int ) ;
 int bfd_set_section_contents (int *,TYPE_1__*,unsigned char*,int ,int) ;
 int bfd_set_section_size (int *,TYPE_1__*,int) ;
 int bfd_set_symtab (int *,void*,scalar_t__) ;
 TYPE_4__* pe_details ;
 int quick_reloc (int *,int ,int ,int) ;
 TYPE_1__* quick_section (int *,char*,int ,int) ;
 int quick_symbol (int *,char*,int ,char*,int ,int ,int ) ;
 int save_relocs (TYPE_1__*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ symptr ;
 void* symtab ;
 int tmp_seq ;
 void* xmalloc (int) ;

__attribute__((used)) static bfd *
pe_create_runtime_relocator_reference (bfd *parent)
{
  asection *extern_rt_rel;
  unsigned char *extern_rt_rel_d;
  char *oname;
  bfd *abfd;

  oname = xmalloc (20);
  sprintf (oname, "ertr%06d.o", tmp_seq);
  tmp_seq++;

  abfd = bfd_create (oname, parent);
  bfd_find_target (pe_details->object_target, abfd);
  bfd_make_writable (abfd);

  bfd_set_format (abfd, bfd_object);
  bfd_set_arch_mach (abfd, pe_details->bfd_arch, 0);

  symptr = 0;
  symtab = xmalloc (2 * sizeof (asymbol *));
  extern_rt_rel = quick_section (abfd, ".rdata", SEC_HAS_CONTENTS, 2);

  quick_symbol (abfd, "", U ("_pei386_runtime_relocator"), "", UNDSEC,
  BSF_NO_FLAGS, 0);

  bfd_set_section_size (abfd, extern_rt_rel, 4);
  extern_rt_rel_d = xmalloc (4);
  extern_rt_rel->contents = extern_rt_rel_d;

  quick_reloc (abfd, 0, BFD_RELOC_RVA, 1);
  save_relocs (extern_rt_rel);

  bfd_set_symtab (abfd, symtab, symptr);

  bfd_set_section_contents (abfd, extern_rt_rel, extern_rt_rel_d, 0, 4);

  bfd_make_readable (abfd);
  return abfd;
}
