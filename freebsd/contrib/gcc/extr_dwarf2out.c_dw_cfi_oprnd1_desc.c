
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dwarf_call_frame_info { ____Placeholder_dwarf_call_frame_info } dwarf_call_frame_info ;
typedef enum dw_cfi_oprnd_type { ____Placeholder_dw_cfi_oprnd_type } dw_cfi_oprnd_type ;
 int dw_cfi_oprnd_addr ;
 int dw_cfi_oprnd_loc ;
 int dw_cfi_oprnd_offset ;
 int dw_cfi_oprnd_reg_num ;
 int dw_cfi_oprnd_unused ;
 int gcc_unreachable () ;

__attribute__((used)) static enum dw_cfi_oprnd_type
dw_cfi_oprnd1_desc (enum dwarf_call_frame_info cfi)
{
  switch (cfi)
    {
    case 136:
    case 148:
      return dw_cfi_oprnd_unused;

    case 129:
    case 146:
    case 145:
    case 144:
    case 147:
      return dw_cfi_oprnd_addr;

    case 135:
    case 134:
    case 143:
    case 133:
    case 138:
    case 131:
    case 128:
    case 130:
    case 139:
    case 132:
      return dw_cfi_oprnd_reg_num;

    case 141:
    case 149:
    case 140:
      return dw_cfi_oprnd_offset;

    case 142:
    case 137:
      return dw_cfi_oprnd_loc;

    default:
      gcc_unreachable ();
    }
}
