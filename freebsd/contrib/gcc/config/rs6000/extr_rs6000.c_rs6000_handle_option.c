
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int aix_struct_ret; int isel; int spe; int abi; int ieee; int float_gprs; int long_double; int alignment; } ;
struct TYPE_3__ {char const* string; } ;


 int ABI_DARWIN ;
 int DEFAULT_ABI ;
 int MASK_ALIGN_NATURAL ;
 int MASK_ALIGN_POWER ;
 int MASK_MINIMAL_TOC ;
 int MASK_MULTIPLE ;
 int MASK_POWER ;
 int MASK_POWER2 ;
 int MASK_POWERPC ;
 int MASK_POWERPC64 ;
 int MASK_PPC_GFXOPT ;
 int MASK_PPC_GPOPT ;
 int MASK_RELOCATABLE ;
 int MASK_STRING ;
 int RS6000_DEFAULT_LONG_DOUBLE_SIZE ;
 int TARGET_64BIT ;
 int TARGET_ALTIVEC_VRSAVE ;
 int TARGET_NO_FP_IN_TOC ;
 int TARGET_NO_SUM_IN_TOC ;
 int TARGET_SPE_ABI ;
 int error (char*,char const*) ;
 char const* rs6000_abi_name ;
 int rs6000_alignment_flags ;
 int rs6000_altivec_abi ;
 int rs6000_darwin64_abi ;
 char const* rs6000_debug_name ;
 TYPE_2__ rs6000_explicit_options ;
 int rs6000_float_gprs ;
 int rs6000_ieeequad ;
 int rs6000_isel ;
 int rs6000_long_double_type_size ;
 int rs6000_parse_yes_no_option (char*,char const*,int *) ;
 char const* rs6000_sched_costly_dep_str ;
 char const* rs6000_sched_insert_nops_str ;
 char const* rs6000_sdata_name ;
 TYPE_1__* rs6000_select ;
 int rs6000_spe ;
 int rs6000_spe_abi ;
 char const* rs6000_tls_size_string ;
 char const* rs6000_traceback_name ;
 int strcmp (char const*,char*) ;
 int target_flags ;
 int target_flags_explicit ;
 int warning (int ,char*) ;

__attribute__((used)) static bool
rs6000_handle_option (size_t code, const char *arg, int value)
{
  switch (code)
    {
    case 144:
      target_flags &= ~(MASK_POWER | MASK_POWER2
   | MASK_MULTIPLE | MASK_STRING);
      target_flags_explicit |= (MASK_POWER | MASK_POWER2
    | MASK_MULTIPLE | MASK_STRING);
      break;
    case 143:
      target_flags &= ~(MASK_POWERPC | MASK_PPC_GPOPT
   | MASK_PPC_GFXOPT | MASK_POWERPC64);
      target_flags_explicit |= (MASK_POWERPC | MASK_PPC_GPOPT
    | MASK_PPC_GFXOPT | MASK_POWERPC64);
      break;
    case 149:
      target_flags &= ~MASK_MINIMAL_TOC;
      TARGET_NO_FP_IN_TOC = 0;
      TARGET_NO_SUM_IN_TOC = 0;
      target_flags_explicit |= MASK_MINIMAL_TOC;






      break;
    case 159:

      target_flags |= MASK_POWERPC64 | MASK_POWERPC;
      target_flags |= ~target_flags_explicit & MASK_PPC_GFXOPT;
      target_flags_explicit |= MASK_POWERPC64 | MASK_POWERPC;
      break;




    case 160:

      target_flags &= ~MASK_POWERPC64;
      target_flags_explicit |= MASK_POWERPC64;
      break;

    case 148:
      rs6000_sched_insert_nops_str = arg;
      break;

    case 145:
      if (value == 1)
 {
   TARGET_NO_FP_IN_TOC = 0;
   TARGET_NO_SUM_IN_TOC = 0;
 }
      break;

    case 142:
      if (value == 1)
 {
   target_flags |= (MASK_MULTIPLE | MASK_STRING);
   target_flags_explicit |= (MASK_MULTIPLE | MASK_STRING);
 }
      break;

    case 141:
      if (value == 1)
 {
   target_flags |= (MASK_POWER | MASK_MULTIPLE | MASK_STRING);
   target_flags_explicit |= (MASK_POWER | MASK_MULTIPLE | MASK_STRING);
 }
      break;

    case 139:
    case 140:
      if (value == 1)
 {
   target_flags |= MASK_POWERPC;
   target_flags_explicit |= MASK_POWERPC;
 }
      break;

    case 155:
    case 133:
      rs6000_explicit_options.aix_struct_ret = 1;
      break;

    case 128:
      rs6000_parse_yes_no_option ("vrsave", arg, &(TARGET_ALTIVEC_VRSAVE));
      break;

    case 147:
      rs6000_explicit_options.isel = 1;
      rs6000_parse_yes_no_option ("isel", arg, &(rs6000_isel));
      break;

    case 134:
      rs6000_explicit_options.spe = 1;
      rs6000_parse_yes_no_option ("spe", arg, &(rs6000_spe));

      if (!rs6000_spe)
 rs6000_long_double_type_size = 64;
      break;

    case 151:
      rs6000_debug_name = arg;
      break;
    case 158:
      if (!strcmp (arg, "altivec"))
 {
   rs6000_explicit_options.abi = 1;
   rs6000_altivec_abi = 1;
   rs6000_spe_abi = 0;
 }
      else if (! strcmp (arg, "no-altivec"))
 {


   rs6000_altivec_abi = 0;
 }
      else if (! strcmp (arg, "spe"))
 {
   rs6000_explicit_options.abi = 1;
   rs6000_spe_abi = 1;
   rs6000_altivec_abi = 0;
   if (!TARGET_SPE_ABI)
     error ("not configured for ABI: '%s'", arg);
 }
      else if (! strcmp (arg, "no-spe"))
 {
   rs6000_explicit_options.abi = 1;
   rs6000_spe_abi = 0;
 }



      else if (! strcmp (arg, "d64"))
 {
   rs6000_darwin64_abi = 1;
   warning (0, "Using darwin64 ABI");
 }
      else if (! strcmp (arg, "d32"))
 {
   rs6000_darwin64_abi = 0;
   warning (0, "Using old darwin ABI");
 }

      else if (! strcmp (arg, "ibmlongdouble"))
 {
   rs6000_explicit_options.ieee = 1;
   rs6000_ieeequad = 0;
   warning (0, "Using IBM extended precision long double");
 }
      else if (! strcmp (arg, "ieeelongdouble"))
 {
   rs6000_explicit_options.ieee = 1;
   rs6000_ieeequad = 1;
   warning (0, "Using IEEE extended precision long double");
 }

      else
 {
   error ("unknown ABI specified: '%s'", arg);
   return 0;
 }
      break;

    case 152:
      rs6000_select[1].string = arg;
      break;

    case 129:
      rs6000_select[2].string = arg;
      break;

    case 130:
      rs6000_traceback_name = arg;
      break;

    case 150:
      rs6000_explicit_options.float_gprs = 1;
      if (! strcmp (arg, "yes") || ! strcmp (arg, "single"))
 rs6000_float_gprs = 1;
      else if (! strcmp (arg, "double"))
 rs6000_float_gprs = 2;
      else if (! strcmp (arg, "no"))
 rs6000_float_gprs = 0;
      else
 {
   error ("invalid option for -mfloat-gprs: '%s'", arg);
   return 0;
 }
      break;

    case 146:
      rs6000_explicit_options.long_double = 1;
      rs6000_long_double_type_size = RS6000_DEFAULT_LONG_DOUBLE_SIZE;
      if (value != 64 && value != 128)
 {
   error ("Unknown switch -mlong-double-%s", arg);
   rs6000_long_double_type_size = RS6000_DEFAULT_LONG_DOUBLE_SIZE;
   return 0;
 }
      else
 rs6000_long_double_type_size = value;
      break;

    case 136:
      rs6000_sched_costly_dep_str = arg;
      break;

    case 154:
      rs6000_explicit_options.alignment = 1;
      if (! strcmp (arg, "power"))
 {




   if (DEFAULT_ABI == ABI_DARWIN && TARGET_64BIT)
     warning (0, "-malign-power is not supported for 64-bit Darwin;"
       " it is incompatible with the installed C and C++ libraries");
   rs6000_alignment_flags = MASK_ALIGN_POWER;
 }
      else if (! strcmp (arg, "natural"))
 rs6000_alignment_flags = MASK_ALIGN_NATURAL;
      else
 {
   error ("unknown -malign-XXXXX option specified: '%s'", arg);
   return 0;
 }
      break;
    }
  return 1;
}
