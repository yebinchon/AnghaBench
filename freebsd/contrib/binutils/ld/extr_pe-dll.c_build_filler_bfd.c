
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * the_bfd; } ;
typedef TYPE_1__ lang_input_statement_type ;


 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_KEEP ;
 int SEC_LOAD ;
 int * bfd_create (char*,int ) ;
 int bfd_get_arch (int ) ;
 int bfd_get_mach (int ) ;
 int * bfd_make_section_old_way (int *,char*) ;
 int bfd_set_arch_mach (int *,int ,int ) ;
 int bfd_set_section_flags (int *,int *,int) ;
 int bfd_set_section_size (int *,int *,int ) ;
 int * edata_s ;
 int edata_sz ;
 int einfo (char*) ;
 int * filler_bfd ;
 TYPE_1__* lang_add_input_file (char*,int ,int *) ;
 int lang_input_file_is_fake_enum ;
 int ldlang_add_file (TYPE_1__*) ;
 int output_bfd ;
 int * reloc_s ;

__attribute__((used)) static void
build_filler_bfd (int include_edata)
{
  lang_input_statement_type *filler_file;
  filler_file = lang_add_input_file ("dll stuff",
         lang_input_file_is_fake_enum,
         ((void*)0));
  filler_file->the_bfd = filler_bfd = bfd_create ("dll stuff", output_bfd);
  if (filler_bfd == ((void*)0)
      || !bfd_set_arch_mach (filler_bfd,
        bfd_get_arch (output_bfd),
        bfd_get_mach (output_bfd)))
    {
      einfo ("%X%P: can not create BFD: %E\n");
      return;
    }

  if (include_edata)
    {
      edata_s = bfd_make_section_old_way (filler_bfd, ".edata");
      if (edata_s == ((void*)0)
   || !bfd_set_section_flags (filler_bfd, edata_s,
         (SEC_HAS_CONTENTS
          | SEC_ALLOC
          | SEC_LOAD
          | SEC_KEEP
          | SEC_IN_MEMORY)))
 {
   einfo ("%X%P: can not create .edata section: %E\n");
   return;
 }
      bfd_set_section_size (filler_bfd, edata_s, edata_sz);
    }

  reloc_s = bfd_make_section_old_way (filler_bfd, ".reloc");
  if (reloc_s == ((void*)0)
      || !bfd_set_section_flags (filler_bfd, reloc_s,
     (SEC_HAS_CONTENTS
      | SEC_ALLOC
      | SEC_LOAD
      | SEC_KEEP
      | SEC_IN_MEMORY)))
    {
      einfo ("%X%P: can not create .reloc section: %E\n");
      return;
    }

  bfd_set_section_size (filler_bfd, reloc_s, 0);

  ldlang_add_file (filler_file);
}
