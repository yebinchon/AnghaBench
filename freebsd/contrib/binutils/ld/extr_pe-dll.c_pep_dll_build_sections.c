
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_link_info {int shared; } ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ num_exports; } ;


 int bfd_get_target (int *) ;
 int build_filler_bfd (int) ;
 int generate_edata (int *,struct bfd_link_info*) ;
 TYPE_1__* pe_def_file ;
 int pe_dll_id_target (int ) ;
 int process_def_file (int *,struct bfd_link_info*) ;

void
pe_dll_build_sections (bfd *abfd, struct bfd_link_info *info)
{
  pe_dll_id_target (bfd_get_target (abfd));
  process_def_file (abfd, info);

  if (pe_def_file->num_exports == 0 && !info->shared)
    return;

  generate_edata (abfd, info);
  build_filler_bfd (1);
}
