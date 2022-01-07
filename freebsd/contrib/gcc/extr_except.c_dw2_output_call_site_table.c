
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct call_site_record {int action; scalar_t__ landing_pad; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int call_site_data_used; struct call_site_record* call_site_data; } ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,scalar_t__) ;
 scalar_t__ CODE_LABEL_NUMBER (scalar_t__) ;
 scalar_t__ call_site_base ;
 TYPE_2__* cfun ;
 char* current_function_func_begin_label ;
 int dw2_asm_output_data (int,int ,char*) ;
 int dw2_asm_output_data_uleb128 (int ,char*) ;
 int dw2_asm_output_delta (int,char*,char*,char*,...) ;
 int dw2_asm_output_delta_uleb128 (char*,char*,char*,...) ;

__attribute__((used)) static void
dw2_output_call_site_table (void)
{
  int n = cfun->eh->call_site_data_used;
  int i;

  for (i = 0; i < n; ++i)
    {
      struct call_site_record *cs = &cfun->eh->call_site_data[i];
      char reg_start_lab[32];
      char reg_end_lab[32];
      char landing_pad_lab[32];

      ASM_GENERATE_INTERNAL_LABEL (reg_start_lab, "LEHB", call_site_base + i);
      ASM_GENERATE_INTERNAL_LABEL (reg_end_lab, "LEHE", call_site_base + i);

      if (cs->landing_pad)
 ASM_GENERATE_INTERNAL_LABEL (landing_pad_lab, "L",
         CODE_LABEL_NUMBER (cs->landing_pad));
      dw2_asm_output_delta (4, reg_start_lab,
       current_function_func_begin_label,
       "region %d start", i);
      dw2_asm_output_delta (4, reg_end_lab, reg_start_lab, "length");
      if (cs->landing_pad)
 dw2_asm_output_delta (4, landing_pad_lab,
         current_function_func_begin_label,
         "landing pad");
      else
 dw2_asm_output_data (4, 0, "landing pad");

      dw2_asm_output_data_uleb128 (cs->action, "action");
    }

  call_site_base += n;
}
