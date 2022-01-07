
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ase_mdmx; int ase_dsp; int ase_dspr2; int ase_mt; int mips16; int ase_mips3d; int ase_smartmips; void* sym32; } ;


 int EABI_ABI ;
 void* FALSE ;
 int ISA_MIPS1 ;
 int ISA_MIPS2 ;
 int ISA_MIPS3 ;
 int ISA_MIPS32 ;
 int ISA_MIPS32R2 ;
 int ISA_MIPS4 ;
 int ISA_MIPS5 ;
 int ISA_MIPS64 ;
 int ISA_MIPS64R2 ;
 int IS_ELF ;
 int N32_ABI ;
 int N64_ABI ;
 int NO_PIC ;
 int O32_ABI ;
 int O64_ABI ;
 int SVR4_PIC ;
 void* TRUE ;
 int VXWORKS_PIC ;
 int _ (char*) ;
 int as_bad (int ) ;
 int as_fatal (int ,...) ;
 void* atoi (char*) ;
 int file_mips_fp32 ;
 int file_mips_gp32 ;
 int file_mips_isa ;
 int g_switch_seen ;
 void* g_switch_value ;
 void* mips_7000_hilo_fix ;
 int mips_abi ;
 void* mips_abicalls ;
 int mips_arch_string ;
 int mips_big_got ;
 int mips_debug ;
 int mips_disable_float_construction ;
 int mips_fix_vr4120 ;
 int mips_fix_vr4130 ;
 void* mips_flag_mdebug ;
 void* mips_flag_pdr ;
 void* mips_in_shared ;
 int mips_no_prev_insn () ;
 int mips_optimize ;
 TYPE_1__ mips_opts ;
 int mips_pic ;
 int mips_relax_branch ;
 int mips_set_option_string (int *,char*) ;
 int mips_trap ;
 int mips_tune_string ;
 int octeon_error_on_unsupported ;
 int octeon_use_unalign ;
 int strcmp (char*,char*) ;
 int support_64bit_objects () ;
 int target_big_endian ;

int
md_parse_option (int c, char *arg)
{
  switch (c)
    {
    case 194:
      mips_disable_float_construction = 0;
      break;

    case 151:
      mips_disable_float_construction = 1;
      break;

    case 129:
      mips_trap = 1;
      break;

    case 196:
      mips_trap = 0;
      break;

    case 191:
      target_big_endian = 1;
      break;

    case 190:
      target_big_endian = 0;
      break;

    case 160:
      octeon_error_on_unsupported = 1;
      break;

    case 138:
      octeon_error_on_unsupported = 0;
      break;

    case 159:
      octeon_use_unalign = 1;
      break;

    case 137:
      octeon_use_unalign = 0;
      break;

    case 'O':
      if (arg && arg[0] == '0')
 mips_optimize = 1;
      else
 mips_optimize = 2;
      break;

    case 'g':
      if (arg == ((void*)0))
 mips_debug = 2;
      else
 mips_debug = atoi (arg);
      break;

    case 174:
      file_mips_isa = ISA_MIPS1;
      break;

    case 172:
      file_mips_isa = ISA_MIPS2;
      break;

    case 171:
      file_mips_isa = ISA_MIPS3;
      break;

    case 167:
      file_mips_isa = ISA_MIPS4;
      break;

    case 166:
      file_mips_isa = ISA_MIPS5;
      break;

    case 170:
      file_mips_isa = ISA_MIPS32;
      break;

    case 169:
      file_mips_isa = ISA_MIPS32R2;
      break;

    case 164:
      file_mips_isa = ISA_MIPS64R2;
      break;

    case 165:
      file_mips_isa = ISA_MIPS64;
      break;

    case 155:
      mips_set_option_string (&mips_tune_string, arg);
      break;

    case 177:
      mips_set_option_string (&mips_arch_string, arg);
      break;

    case 180:
      mips_set_option_string (&mips_arch_string, "4650");
      mips_set_option_string (&mips_tune_string, "4650");
      break;

    case 143:
      break;

    case 182:
      mips_set_option_string (&mips_arch_string, "4010");
      mips_set_option_string (&mips_tune_string, "4010");
      break;

    case 145:
      break;

    case 181:
      mips_set_option_string (&mips_arch_string, "4100");
      mips_set_option_string (&mips_tune_string, "4100");
      break;

    case 144:
      break;

    case 183:
      mips_set_option_string (&mips_arch_string, "3900");
      mips_set_option_string (&mips_tune_string, "3900");
      break;

    case 146:
      break;

    case 175:
      mips_opts.ase_mdmx = 1;
      break;

    case 141:
      mips_opts.ase_mdmx = 0;
      break;

    case 193:
      mips_opts.ase_dsp = 1;
      mips_opts.ase_dspr2 = 0;
      break;

    case 150:
      mips_opts.ase_dsp = 0;
      mips_opts.ase_dspr2 = 0;
      break;

    case 192:
      mips_opts.ase_dspr2 = 1;
      mips_opts.ase_dsp = 1;
      break;

    case 149:
      mips_opts.ase_dspr2 = 0;
      mips_opts.ase_dsp = 0;
      break;

    case 156:
      mips_opts.ase_mt = 1;
      break;

    case 136:
      mips_opts.ase_mt = 0;
      break;

    case 173:
      mips_opts.mips16 = 1;
      mips_no_prev_insn ();
      break;

    case 140:
      mips_opts.mips16 = 0;
      mips_no_prev_insn ();
      break;

    case 168:
      mips_opts.ase_mips3d = 1;
      break;

    case 139:
      mips_opts.ase_mips3d = 0;
      break;

    case 130:
      mips_opts.ase_smartmips = 1;
      break;

    case 133:
      mips_opts.ase_smartmips = 0;
      break;

    case 189:
      mips_fix_vr4120 = 1;
      break;

    case 148:
      mips_fix_vr4120 = 0;
      break;

    case 188:
      mips_fix_vr4130 = 1;
      break;

    case 147:
      mips_fix_vr4130 = 0;
      break;

    case 131:
      mips_relax_branch = 1;
      break;

    case 134:
      mips_relax_branch = 0;
      break;

    case 158:
      mips_in_shared = TRUE;
      break;

    case 162:
      mips_in_shared = FALSE;
      break;

    case 157:
      mips_opts.sym32 = TRUE;
      break;

    case 161:
      mips_opts.sym32 = FALSE;
      break;
    case 'G':
      g_switch_value = atoi (arg);
      g_switch_seen = 1;
      break;
    case 185:
      file_mips_gp32 = 1;
      break;

    case 184:
      file_mips_gp32 = 0;
      break;

    case 187:
      file_mips_fp32 = 1;
      break;

    case 186:
      file_mips_fp32 = 0;
      break;
    case 179:
      mips_7000_hilo_fix = TRUE;
      break;

    case 163:
      mips_7000_hilo_fix = FALSE;
      break;
    default:
      return 0;
    }

  return 1;
}
