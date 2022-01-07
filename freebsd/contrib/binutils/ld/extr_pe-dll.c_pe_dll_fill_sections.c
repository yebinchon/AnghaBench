
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfd_link_info {int pie; scalar_t__ shared; } ;
typedef int bfd ;
struct TYPE_9__ {int contents; } ;
struct TYPE_6__ {int ImageBase; } ;
struct TYPE_8__ {int dll; TYPE_1__ pe_opthdr; } ;
struct TYPE_7__ {int contents; } ;


 int TRUE ;
 int bfd_get_target (int *) ;
 int bfd_set_section_size (int ,TYPE_2__*,scalar_t__) ;
 int edata_d ;
 TYPE_4__* edata_s ;
 int fill_edata (int *,struct bfd_link_info*) ;
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
pe_dll_fill_sections (bfd *abfd, struct bfd_link_info *info)
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

  fill_edata (abfd, info);

  if (info->shared && !info->pie)
    pe_data (abfd)->dll = 1;

  edata_s->contents = edata_d;
  reloc_s->contents = reloc_d;
}
