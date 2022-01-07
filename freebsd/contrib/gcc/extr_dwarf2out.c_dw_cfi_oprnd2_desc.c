
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dwarf_call_frame_info { ____Placeholder_dwarf_call_frame_info } dwarf_call_frame_info ;
typedef enum dw_cfi_oprnd_type { ____Placeholder_dw_cfi_oprnd_type } dw_cfi_oprnd_type ;
 int dw_cfi_oprnd_offset ;
 int dw_cfi_oprnd_reg_num ;
 int dw_cfi_oprnd_unused ;

__attribute__((used)) static enum dw_cfi_oprnd_type
dw_cfi_oprnd2_desc (enum dwarf_call_frame_info cfi)
{
  switch (cfi)
    {
    case 133:
    case 132:
    case 131:
    case 129:
    case 130:
      return dw_cfi_oprnd_offset;

    case 128:
      return dw_cfi_oprnd_reg_num;

    default:
      return dw_cfi_oprnd_unused;
    }
}
