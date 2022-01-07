
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* within; } ;


 int N_DEBUG ;
 int PPC_BIG_ENDIAN ;
 int bfd_set_private_flags (int ,scalar_t__) ;
 int coff_section_from_bfd_index (int ,int ) ;
 int msolaris ;
 int ppc_cie_data_alignment ;
 int ppc_coff_debug_section ;
 int ppc_current_section ;
 void* ppc_data_csects ;
 scalar_t__ ppc_flags ;
 scalar_t__ ppc_obj64 ;
 scalar_t__ ppc_previous_section ;
 int ppc_set_cpu () ;
 int ppc_setup_opcodes () ;
 void* ppc_text_csects ;
 int set_target_endian ;
 int stdoutput ;
 TYPE_1__* symbol_get_tc (void*) ;
 void* symbol_make (char*) ;
 int target_big_endian ;
 int text_section ;

void
md_begin (void)
{
  ppc_set_cpu ();

  ppc_cie_data_alignment = ppc_obj64 ? -8 : -4;







  ppc_setup_opcodes ();



  if (!set_target_endian)
    {
      set_target_endian = 1;
      target_big_endian = PPC_BIG_ENDIAN;
    }
}
