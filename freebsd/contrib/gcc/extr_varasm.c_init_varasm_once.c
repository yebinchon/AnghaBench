
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* init_sections ) () ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int BSS_SECTION_ASM_OP ;
 int CTORS_SECTION_ASM_OP ;
 int DATA_SECTION_ASM_OP ;
 int DTORS_SECTION_ASM_OP ;
 int READONLY_DATA_SECTION_ASM_OP ;
 int SBSS_SECTION_ASM_OP ;
 int SDATA_SECTION_ASM_OP ;
 int SECTION_BSS ;
 int SECTION_CODE ;
 int SECTION_COMMON ;
 int SECTION_WRITE ;
 int TEXT_SECTION_ASM_OP ;
 void* bss_noswitch_section ;
 void* bss_section ;
 void* comm_section ;
 int const_alias_set ;
 int const_desc_eq ;
 int const_desc_hash ;
 void* const_desc_htab ;
 int create_constant_pool () ;
 void* ctors_section ;
 void* data_section ;
 void* dtors_section ;
 int emit_bss ;
 int emit_common ;
 int emit_local ;
 int emit_tls_common ;
 void* get_noswitch_section (int,int ) ;
 void* get_unnamed_section (int,int ,int ) ;
 void* htab_create_ggc (int,int ,int ,int *) ;
 void* lcomm_section ;
 int new_alias_set () ;
 int object_block_entry_eq ;
 int object_block_entry_hash ;
 void* object_block_htab ;
 int output_section_asm_op ;
 int * readonly_data_section ;
 void* sbss_section ;
 void* sdata_section ;
 int section_entry_eq ;
 int section_entry_hash ;
 void* section_htab ;
 int shared_constant_pool ;
 int stub1 () ;
 TYPE_2__ targetm ;
 int * text_section ;
 void* tls_comm_section ;

void
init_varasm_once (void)
{
  section_htab = htab_create_ggc (31, section_entry_hash,
      section_entry_eq, ((void*)0));
  object_block_htab = htab_create_ggc (31, object_block_entry_hash,
           object_block_entry_eq, ((void*)0));
  const_desc_htab = htab_create_ggc (1009, const_desc_hash,
         const_desc_eq, ((void*)0));

  const_alias_set = new_alias_set ();
  shared_constant_pool = create_constant_pool ();
  tls_comm_section = get_noswitch_section (SECTION_WRITE | SECTION_BSS
        | SECTION_COMMON, emit_tls_common);
  lcomm_section = get_noswitch_section (SECTION_WRITE | SECTION_BSS
     | SECTION_COMMON, emit_local);
  comm_section = get_noswitch_section (SECTION_WRITE | SECTION_BSS
           | SECTION_COMMON, emit_common);






  targetm.asm_out.init_sections ();

  if (readonly_data_section == ((void*)0))
    readonly_data_section = text_section;
}
