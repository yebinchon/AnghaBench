
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * the_bfd; TYPE_2__* next; } ;
struct TYPE_7__ {TYPE_1__ input_statement; } ;
typedef TYPE_2__ lang_statement_union_type ;
typedef int * bfd_error_handler_type ;
typedef int bfd_arch_info_type ;
typedef int bfd ;
struct TYPE_10__ {scalar_t__ warn_mismatch; int accept_unknown_input_arch; } ;
struct TYPE_9__ {TYPE_2__* head; } ;
struct TYPE_8__ {scalar_t__ emitrelocations; scalar_t__ relocatable; } ;


 int HAS_RELOC ;
 int _ (char*) ;
 int * bfd_arch_get_compatible (int *,int *,int ) ;
 scalar_t__ bfd_count_sections (int *) ;
 int bfd_get_file_flags (int *) ;
 scalar_t__ bfd_get_flavour (int *) ;
 int bfd_get_target (int *) ;
 int bfd_merge_private_bfd_data (int *,int *) ;
 int bfd_printable_name (int *) ;
 int * bfd_set_error_handler (int *) ;
 TYPE_5__ command_line ;
 int einfo (int ,int *,...) ;
 TYPE_4__ file_chain ;
 int * ignore_bfd_errors ;
 TYPE_3__ link_info ;
 int * output_bfd ;

__attribute__((used)) static void
lang_check (void)
{
  lang_statement_union_type *file;
  bfd *input_bfd;
  const bfd_arch_info_type *compatible;

  for (file = file_chain.head; file != ((void*)0); file = file->input_statement.next)
    {
      input_bfd = file->input_statement.the_bfd;
      compatible
 = bfd_arch_get_compatible (input_bfd, output_bfd,
       command_line.accept_unknown_input_arch);







      if ((link_info.relocatable || link_info.emitrelocations)
   && (compatible == ((void*)0)
       || bfd_get_flavour (input_bfd) != bfd_get_flavour (output_bfd))
   && (bfd_get_file_flags (input_bfd) & HAS_RELOC) != 0)
 {
   einfo (_("%P%F: Relocatable linking with relocations from"
     " format %s (%B) to format %s (%B) is not supported\n"),
   bfd_get_target (input_bfd), input_bfd,
   bfd_get_target (output_bfd), output_bfd);

 }

      if (compatible == ((void*)0))
 {
   if (command_line.warn_mismatch)
     einfo (_("%P%X: %s architecture of input file `%B'"
       " is incompatible with %s output\n"),
     bfd_printable_name (input_bfd), input_bfd,
     bfd_printable_name (output_bfd));
 }
      else if (bfd_count_sections (input_bfd))
 {



   bfd_error_handler_type pfn = ((void*)0);






   if (! command_line.warn_mismatch)
     pfn = bfd_set_error_handler (ignore_bfd_errors);
   if (! bfd_merge_private_bfd_data (input_bfd, output_bfd))
     {
       if (command_line.warn_mismatch)
  einfo (_("%P%X: failed to merge target specific data"
    " of file %B\n"), input_bfd);
     }
   if (! command_line.warn_mismatch)
     bfd_set_error_handler (pfn);
 }
    }
}
