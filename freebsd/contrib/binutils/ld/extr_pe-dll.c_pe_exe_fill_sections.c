
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
typedef int bfd ;
struct TYPE_5__ {int ImageBase; } ;
struct TYPE_7__ {TYPE_1__ pe_opthdr; } ;
struct TYPE_6__ {int contents; } ;


 int TRUE ;
 int bfd_get_target (int *) ;
 int bfd_set_section_size (int ,TYPE_2__*,scalar_t__) ;
 int filler_bfd ;
 int generate_reloc (int *,struct bfd_link_info*) ;
 int image_base ;
 int lang_do_assignments () ;
 int lang_reset_memory_regions () ;
 int lang_size_sections (int *,int ) ;
 int ldemul_after_allocation () ;
 TYPE_3__* pe_data (int *) ;
 int pe_dll_id_target (int ) ;
 int reloc_d ;
 TYPE_2__* reloc_s ;
 scalar_t__ reloc_sz ;

void
pe_exe_fill_sections (bfd *abfd, struct bfd_link_info *info)
{
  pe_dll_id_target (bfd_get_target (abfd));
  image_base = pe_data (abfd)->pe_opthdr.ImageBase;

  generate_reloc (abfd, info);
  if (reloc_sz > 0)
    {
      bfd_set_section_size (filler_bfd, reloc_s, reloc_sz);


      lang_reset_memory_regions ();
      lang_size_sections (((void*)0), TRUE);


      ldemul_after_allocation ();


      lang_do_assignments ();
    }
  reloc_s->contents = reloc_d;
}
