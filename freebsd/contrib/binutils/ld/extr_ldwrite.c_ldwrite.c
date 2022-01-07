
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ bfd_size_type ;
struct TYPE_2__ {unsigned int split_by_reloc; scalar_t__ split_by_file; } ;


 int _ (char*) ;
 scalar_t__ bfd_error_no_error ;
 int bfd_final_link (int ,int *) ;
 scalar_t__ bfd_get_error () ;
 int bfd_set_error (scalar_t__) ;
 int build_link_order ;
 TYPE_1__ config ;
 int einfo (int ) ;
 int lang_for_each_statement (int ) ;
 int link_info ;
 int output_bfd ;
 int split_sections (int ,int *) ;
 int xexit (int) ;

void
ldwrite (void)
{


  bfd_set_error (bfd_error_no_error);
  lang_for_each_statement (build_link_order);

  if (config.split_by_reloc != (unsigned) -1
      || config.split_by_file != (bfd_size_type) -1)
    split_sections (output_bfd, &link_info);
  if (!bfd_final_link (output_bfd, &link_info))
    {




      if (bfd_get_error () != bfd_error_no_error)
 einfo (_("%F%P: final link failed: %E\n"));
      else
 xexit (1);
    }
}
