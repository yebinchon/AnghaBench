#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_48__ ;
typedef  struct TYPE_52__   TYPE_3__ ;
typedef  struct TYPE_51__   TYPE_2__ ;
typedef  struct TYPE_50__   TYPE_1__ ;
typedef  struct TYPE_49__   TYPE_11__ ;

/* Type definitions */
struct TYPE_53__ {TYPE_1__* handlers; } ;
struct TYPE_52__ {TYPE_2__* handlers; } ;
struct TYPE_51__ {void* libfunc; } ;
struct TYPE_50__ {void* libfunc; } ;
struct TYPE_49__ {int /*<<< orphan*/  (* init_libfuncs ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ABS ; 
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  ASHIFT ; 
 int /*<<< orphan*/  ASHIFTRT ; 
 int /*<<< orphan*/  BSWAP ; 
 int /*<<< orphan*/  CLZ ; 
 void* CODE_FOR_nothing ; 
 int /*<<< orphan*/  COMPARE ; 
 int /*<<< orphan*/  CTZ ; 
 int /*<<< orphan*/  DIV ; 
 int /*<<< orphan*/  DImode ; 
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FFS ; 
 int /*<<< orphan*/  FIX ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  GE ; 
 int /*<<< orphan*/  GT ; 
 scalar_t__ HAVE_conditional_trap ; 
 int /*<<< orphan*/  INT_TYPE_SIZE ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/  LE ; 
 int /*<<< orphan*/  LSHIFTRT ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  MINUS ; 
 int /*<<< orphan*/  MOD ; 
 int /*<<< orphan*/  MODE_DECIMAL_FLOAT ; 
 int /*<<< orphan*/  MODE_FLOAT ; 
 int /*<<< orphan*/  MODE_INT ; 
 int /*<<< orphan*/  MULT ; 
 int /*<<< orphan*/  NE ; 
 int /*<<< orphan*/  NEG ; 
 int /*<<< orphan*/  NOT ; 
 int /*<<< orphan*/  NULL_RTX ; 
 unsigned int NUM_MACHINE_MODES ; 
 unsigned int NUM_RTX_CODE ; 
 int /*<<< orphan*/  PARITY ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  POPCOUNT ; 
 int /*<<< orphan*/  ROTATE ; 
 int /*<<< orphan*/  ROTATERT ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  SIGN_EXTEND ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  SMAX ; 
 int /*<<< orphan*/  SMIN ; 
 int /*<<< orphan*/  SQRT ; 
 int /*<<< orphan*/  STRICT_LOW_PART ; 
 int /*<<< orphan*/  TRUNCATE ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  UDIV ; 
 int /*<<< orphan*/  UMAX ; 
 int /*<<< orphan*/  UMIN ; 
 int /*<<< orphan*/  UMOD ; 
 int /*<<< orphan*/  UNKNOWN ; 
 int /*<<< orphan*/  UNORDERED ; 
 int /*<<< orphan*/  UNSIGNED_FIX ; 
 int /*<<< orphan*/  UNSIGNED_FLOAT ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  XOR ; 
 int /*<<< orphan*/  ZERO_EXTEND ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* gt_optab ; 
 void* ilogb_optab ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,char) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
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
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ,char*) ; 
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
 int /*<<< orphan*/  FUNC13 () ; 
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
 int /*<<< orphan*/  trap_rtx ; 
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
FUNC14 (void)
{
  unsigned int i;

  /* Start by initializing all tables to contain CODE_FOR_nothing.  */

  for (i = 0; i < NUM_RTX_CODE; i++)
    setcc_gen_code[i] = CODE_FOR_nothing;

#ifdef HAVE_conditional_move
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    movcc_gen_code[i] = CODE_FOR_nothing;
#endif

  for (i = 0; i < NUM_MACHINE_MODES; i++)
    {
      vcond_gen_code[i] = CODE_FOR_nothing;
      vcondu_gen_code[i] = CODE_FOR_nothing;
    }

  add_optab = FUNC9 (PLUS);
  addv_optab = FUNC10 (PLUS);
  sub_optab = FUNC9 (MINUS);
  subv_optab = FUNC10 (MINUS);
  smul_optab = FUNC9 (MULT);
  smulv_optab = FUNC10 (MULT);
  smul_highpart_optab = FUNC9 (UNKNOWN);
  umul_highpart_optab = FUNC9 (UNKNOWN);
  smul_widen_optab = FUNC9 (UNKNOWN);
  umul_widen_optab = FUNC9 (UNKNOWN);
  usmul_widen_optab = FUNC9 (UNKNOWN);
  sdiv_optab = FUNC9 (DIV);
  sdivv_optab = FUNC10 (DIV);
  sdivmod_optab = FUNC9 (UNKNOWN);
  udiv_optab = FUNC9 (UDIV);
  udivmod_optab = FUNC9 (UNKNOWN);
  smod_optab = FUNC9 (MOD);
  umod_optab = FUNC9 (UMOD);
  fmod_optab = FUNC9 (UNKNOWN);
  drem_optab = FUNC9 (UNKNOWN);
  ftrunc_optab = FUNC9 (UNKNOWN);
  and_optab = FUNC9 (AND);
  ior_optab = FUNC9 (IOR);
  xor_optab = FUNC9 (XOR);
  ashl_optab = FUNC9 (ASHIFT);
  ashr_optab = FUNC9 (ASHIFTRT);
  lshr_optab = FUNC9 (LSHIFTRT);
  rotl_optab = FUNC9 (ROTATE);
  rotr_optab = FUNC9 (ROTATERT);
  smin_optab = FUNC9 (SMIN);
  smax_optab = FUNC9 (SMAX);
  umin_optab = FUNC9 (UMIN);
  umax_optab = FUNC9 (UMAX);
  pow_optab = FUNC9 (UNKNOWN);
  atan2_optab = FUNC9 (UNKNOWN);

  /* These three have codes assigned exclusively for the sake of
     have_insn_for.  */
  mov_optab = FUNC9 (SET);
  movstrict_optab = FUNC9 (STRICT_LOW_PART);
  cmp_optab = FUNC9 (COMPARE);

  ucmp_optab = FUNC9 (UNKNOWN);
  tst_optab = FUNC9 (UNKNOWN);

  eq_optab = FUNC9 (EQ);
  ne_optab = FUNC9 (NE);
  gt_optab = FUNC9 (GT);
  ge_optab = FUNC9 (GE);
  lt_optab = FUNC9 (LT);
  le_optab = FUNC9 (LE);
  unord_optab = FUNC9 (UNORDERED);

  neg_optab = FUNC9 (NEG);
  negv_optab = FUNC10 (NEG);
  abs_optab = FUNC9 (ABS);
  absv_optab = FUNC10 (ABS);
  addcc_optab = FUNC9 (UNKNOWN);
  one_cmpl_optab = FUNC9 (NOT);
  bswap_optab = FUNC9 (BSWAP);
  ffs_optab = FUNC9 (FFS);
  clz_optab = FUNC9 (CLZ);
  ctz_optab = FUNC9 (CTZ);
  popcount_optab = FUNC9 (POPCOUNT);
  parity_optab = FUNC9 (PARITY);
  sqrt_optab = FUNC9 (SQRT);
  floor_optab = FUNC9 (UNKNOWN);
  lfloor_optab = FUNC9 (UNKNOWN);
  ceil_optab = FUNC9 (UNKNOWN);
  lceil_optab = FUNC9 (UNKNOWN);
  round_optab = FUNC9 (UNKNOWN);
  btrunc_optab = FUNC9 (UNKNOWN);
  nearbyint_optab = FUNC9 (UNKNOWN);
  rint_optab = FUNC9 (UNKNOWN);
  lrint_optab = FUNC9 (UNKNOWN);
  sincos_optab = FUNC9 (UNKNOWN);
  sin_optab = FUNC9 (UNKNOWN);
  asin_optab = FUNC9 (UNKNOWN);
  cos_optab = FUNC9 (UNKNOWN);
  acos_optab = FUNC9 (UNKNOWN);
  exp_optab = FUNC9 (UNKNOWN);
  exp10_optab = FUNC9 (UNKNOWN);
  exp2_optab = FUNC9 (UNKNOWN);
  expm1_optab = FUNC9 (UNKNOWN);
  ldexp_optab = FUNC9 (UNKNOWN);
  logb_optab = FUNC9 (UNKNOWN);
  ilogb_optab = FUNC9 (UNKNOWN);
  log_optab = FUNC9 (UNKNOWN);
  log10_optab = FUNC9 (UNKNOWN);
  log2_optab = FUNC9 (UNKNOWN);
  log1p_optab = FUNC9 (UNKNOWN);
  tan_optab = FUNC9 (UNKNOWN);
  atan_optab = FUNC9 (UNKNOWN);
  copysign_optab = FUNC9 (UNKNOWN);

  strlen_optab = FUNC9 (UNKNOWN);
  cbranch_optab = FUNC9 (UNKNOWN);
  cmov_optab = FUNC9 (UNKNOWN);
  cstore_optab = FUNC9 (UNKNOWN);
  push_optab = FUNC9 (UNKNOWN);

  reduc_smax_optab = FUNC9 (UNKNOWN);
  reduc_umax_optab = FUNC9 (UNKNOWN);
  reduc_smin_optab = FUNC9 (UNKNOWN);
  reduc_umin_optab = FUNC9 (UNKNOWN);
  reduc_splus_optab = FUNC9 (UNKNOWN);
  reduc_uplus_optab = FUNC9 (UNKNOWN);

  ssum_widen_optab = FUNC9 (UNKNOWN);
  usum_widen_optab = FUNC9 (UNKNOWN);
  sdot_prod_optab = FUNC9 (UNKNOWN); 
  udot_prod_optab = FUNC9 (UNKNOWN);

  vec_extract_optab = FUNC9 (UNKNOWN);
  vec_set_optab = FUNC9 (UNKNOWN);
  vec_init_optab = FUNC9 (UNKNOWN);
  vec_shl_optab = FUNC9 (UNKNOWN);
  vec_shr_optab = FUNC9 (UNKNOWN);
  vec_realign_load_optab = FUNC9 (UNKNOWN);
  movmisalign_optab = FUNC9 (UNKNOWN);

  powi_optab = FUNC9 (UNKNOWN);

  /* Conversions.  */
  sext_optab = FUNC3 (SIGN_EXTEND);
  zext_optab = FUNC3 (ZERO_EXTEND);
  trunc_optab = FUNC3 (TRUNCATE);
  sfix_optab = FUNC3 (FIX);
  ufix_optab = FUNC3 (UNSIGNED_FIX);
  sfixtrunc_optab = FUNC3 (UNKNOWN);
  ufixtrunc_optab = FUNC3 (UNKNOWN);
  sfloat_optab = FUNC3 (FLOAT);
  ufloat_optab = FUNC3 (UNSIGNED_FLOAT);

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

  /* Fill in the optabs with the insns we support.  */
  FUNC2 ();

  /* Initialize the optabs with the names of the library functions.  */
  FUNC5 (add_optab, "add", '3');
  FUNC4 (add_optab, "add", '3');
  FUNC5 (addv_optab, "addv", '3');
  FUNC4 (addv_optab, "add", '3');
  FUNC5 (sub_optab, "sub", '3');
  FUNC4 (sub_optab, "sub", '3');
  FUNC5 (subv_optab, "subv", '3');
  FUNC4 (subv_optab, "sub", '3');
  FUNC5 (smul_optab, "mul", '3');
  FUNC4 (smul_optab, "mul", '3');
  FUNC5 (smulv_optab, "mulv", '3');
  FUNC4 (smulv_optab, "mul", '3');
  FUNC5 (sdiv_optab, "div", '3');
  FUNC4 (sdiv_optab, "div", '3');
  FUNC5 (sdivv_optab, "divv", '3');
  FUNC5 (udiv_optab, "udiv", '3');
  FUNC5 (sdivmod_optab, "divmod", '4');
  FUNC5 (udivmod_optab, "udivmod", '4');
  FUNC5 (smod_optab, "mod", '3');
  FUNC5 (umod_optab, "umod", '3');
  FUNC4 (ftrunc_optab, "ftrunc", '2');
  FUNC5 (and_optab, "and", '3');
  FUNC5 (ior_optab, "ior", '3');
  FUNC5 (xor_optab, "xor", '3');
  FUNC5 (ashl_optab, "ashl", '3');
  FUNC5 (ashr_optab, "ashr", '3');
  FUNC5 (lshr_optab, "lshr", '3');
  FUNC5 (smin_optab, "min", '3');
  FUNC4 (smin_optab, "min", '3');
  FUNC5 (smax_optab, "max", '3');
  FUNC4 (smax_optab, "max", '3');
  FUNC5 (umin_optab, "umin", '3');
  FUNC5 (umax_optab, "umax", '3');
  FUNC5 (neg_optab, "neg", '2');
  FUNC4 (neg_optab, "neg", '2');
  FUNC5 (negv_optab, "negv", '2');
  FUNC4 (negv_optab, "neg", '2');
  FUNC5 (one_cmpl_optab, "one_cmpl", '2');
  FUNC5 (ffs_optab, "ffs", '2');
  FUNC5 (clz_optab, "clz", '2');
  FUNC5 (ctz_optab, "ctz", '2');
  FUNC5 (popcount_optab, "popcount", '2');
  FUNC5 (parity_optab, "parity", '2');

  /* Comparison libcalls for integers MUST come in pairs,
     signed/unsigned.  */
  FUNC5 (cmp_optab, "cmp", '2');
  FUNC5 (ucmp_optab, "ucmp", '2');
  FUNC4 (cmp_optab, "cmp", '2');

  /* EQ etc are floating point only.  */
  FUNC4 (eq_optab, "eq", '2');
  FUNC4 (ne_optab, "ne", '2');
  FUNC4 (gt_optab, "gt", '2');
  FUNC4 (ge_optab, "ge", '2');
  FUNC4 (lt_optab, "lt", '2');
  FUNC4 (le_optab, "le", '2');
  FUNC4 (unord_optab, "unord", '2');

  FUNC4 (powi_optab, "powi", '2');

  /* Conversions.  */
  FUNC6 (sfloat_optab, "float",
				 MODE_INT, MODE_FLOAT);
  FUNC6 (sfloat_optab, "float",
				 MODE_INT, MODE_DECIMAL_FLOAT);
  FUNC6 (ufloat_optab, "floatun",
				 MODE_INT, MODE_FLOAT);
  FUNC6 (ufloat_optab, "floatun",
				 MODE_INT, MODE_DECIMAL_FLOAT);
  FUNC6 (sfix_optab, "fix",
				 MODE_FLOAT, MODE_INT);
  FUNC6 (sfix_optab, "fix",
				 MODE_DECIMAL_FLOAT, MODE_INT);
  FUNC6 (ufix_optab, "fixuns",
				 MODE_FLOAT, MODE_INT);
  FUNC6 (ufix_optab, "fixuns",
				 MODE_DECIMAL_FLOAT, MODE_INT);
  FUNC6 (ufloat_optab, "floatuns",
				 MODE_INT, MODE_DECIMAL_FLOAT);

  /* sext_optab is also used for FLOAT_EXTEND.  */
  FUNC7 (sext_optab, "extend", MODE_FLOAT, true);
  FUNC7 (sext_optab, "extend", MODE_DECIMAL_FLOAT, true);
  FUNC6 (sext_optab, "extend", MODE_FLOAT, MODE_DECIMAL_FLOAT);
  FUNC6 (sext_optab, "extend", MODE_DECIMAL_FLOAT, MODE_FLOAT);
  FUNC7 (trunc_optab, "trunc", MODE_FLOAT, false);
  FUNC7 (trunc_optab, "trunc", MODE_DECIMAL_FLOAT, false);
  FUNC6 (trunc_optab, "trunc", MODE_FLOAT, MODE_DECIMAL_FLOAT);
  FUNC6 (trunc_optab, "trunc", MODE_DECIMAL_FLOAT, MODE_FLOAT);

  /* Explicitly initialize the bswap libfuncs since we need them to be
     valid for things other than word_mode.  */
  FUNC12 (bswap_optab, SImode, "__bswapsi2");
  FUNC12 (bswap_optab, DImode, "__bswapdi2");

  /* Use cabs for double complex abs, since systems generally have cabs.
     Don't define any libcall for float complex, so that cabs will be used.  */
  if (complex_double_type_node)
    abs_optab->handlers[FUNC0 (complex_double_type_node)].libfunc
      = FUNC8 ("cabs");

  /* The ffs function operates on `int'.  */
  ffs_optab->handlers[(int) FUNC11 (INT_TYPE_SIZE, MODE_INT, 0)].libfunc
    = FUNC8 ("ffs");

  abort_libfunc = FUNC8 ("abort");
  memcpy_libfunc = FUNC8 ("memcpy");
  memmove_libfunc = FUNC8 ("memmove");
  memcmp_libfunc = FUNC8 ("memcmp");
  memset_libfunc = FUNC8 ("memset");
  setbits_libfunc = FUNC8 ("__setbits");

#ifndef DONT_USE_BUILTIN_SETJMP
  setjmp_libfunc = FUNC8 ("__builtin_setjmp");
  longjmp_libfunc = FUNC8 ("__builtin_longjmp");
#else
  setjmp_libfunc = init_one_libfunc ("setjmp");
  longjmp_libfunc = init_one_libfunc ("longjmp");
#endif
  unwind_sjlj_register_libfunc = FUNC8 ("_Unwind_SjLj_Register");
  unwind_sjlj_unregister_libfunc
    = FUNC8 ("_Unwind_SjLj_Unregister");

  /* For function entry/exit instrumentation.  */
  profile_function_entry_libfunc
    = FUNC8 ("__cyg_profile_func_enter");
  profile_function_exit_libfunc
    = FUNC8 ("__cyg_profile_func_exit");

  gcov_flush_libfunc = FUNC8 ("__gcov_flush");

  if (HAVE_conditional_trap)
    trap_rtx = FUNC1 (EQ, VOIDmode, NULL_RTX, NULL_RTX);

  /* Allow the target to add more libcalls or rename some, etc.  */
  targetm.init_libfuncs ();
}