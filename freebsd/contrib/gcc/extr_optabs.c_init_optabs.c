
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_48__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;
typedef struct TYPE_49__ TYPE_11__ ;


struct TYPE_53__ {TYPE_1__* handlers; } ;
struct TYPE_52__ {TYPE_2__* handlers; } ;
struct TYPE_51__ {void* libfunc; } ;
struct TYPE_50__ {void* libfunc; } ;
struct TYPE_49__ {int (* init_libfuncs ) () ;} ;


 int ABS ;
 int AND ;
 int ASHIFT ;
 int ASHIFTRT ;
 int BSWAP ;
 int CLZ ;
 void* CODE_FOR_nothing ;
 int COMPARE ;
 int CTZ ;
 int DIV ;
 int DImode ;
 int EQ ;
 int FFS ;
 int FIX ;
 int FLOAT ;
 int GE ;
 int GT ;
 scalar_t__ HAVE_conditional_trap ;
 int INT_TYPE_SIZE ;
 int IOR ;
 int LE ;
 int LSHIFTRT ;
 int LT ;
 int MINUS ;
 int MOD ;
 int MODE_DECIMAL_FLOAT ;
 int MODE_FLOAT ;
 int MODE_INT ;
 int MULT ;
 int NE ;
 int NEG ;
 int NOT ;
 int NULL_RTX ;
 unsigned int NUM_MACHINE_MODES ;
 unsigned int NUM_RTX_CODE ;
 int PARITY ;
 int PLUS ;
 int POPCOUNT ;
 int ROTATE ;
 int ROTATERT ;
 int SET ;
 int SIGN_EXTEND ;
 int SImode ;
 int SMAX ;
 int SMIN ;
 int SQRT ;
 int STRICT_LOW_PART ;
 int TRUNCATE ;
 size_t TYPE_MODE (scalar_t__) ;
 int UDIV ;
 int UMAX ;
 int UMIN ;
 int UMOD ;
 int UNKNOWN ;
 int UNORDERED ;
 int UNSIGNED_FIX ;
 int UNSIGNED_FLOAT ;
 int VOIDmode ;
 int XOR ;
 int ZERO_EXTEND ;
 void* abort_libfunc ;
 TYPE_48__* abs_optab ;
 void* absv_optab ;
 void* acos_optab ;
 TYPE_3__* add_optab ;
 void* addcc_optab ;
 TYPE_3__* addv_optab ;
 TYPE_3__* and_optab ;
 TYPE_3__* ashl_optab ;
 TYPE_3__* ashr_optab ;
 void* asin_optab ;
 void* atan2_optab ;
 void* atan_optab ;
 void* bswap_optab ;
 void* btrunc_optab ;
 void* cbranch_optab ;
 void* ceil_optab ;
 TYPE_3__* clz_optab ;
 void* cmov_optab ;
 TYPE_3__* cmp_optab ;
 void** cmpmem_optab ;
 void** cmpstr_optab ;
 void** cmpstrn_optab ;
 scalar_t__ complex_double_type_node ;
 void* copysign_optab ;
 void* cos_optab ;
 void* cstore_optab ;
 TYPE_3__* ctz_optab ;
 void* drem_optab ;
 TYPE_3__* eq_optab ;
 void* exp10_optab ;
 void* exp2_optab ;
 void* exp_optab ;
 void* expm1_optab ;
 TYPE_3__* ffs_optab ;
 void* floor_optab ;
 void* fmod_optab ;
 TYPE_3__* ftrunc_optab ;
 void* gcov_flush_libfunc ;
 TYPE_3__* ge_optab ;
 int gen_rtx_fmt_ee (int ,int ,int ,int ) ;
 TYPE_3__* gt_optab ;
 void* ilogb_optab ;
 int init_all_optabs () ;
 void* init_convert_optab (int ) ;
 int init_floating_libfuncs (TYPE_3__*,char*,char) ;
 int init_integral_libfuncs (TYPE_3__*,char*,char) ;
 int init_interclass_conv_libfuncs (void*,char*,int ,int ) ;
 int init_intraclass_conv_libfuncs (void*,char*,int ,int) ;
 void* init_one_libfunc (char*) ;
 void* init_optab (int ) ;
 void* init_optabv (int ) ;
 TYPE_3__* ior_optab ;
 void* lceil_optab ;
 void* ldexp_optab ;
 TYPE_3__* le_optab ;
 void* lfloor_optab ;
 void* log10_optab ;
 void* log1p_optab ;
 void* log2_optab ;
 void* log_optab ;
 void* logb_optab ;
 void* longjmp_libfunc ;
 void* lrint_optab ;
 TYPE_3__* lshr_optab ;
 TYPE_3__* lt_optab ;
 void* memcmp_libfunc ;
 void* memcpy_libfunc ;
 void* memmove_libfunc ;
 void* memset_libfunc ;
 scalar_t__ mode_for_size (int ,int ,int ) ;
 void* mov_optab ;
 void** movcc_gen_code ;
 void** movmem_optab ;
 void* movmisalign_optab ;
 void* movstrict_optab ;
 TYPE_3__* ne_optab ;
 void* nearbyint_optab ;
 TYPE_3__* neg_optab ;
 TYPE_3__* negv_optab ;
 TYPE_3__* one_cmpl_optab ;
 TYPE_3__* parity_optab ;
 TYPE_3__* popcount_optab ;
 void* pow_optab ;
 TYPE_3__* powi_optab ;
 void* profile_function_entry_libfunc ;
 void* profile_function_exit_libfunc ;
 void* push_optab ;
 void* reduc_smax_optab ;
 void* reduc_smin_optab ;
 void* reduc_splus_optab ;
 void* reduc_umax_optab ;
 void* reduc_umin_optab ;
 void* reduc_uplus_optab ;
 void** reload_in_optab ;
 void** reload_out_optab ;
 void* rint_optab ;
 void* rotl_optab ;
 void* rotr_optab ;
 void* round_optab ;
 TYPE_3__* sdiv_optab ;
 TYPE_3__* sdivmod_optab ;
 TYPE_3__* sdivv_optab ;
 void* sdot_prod_optab ;
 int set_optab_libfunc (void*,int ,char*) ;
 void* setbits_libfunc ;
 void** setcc_gen_code ;
 void* setjmp_libfunc ;
 void** setmem_optab ;
 void* sext_optab ;
 void* sfix_optab ;
 void* sfixtrunc_optab ;
 void* sfloat_optab ;
 void* sin_optab ;
 void* sincos_optab ;
 TYPE_3__* smax_optab ;
 TYPE_3__* smin_optab ;
 TYPE_3__* smod_optab ;
 void* smul_highpart_optab ;
 TYPE_3__* smul_optab ;
 void* smul_widen_optab ;
 TYPE_3__* smulv_optab ;
 void* sqrt_optab ;
 void* ssum_widen_optab ;
 void* strlen_optab ;
 int stub1 () ;
 TYPE_3__* sub_optab ;
 TYPE_3__* subv_optab ;
 void** sync_add_optab ;
 void** sync_and_optab ;
 void** sync_compare_and_swap ;
 void** sync_compare_and_swap_cc ;
 void** sync_ior_optab ;
 void** sync_lock_release ;
 void** sync_lock_test_and_set ;
 void** sync_nand_optab ;
 void** sync_new_add_optab ;
 void** sync_new_and_optab ;
 void** sync_new_ior_optab ;
 void** sync_new_nand_optab ;
 void** sync_new_sub_optab ;
 void** sync_new_xor_optab ;
 void** sync_old_add_optab ;
 void** sync_old_and_optab ;
 void** sync_old_ior_optab ;
 void** sync_old_nand_optab ;
 void** sync_old_sub_optab ;
 void** sync_old_xor_optab ;
 void** sync_sub_optab ;
 void** sync_xor_optab ;
 void* tan_optab ;
 TYPE_11__ targetm ;
 int trap_rtx ;
 void* trunc_optab ;
 void* tst_optab ;
 TYPE_3__* ucmp_optab ;
 TYPE_3__* udiv_optab ;
 TYPE_3__* udivmod_optab ;
 void* udot_prod_optab ;
 void* ufix_optab ;
 void* ufixtrunc_optab ;
 void* ufloat_optab ;
 TYPE_3__* umax_optab ;
 TYPE_3__* umin_optab ;
 TYPE_3__* umod_optab ;
 void* umul_highpart_optab ;
 void* umul_widen_optab ;
 TYPE_3__* unord_optab ;
 void* unwind_sjlj_register_libfunc ;
 void* unwind_sjlj_unregister_libfunc ;
 void* usmul_widen_optab ;
 void* usum_widen_optab ;
 void** vcond_gen_code ;
 void** vcondu_gen_code ;
 void* vec_extract_optab ;
 void* vec_init_optab ;
 void* vec_realign_load_optab ;
 void* vec_set_optab ;
 void* vec_shl_optab ;
 void* vec_shr_optab ;
 TYPE_3__* xor_optab ;
 void* zext_optab ;

void
init_optabs (void)
{
  unsigned int i;



  for (i = 0; i < NUM_RTX_CODE; i++)
    setcc_gen_code[i] = CODE_FOR_nothing;






  for (i = 0; i < NUM_MACHINE_MODES; i++)
    {
      vcond_gen_code[i] = CODE_FOR_nothing;
      vcondu_gen_code[i] = CODE_FOR_nothing;
    }

  add_optab = init_optab (PLUS);
  addv_optab = init_optabv (PLUS);
  sub_optab = init_optab (MINUS);
  subv_optab = init_optabv (MINUS);
  smul_optab = init_optab (MULT);
  smulv_optab = init_optabv (MULT);
  smul_highpart_optab = init_optab (UNKNOWN);
  umul_highpart_optab = init_optab (UNKNOWN);
  smul_widen_optab = init_optab (UNKNOWN);
  umul_widen_optab = init_optab (UNKNOWN);
  usmul_widen_optab = init_optab (UNKNOWN);
  sdiv_optab = init_optab (DIV);
  sdivv_optab = init_optabv (DIV);
  sdivmod_optab = init_optab (UNKNOWN);
  udiv_optab = init_optab (UDIV);
  udivmod_optab = init_optab (UNKNOWN);
  smod_optab = init_optab (MOD);
  umod_optab = init_optab (UMOD);
  fmod_optab = init_optab (UNKNOWN);
  drem_optab = init_optab (UNKNOWN);
  ftrunc_optab = init_optab (UNKNOWN);
  and_optab = init_optab (AND);
  ior_optab = init_optab (IOR);
  xor_optab = init_optab (XOR);
  ashl_optab = init_optab (ASHIFT);
  ashr_optab = init_optab (ASHIFTRT);
  lshr_optab = init_optab (LSHIFTRT);
  rotl_optab = init_optab (ROTATE);
  rotr_optab = init_optab (ROTATERT);
  smin_optab = init_optab (SMIN);
  smax_optab = init_optab (SMAX);
  umin_optab = init_optab (UMIN);
  umax_optab = init_optab (UMAX);
  pow_optab = init_optab (UNKNOWN);
  atan2_optab = init_optab (UNKNOWN);



  mov_optab = init_optab (SET);
  movstrict_optab = init_optab (STRICT_LOW_PART);
  cmp_optab = init_optab (COMPARE);

  ucmp_optab = init_optab (UNKNOWN);
  tst_optab = init_optab (UNKNOWN);

  eq_optab = init_optab (EQ);
  ne_optab = init_optab (NE);
  gt_optab = init_optab (GT);
  ge_optab = init_optab (GE);
  lt_optab = init_optab (LT);
  le_optab = init_optab (LE);
  unord_optab = init_optab (UNORDERED);

  neg_optab = init_optab (NEG);
  negv_optab = init_optabv (NEG);
  abs_optab = init_optab (ABS);
  absv_optab = init_optabv (ABS);
  addcc_optab = init_optab (UNKNOWN);
  one_cmpl_optab = init_optab (NOT);
  bswap_optab = init_optab (BSWAP);
  ffs_optab = init_optab (FFS);
  clz_optab = init_optab (CLZ);
  ctz_optab = init_optab (CTZ);
  popcount_optab = init_optab (POPCOUNT);
  parity_optab = init_optab (PARITY);
  sqrt_optab = init_optab (SQRT);
  floor_optab = init_optab (UNKNOWN);
  lfloor_optab = init_optab (UNKNOWN);
  ceil_optab = init_optab (UNKNOWN);
  lceil_optab = init_optab (UNKNOWN);
  round_optab = init_optab (UNKNOWN);
  btrunc_optab = init_optab (UNKNOWN);
  nearbyint_optab = init_optab (UNKNOWN);
  rint_optab = init_optab (UNKNOWN);
  lrint_optab = init_optab (UNKNOWN);
  sincos_optab = init_optab (UNKNOWN);
  sin_optab = init_optab (UNKNOWN);
  asin_optab = init_optab (UNKNOWN);
  cos_optab = init_optab (UNKNOWN);
  acos_optab = init_optab (UNKNOWN);
  exp_optab = init_optab (UNKNOWN);
  exp10_optab = init_optab (UNKNOWN);
  exp2_optab = init_optab (UNKNOWN);
  expm1_optab = init_optab (UNKNOWN);
  ldexp_optab = init_optab (UNKNOWN);
  logb_optab = init_optab (UNKNOWN);
  ilogb_optab = init_optab (UNKNOWN);
  log_optab = init_optab (UNKNOWN);
  log10_optab = init_optab (UNKNOWN);
  log2_optab = init_optab (UNKNOWN);
  log1p_optab = init_optab (UNKNOWN);
  tan_optab = init_optab (UNKNOWN);
  atan_optab = init_optab (UNKNOWN);
  copysign_optab = init_optab (UNKNOWN);

  strlen_optab = init_optab (UNKNOWN);
  cbranch_optab = init_optab (UNKNOWN);
  cmov_optab = init_optab (UNKNOWN);
  cstore_optab = init_optab (UNKNOWN);
  push_optab = init_optab (UNKNOWN);

  reduc_smax_optab = init_optab (UNKNOWN);
  reduc_umax_optab = init_optab (UNKNOWN);
  reduc_smin_optab = init_optab (UNKNOWN);
  reduc_umin_optab = init_optab (UNKNOWN);
  reduc_splus_optab = init_optab (UNKNOWN);
  reduc_uplus_optab = init_optab (UNKNOWN);

  ssum_widen_optab = init_optab (UNKNOWN);
  usum_widen_optab = init_optab (UNKNOWN);
  sdot_prod_optab = init_optab (UNKNOWN);
  udot_prod_optab = init_optab (UNKNOWN);

  vec_extract_optab = init_optab (UNKNOWN);
  vec_set_optab = init_optab (UNKNOWN);
  vec_init_optab = init_optab (UNKNOWN);
  vec_shl_optab = init_optab (UNKNOWN);
  vec_shr_optab = init_optab (UNKNOWN);
  vec_realign_load_optab = init_optab (UNKNOWN);
  movmisalign_optab = init_optab (UNKNOWN);

  powi_optab = init_optab (UNKNOWN);


  sext_optab = init_convert_optab (SIGN_EXTEND);
  zext_optab = init_convert_optab (ZERO_EXTEND);
  trunc_optab = init_convert_optab (TRUNCATE);
  sfix_optab = init_convert_optab (FIX);
  ufix_optab = init_convert_optab (UNSIGNED_FIX);
  sfixtrunc_optab = init_convert_optab (UNKNOWN);
  ufixtrunc_optab = init_convert_optab (UNKNOWN);
  sfloat_optab = init_convert_optab (FLOAT);
  ufloat_optab = init_convert_optab (UNSIGNED_FLOAT);

  for (i = 0; i < NUM_MACHINE_MODES; i++)
    {
      movmem_optab[i] = CODE_FOR_nothing;
      cmpstr_optab[i] = CODE_FOR_nothing;
      cmpstrn_optab[i] = CODE_FOR_nothing;
      cmpmem_optab[i] = CODE_FOR_nothing;
      setmem_optab[i] = CODE_FOR_nothing;

      sync_add_optab[i] = CODE_FOR_nothing;
      sync_sub_optab[i] = CODE_FOR_nothing;
      sync_ior_optab[i] = CODE_FOR_nothing;
      sync_and_optab[i] = CODE_FOR_nothing;
      sync_xor_optab[i] = CODE_FOR_nothing;
      sync_nand_optab[i] = CODE_FOR_nothing;
      sync_old_add_optab[i] = CODE_FOR_nothing;
      sync_old_sub_optab[i] = CODE_FOR_nothing;
      sync_old_ior_optab[i] = CODE_FOR_nothing;
      sync_old_and_optab[i] = CODE_FOR_nothing;
      sync_old_xor_optab[i] = CODE_FOR_nothing;
      sync_old_nand_optab[i] = CODE_FOR_nothing;
      sync_new_add_optab[i] = CODE_FOR_nothing;
      sync_new_sub_optab[i] = CODE_FOR_nothing;
      sync_new_ior_optab[i] = CODE_FOR_nothing;
      sync_new_and_optab[i] = CODE_FOR_nothing;
      sync_new_xor_optab[i] = CODE_FOR_nothing;
      sync_new_nand_optab[i] = CODE_FOR_nothing;
      sync_compare_and_swap[i] = CODE_FOR_nothing;
      sync_compare_and_swap_cc[i] = CODE_FOR_nothing;
      sync_lock_test_and_set[i] = CODE_FOR_nothing;
      sync_lock_release[i] = CODE_FOR_nothing;

      reload_in_optab[i] = reload_out_optab[i] = CODE_FOR_nothing;
    }


  init_all_optabs ();


  init_integral_libfuncs (add_optab, "add", '3');
  init_floating_libfuncs (add_optab, "add", '3');
  init_integral_libfuncs (addv_optab, "addv", '3');
  init_floating_libfuncs (addv_optab, "add", '3');
  init_integral_libfuncs (sub_optab, "sub", '3');
  init_floating_libfuncs (sub_optab, "sub", '3');
  init_integral_libfuncs (subv_optab, "subv", '3');
  init_floating_libfuncs (subv_optab, "sub", '3');
  init_integral_libfuncs (smul_optab, "mul", '3');
  init_floating_libfuncs (smul_optab, "mul", '3');
  init_integral_libfuncs (smulv_optab, "mulv", '3');
  init_floating_libfuncs (smulv_optab, "mul", '3');
  init_integral_libfuncs (sdiv_optab, "div", '3');
  init_floating_libfuncs (sdiv_optab, "div", '3');
  init_integral_libfuncs (sdivv_optab, "divv", '3');
  init_integral_libfuncs (udiv_optab, "udiv", '3');
  init_integral_libfuncs (sdivmod_optab, "divmod", '4');
  init_integral_libfuncs (udivmod_optab, "udivmod", '4');
  init_integral_libfuncs (smod_optab, "mod", '3');
  init_integral_libfuncs (umod_optab, "umod", '3');
  init_floating_libfuncs (ftrunc_optab, "ftrunc", '2');
  init_integral_libfuncs (and_optab, "and", '3');
  init_integral_libfuncs (ior_optab, "ior", '3');
  init_integral_libfuncs (xor_optab, "xor", '3');
  init_integral_libfuncs (ashl_optab, "ashl", '3');
  init_integral_libfuncs (ashr_optab, "ashr", '3');
  init_integral_libfuncs (lshr_optab, "lshr", '3');
  init_integral_libfuncs (smin_optab, "min", '3');
  init_floating_libfuncs (smin_optab, "min", '3');
  init_integral_libfuncs (smax_optab, "max", '3');
  init_floating_libfuncs (smax_optab, "max", '3');
  init_integral_libfuncs (umin_optab, "umin", '3');
  init_integral_libfuncs (umax_optab, "umax", '3');
  init_integral_libfuncs (neg_optab, "neg", '2');
  init_floating_libfuncs (neg_optab, "neg", '2');
  init_integral_libfuncs (negv_optab, "negv", '2');
  init_floating_libfuncs (negv_optab, "neg", '2');
  init_integral_libfuncs (one_cmpl_optab, "one_cmpl", '2');
  init_integral_libfuncs (ffs_optab, "ffs", '2');
  init_integral_libfuncs (clz_optab, "clz", '2');
  init_integral_libfuncs (ctz_optab, "ctz", '2');
  init_integral_libfuncs (popcount_optab, "popcount", '2');
  init_integral_libfuncs (parity_optab, "parity", '2');



  init_integral_libfuncs (cmp_optab, "cmp", '2');
  init_integral_libfuncs (ucmp_optab, "ucmp", '2');
  init_floating_libfuncs (cmp_optab, "cmp", '2');


  init_floating_libfuncs (eq_optab, "eq", '2');
  init_floating_libfuncs (ne_optab, "ne", '2');
  init_floating_libfuncs (gt_optab, "gt", '2');
  init_floating_libfuncs (ge_optab, "ge", '2');
  init_floating_libfuncs (lt_optab, "lt", '2');
  init_floating_libfuncs (le_optab, "le", '2');
  init_floating_libfuncs (unord_optab, "unord", '2');

  init_floating_libfuncs (powi_optab, "powi", '2');


  init_interclass_conv_libfuncs (sfloat_optab, "float",
     MODE_INT, MODE_FLOAT);
  init_interclass_conv_libfuncs (sfloat_optab, "float",
     MODE_INT, MODE_DECIMAL_FLOAT);
  init_interclass_conv_libfuncs (ufloat_optab, "floatun",
     MODE_INT, MODE_FLOAT);
  init_interclass_conv_libfuncs (ufloat_optab, "floatun",
     MODE_INT, MODE_DECIMAL_FLOAT);
  init_interclass_conv_libfuncs (sfix_optab, "fix",
     MODE_FLOAT, MODE_INT);
  init_interclass_conv_libfuncs (sfix_optab, "fix",
     MODE_DECIMAL_FLOAT, MODE_INT);
  init_interclass_conv_libfuncs (ufix_optab, "fixuns",
     MODE_FLOAT, MODE_INT);
  init_interclass_conv_libfuncs (ufix_optab, "fixuns",
     MODE_DECIMAL_FLOAT, MODE_INT);
  init_interclass_conv_libfuncs (ufloat_optab, "floatuns",
     MODE_INT, MODE_DECIMAL_FLOAT);


  init_intraclass_conv_libfuncs (sext_optab, "extend", MODE_FLOAT, 1);
  init_intraclass_conv_libfuncs (sext_optab, "extend", MODE_DECIMAL_FLOAT, 1);
  init_interclass_conv_libfuncs (sext_optab, "extend", MODE_FLOAT, MODE_DECIMAL_FLOAT);
  init_interclass_conv_libfuncs (sext_optab, "extend", MODE_DECIMAL_FLOAT, MODE_FLOAT);
  init_intraclass_conv_libfuncs (trunc_optab, "trunc", MODE_FLOAT, 0);
  init_intraclass_conv_libfuncs (trunc_optab, "trunc", MODE_DECIMAL_FLOAT, 0);
  init_interclass_conv_libfuncs (trunc_optab, "trunc", MODE_FLOAT, MODE_DECIMAL_FLOAT);
  init_interclass_conv_libfuncs (trunc_optab, "trunc", MODE_DECIMAL_FLOAT, MODE_FLOAT);



  set_optab_libfunc (bswap_optab, SImode, "__bswapsi2");
  set_optab_libfunc (bswap_optab, DImode, "__bswapdi2");



  if (complex_double_type_node)
    abs_optab->handlers[TYPE_MODE (complex_double_type_node)].libfunc
      = init_one_libfunc ("cabs");


  ffs_optab->handlers[(int) mode_for_size (INT_TYPE_SIZE, MODE_INT, 0)].libfunc
    = init_one_libfunc ("ffs");

  abort_libfunc = init_one_libfunc ("abort");
  memcpy_libfunc = init_one_libfunc ("memcpy");
  memmove_libfunc = init_one_libfunc ("memmove");
  memcmp_libfunc = init_one_libfunc ("memcmp");
  memset_libfunc = init_one_libfunc ("memset");
  setbits_libfunc = init_one_libfunc ("__setbits");


  setjmp_libfunc = init_one_libfunc ("__builtin_setjmp");
  longjmp_libfunc = init_one_libfunc ("__builtin_longjmp");




  unwind_sjlj_register_libfunc = init_one_libfunc ("_Unwind_SjLj_Register");
  unwind_sjlj_unregister_libfunc
    = init_one_libfunc ("_Unwind_SjLj_Unregister");


  profile_function_entry_libfunc
    = init_one_libfunc ("__cyg_profile_func_enter");
  profile_function_exit_libfunc
    = init_one_libfunc ("__cyg_profile_func_exit");

  gcov_flush_libfunc = init_one_libfunc ("__gcov_flush");

  if (HAVE_conditional_trap)
    trap_rtx = gen_rtx_fmt_ee (EQ, VOIDmode, NULL_RTX, NULL_RTX);


  targetm.init_libfuncs ();
}
