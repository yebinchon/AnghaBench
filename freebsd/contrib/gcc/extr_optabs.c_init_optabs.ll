; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_optabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_init_optabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { i8* }
%struct.TYPE_53__ = type { %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i8* }
%struct.TYPE_49__ = type { i32 (...)* }

@NUM_RTX_CODE = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i8* null, align 8
@setcc_gen_code = common dso_local global i8** null, align 8
@NUM_MACHINE_MODES = common dso_local global i32 0, align 4
@vcond_gen_code = common dso_local global i8** null, align 8
@vcondu_gen_code = common dso_local global i8** null, align 8
@PLUS = common dso_local global i32 0, align 4
@add_optab = common dso_local global %struct.TYPE_52__* null, align 8
@addv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@MINUS = common dso_local global i32 0, align 4
@sub_optab = common dso_local global %struct.TYPE_52__* null, align 8
@subv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@MULT = common dso_local global i32 0, align 4
@smul_optab = common dso_local global %struct.TYPE_52__* null, align 8
@smulv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@smul_highpart_optab = common dso_local global i8* null, align 8
@umul_highpart_optab = common dso_local global i8* null, align 8
@smul_widen_optab = common dso_local global i8* null, align 8
@umul_widen_optab = common dso_local global i8* null, align 8
@usmul_widen_optab = common dso_local global i8* null, align 8
@DIV = common dso_local global i32 0, align 4
@sdiv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@sdivv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@sdivmod_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UDIV = common dso_local global i32 0, align 4
@udiv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@udivmod_optab = common dso_local global %struct.TYPE_52__* null, align 8
@MOD = common dso_local global i32 0, align 4
@smod_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UMOD = common dso_local global i32 0, align 4
@umod_optab = common dso_local global %struct.TYPE_52__* null, align 8
@fmod_optab = common dso_local global i8* null, align 8
@drem_optab = common dso_local global i8* null, align 8
@ftrunc_optab = common dso_local global %struct.TYPE_52__* null, align 8
@AND = common dso_local global i32 0, align 4
@and_optab = common dso_local global %struct.TYPE_52__* null, align 8
@IOR = common dso_local global i32 0, align 4
@ior_optab = common dso_local global %struct.TYPE_52__* null, align 8
@XOR = common dso_local global i32 0, align 4
@xor_optab = common dso_local global %struct.TYPE_52__* null, align 8
@ASHIFT = common dso_local global i32 0, align 4
@ashl_optab = common dso_local global %struct.TYPE_52__* null, align 8
@ASHIFTRT = common dso_local global i32 0, align 4
@ashr_optab = common dso_local global %struct.TYPE_52__* null, align 8
@LSHIFTRT = common dso_local global i32 0, align 4
@lshr_optab = common dso_local global %struct.TYPE_52__* null, align 8
@ROTATE = common dso_local global i32 0, align 4
@rotl_optab = common dso_local global i8* null, align 8
@ROTATERT = common dso_local global i32 0, align 4
@rotr_optab = common dso_local global i8* null, align 8
@SMIN = common dso_local global i32 0, align 4
@smin_optab = common dso_local global %struct.TYPE_52__* null, align 8
@SMAX = common dso_local global i32 0, align 4
@smax_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UMIN = common dso_local global i32 0, align 4
@umin_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UMAX = common dso_local global i32 0, align 4
@umax_optab = common dso_local global %struct.TYPE_52__* null, align 8
@pow_optab = common dso_local global i8* null, align 8
@atan2_optab = common dso_local global i8* null, align 8
@SET = common dso_local global i32 0, align 4
@mov_optab = common dso_local global i8* null, align 8
@STRICT_LOW_PART = common dso_local global i32 0, align 4
@movstrict_optab = common dso_local global i8* null, align 8
@COMPARE = common dso_local global i32 0, align 4
@cmp_optab = common dso_local global %struct.TYPE_52__* null, align 8
@ucmp_optab = common dso_local global %struct.TYPE_52__* null, align 8
@tst_optab = common dso_local global i8* null, align 8
@EQ = common dso_local global i32 0, align 4
@eq_optab = common dso_local global %struct.TYPE_52__* null, align 8
@NE = common dso_local global i32 0, align 4
@ne_optab = common dso_local global %struct.TYPE_52__* null, align 8
@GT = common dso_local global i32 0, align 4
@gt_optab = common dso_local global %struct.TYPE_52__* null, align 8
@GE = common dso_local global i32 0, align 4
@ge_optab = common dso_local global %struct.TYPE_52__* null, align 8
@LT = common dso_local global i32 0, align 4
@lt_optab = common dso_local global %struct.TYPE_52__* null, align 8
@LE = common dso_local global i32 0, align 4
@le_optab = common dso_local global %struct.TYPE_52__* null, align 8
@UNORDERED = common dso_local global i32 0, align 4
@unord_optab = common dso_local global %struct.TYPE_52__* null, align 8
@NEG = common dso_local global i32 0, align 4
@neg_optab = common dso_local global %struct.TYPE_52__* null, align 8
@negv_optab = common dso_local global %struct.TYPE_52__* null, align 8
@ABS = common dso_local global i32 0, align 4
@abs_optab = common dso_local global %struct.TYPE_53__* null, align 8
@absv_optab = common dso_local global i8* null, align 8
@addcc_optab = common dso_local global i8* null, align 8
@NOT = common dso_local global i32 0, align 4
@one_cmpl_optab = common dso_local global %struct.TYPE_52__* null, align 8
@BSWAP = common dso_local global i32 0, align 4
@bswap_optab = common dso_local global i8* null, align 8
@FFS = common dso_local global i32 0, align 4
@ffs_optab = common dso_local global %struct.TYPE_52__* null, align 8
@CLZ = common dso_local global i32 0, align 4
@clz_optab = common dso_local global %struct.TYPE_52__* null, align 8
@CTZ = common dso_local global i32 0, align 4
@ctz_optab = common dso_local global %struct.TYPE_52__* null, align 8
@POPCOUNT = common dso_local global i32 0, align 4
@popcount_optab = common dso_local global %struct.TYPE_52__* null, align 8
@PARITY = common dso_local global i32 0, align 4
@parity_optab = common dso_local global %struct.TYPE_52__* null, align 8
@SQRT = common dso_local global i32 0, align 4
@sqrt_optab = common dso_local global i8* null, align 8
@floor_optab = common dso_local global i8* null, align 8
@lfloor_optab = common dso_local global i8* null, align 8
@ceil_optab = common dso_local global i8* null, align 8
@lceil_optab = common dso_local global i8* null, align 8
@round_optab = common dso_local global i8* null, align 8
@btrunc_optab = common dso_local global i8* null, align 8
@nearbyint_optab = common dso_local global i8* null, align 8
@rint_optab = common dso_local global i8* null, align 8
@lrint_optab = common dso_local global i8* null, align 8
@sincos_optab = common dso_local global i8* null, align 8
@sin_optab = common dso_local global i8* null, align 8
@asin_optab = common dso_local global i8* null, align 8
@cos_optab = common dso_local global i8* null, align 8
@acos_optab = common dso_local global i8* null, align 8
@exp_optab = common dso_local global i8* null, align 8
@exp10_optab = common dso_local global i8* null, align 8
@exp2_optab = common dso_local global i8* null, align 8
@expm1_optab = common dso_local global i8* null, align 8
@ldexp_optab = common dso_local global i8* null, align 8
@logb_optab = common dso_local global i8* null, align 8
@ilogb_optab = common dso_local global i8* null, align 8
@log_optab = common dso_local global i8* null, align 8
@log10_optab = common dso_local global i8* null, align 8
@log2_optab = common dso_local global i8* null, align 8
@log1p_optab = common dso_local global i8* null, align 8
@tan_optab = common dso_local global i8* null, align 8
@atan_optab = common dso_local global i8* null, align 8
@copysign_optab = common dso_local global i8* null, align 8
@strlen_optab = common dso_local global i8* null, align 8
@cbranch_optab = common dso_local global i8* null, align 8
@cmov_optab = common dso_local global i8* null, align 8
@cstore_optab = common dso_local global i8* null, align 8
@push_optab = common dso_local global i8* null, align 8
@reduc_smax_optab = common dso_local global i8* null, align 8
@reduc_umax_optab = common dso_local global i8* null, align 8
@reduc_smin_optab = common dso_local global i8* null, align 8
@reduc_umin_optab = common dso_local global i8* null, align 8
@reduc_splus_optab = common dso_local global i8* null, align 8
@reduc_uplus_optab = common dso_local global i8* null, align 8
@ssum_widen_optab = common dso_local global i8* null, align 8
@usum_widen_optab = common dso_local global i8* null, align 8
@sdot_prod_optab = common dso_local global i8* null, align 8
@udot_prod_optab = common dso_local global i8* null, align 8
@vec_extract_optab = common dso_local global i8* null, align 8
@vec_set_optab = common dso_local global i8* null, align 8
@vec_init_optab = common dso_local global i8* null, align 8
@vec_shl_optab = common dso_local global i8* null, align 8
@vec_shr_optab = common dso_local global i8* null, align 8
@vec_realign_load_optab = common dso_local global i8* null, align 8
@movmisalign_optab = common dso_local global i8* null, align 8
@powi_optab = common dso_local global %struct.TYPE_52__* null, align 8
@SIGN_EXTEND = common dso_local global i32 0, align 4
@sext_optab = common dso_local global i8* null, align 8
@ZERO_EXTEND = common dso_local global i32 0, align 4
@zext_optab = common dso_local global i8* null, align 8
@TRUNCATE = common dso_local global i32 0, align 4
@trunc_optab = common dso_local global i8* null, align 8
@FIX = common dso_local global i32 0, align 4
@sfix_optab = common dso_local global i8* null, align 8
@UNSIGNED_FIX = common dso_local global i32 0, align 4
@ufix_optab = common dso_local global i8* null, align 8
@sfixtrunc_optab = common dso_local global i8* null, align 8
@ufixtrunc_optab = common dso_local global i8* null, align 8
@FLOAT = common dso_local global i32 0, align 4
@sfloat_optab = common dso_local global i8* null, align 8
@UNSIGNED_FLOAT = common dso_local global i32 0, align 4
@ufloat_optab = common dso_local global i8* null, align 8
@movmem_optab = common dso_local global i8** null, align 8
@cmpstr_optab = common dso_local global i8** null, align 8
@cmpstrn_optab = common dso_local global i8** null, align 8
@cmpmem_optab = common dso_local global i8** null, align 8
@setmem_optab = common dso_local global i8** null, align 8
@sync_add_optab = common dso_local global i8** null, align 8
@sync_sub_optab = common dso_local global i8** null, align 8
@sync_ior_optab = common dso_local global i8** null, align 8
@sync_and_optab = common dso_local global i8** null, align 8
@sync_xor_optab = common dso_local global i8** null, align 8
@sync_nand_optab = common dso_local global i8** null, align 8
@sync_old_add_optab = common dso_local global i8** null, align 8
@sync_old_sub_optab = common dso_local global i8** null, align 8
@sync_old_ior_optab = common dso_local global i8** null, align 8
@sync_old_and_optab = common dso_local global i8** null, align 8
@sync_old_xor_optab = common dso_local global i8** null, align 8
@sync_old_nand_optab = common dso_local global i8** null, align 8
@sync_new_add_optab = common dso_local global i8** null, align 8
@sync_new_sub_optab = common dso_local global i8** null, align 8
@sync_new_ior_optab = common dso_local global i8** null, align 8
@sync_new_and_optab = common dso_local global i8** null, align 8
@sync_new_xor_optab = common dso_local global i8** null, align 8
@sync_new_nand_optab = common dso_local global i8** null, align 8
@sync_compare_and_swap = common dso_local global i8** null, align 8
@sync_compare_and_swap_cc = common dso_local global i8** null, align 8
@sync_lock_test_and_set = common dso_local global i8** null, align 8
@sync_lock_release = common dso_local global i8** null, align 8
@reload_out_optab = common dso_local global i8** null, align 8
@reload_in_optab = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"addv\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"subv\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mulv\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"divv\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"udivmod\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ftrunc\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ashl\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"lshr\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"negv\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"one_cmpl\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"clz\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"ctz\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"popcount\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"ucmp\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"unord\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"powi\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@MODE_INT = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@MODE_DECIMAL_FLOAT = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"floatun\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"fixuns\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"floatuns\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@SImode = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [11 x i8] c"__bswapsi2\00", align 1
@DImode = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [11 x i8] c"__bswapdi2\00", align 1
@complex_double_type_node = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"cabs\00", align 1
@INT_TYPE_SIZE = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@abort_libfunc = common dso_local global i8* null, align 8
@.str.53 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@memcpy_libfunc = common dso_local global i8* null, align 8
@.str.54 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@memmove_libfunc = common dso_local global i8* null, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@memcmp_libfunc = common dso_local global i8* null, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@memset_libfunc = common dso_local global i8* null, align 8
@.str.57 = private unnamed_addr constant [10 x i8] c"__setbits\00", align 1
@setbits_libfunc = common dso_local global i8* null, align 8
@.str.58 = private unnamed_addr constant [17 x i8] c"__builtin_setjmp\00", align 1
@setjmp_libfunc = common dso_local global i8* null, align 8
@.str.59 = private unnamed_addr constant [18 x i8] c"__builtin_longjmp\00", align 1
@longjmp_libfunc = common dso_local global i8* null, align 8
@.str.60 = private unnamed_addr constant [22 x i8] c"_Unwind_SjLj_Register\00", align 1
@unwind_sjlj_register_libfunc = common dso_local global i8* null, align 8
@.str.61 = private unnamed_addr constant [24 x i8] c"_Unwind_SjLj_Unregister\00", align 1
@unwind_sjlj_unregister_libfunc = common dso_local global i8* null, align 8
@.str.62 = private unnamed_addr constant [25 x i8] c"__cyg_profile_func_enter\00", align 1
@profile_function_entry_libfunc = common dso_local global i8* null, align 8
@.str.63 = private unnamed_addr constant [24 x i8] c"__cyg_profile_func_exit\00", align 1
@profile_function_exit_libfunc = common dso_local global i8* null, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"__gcov_flush\00", align 1
@gcov_flush_libfunc = common dso_local global i8* null, align 8
@HAVE_conditional_trap = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@trap_rtx = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_49__ zeroinitializer, align 8
@movcc_gen_code = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_optabs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_RTX_CODE, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i8*, i8** @CODE_FOR_nothing, align 8
  %8 = load i8**, i8*** @setcc_gen_code, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  store i8* %7, i8** %11, align 8
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @NUM_MACHINE_MODES, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i8*, i8** @CODE_FOR_nothing, align 8
  %22 = load i8**, i8*** @vcond_gen_code, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %21, i8** %25, align 8
  %26 = load i8*, i8** @CODE_FOR_nothing, align 8
  %27 = load i8**, i8*** @vcondu_gen_code, align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %1, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @PLUS, align 4
  %36 = call i8* @init_optab(i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %37, %struct.TYPE_52__** @add_optab, align 8
  %38 = load i32, i32* @PLUS, align 4
  %39 = call i8* @init_optabv(i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %40, %struct.TYPE_52__** @addv_optab, align 8
  %41 = load i32, i32* @MINUS, align 4
  %42 = call i8* @init_optab(i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %43, %struct.TYPE_52__** @sub_optab, align 8
  %44 = load i32, i32* @MINUS, align 4
  %45 = call i8* @init_optabv(i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %46, %struct.TYPE_52__** @subv_optab, align 8
  %47 = load i32, i32* @MULT, align 4
  %48 = call i8* @init_optab(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %49, %struct.TYPE_52__** @smul_optab, align 8
  %50 = load i32, i32* @MULT, align 4
  %51 = call i8* @init_optabv(i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %52, %struct.TYPE_52__** @smulv_optab, align 8
  %53 = load i32, i32* @UNKNOWN, align 4
  %54 = call i8* @init_optab(i32 %53)
  store i8* %54, i8** @smul_highpart_optab, align 8
  %55 = load i32, i32* @UNKNOWN, align 4
  %56 = call i8* @init_optab(i32 %55)
  store i8* %56, i8** @umul_highpart_optab, align 8
  %57 = load i32, i32* @UNKNOWN, align 4
  %58 = call i8* @init_optab(i32 %57)
  store i8* %58, i8** @smul_widen_optab, align 8
  %59 = load i32, i32* @UNKNOWN, align 4
  %60 = call i8* @init_optab(i32 %59)
  store i8* %60, i8** @umul_widen_optab, align 8
  %61 = load i32, i32* @UNKNOWN, align 4
  %62 = call i8* @init_optab(i32 %61)
  store i8* %62, i8** @usmul_widen_optab, align 8
  %63 = load i32, i32* @DIV, align 4
  %64 = call i8* @init_optab(i32 %63)
  %65 = bitcast i8* %64 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %65, %struct.TYPE_52__** @sdiv_optab, align 8
  %66 = load i32, i32* @DIV, align 4
  %67 = call i8* @init_optabv(i32 %66)
  %68 = bitcast i8* %67 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %68, %struct.TYPE_52__** @sdivv_optab, align 8
  %69 = load i32, i32* @UNKNOWN, align 4
  %70 = call i8* @init_optab(i32 %69)
  %71 = bitcast i8* %70 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %71, %struct.TYPE_52__** @sdivmod_optab, align 8
  %72 = load i32, i32* @UDIV, align 4
  %73 = call i8* @init_optab(i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %74, %struct.TYPE_52__** @udiv_optab, align 8
  %75 = load i32, i32* @UNKNOWN, align 4
  %76 = call i8* @init_optab(i32 %75)
  %77 = bitcast i8* %76 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %77, %struct.TYPE_52__** @udivmod_optab, align 8
  %78 = load i32, i32* @MOD, align 4
  %79 = call i8* @init_optab(i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %80, %struct.TYPE_52__** @smod_optab, align 8
  %81 = load i32, i32* @UMOD, align 4
  %82 = call i8* @init_optab(i32 %81)
  %83 = bitcast i8* %82 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %83, %struct.TYPE_52__** @umod_optab, align 8
  %84 = load i32, i32* @UNKNOWN, align 4
  %85 = call i8* @init_optab(i32 %84)
  store i8* %85, i8** @fmod_optab, align 8
  %86 = load i32, i32* @UNKNOWN, align 4
  %87 = call i8* @init_optab(i32 %86)
  store i8* %87, i8** @drem_optab, align 8
  %88 = load i32, i32* @UNKNOWN, align 4
  %89 = call i8* @init_optab(i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %90, %struct.TYPE_52__** @ftrunc_optab, align 8
  %91 = load i32, i32* @AND, align 4
  %92 = call i8* @init_optab(i32 %91)
  %93 = bitcast i8* %92 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %93, %struct.TYPE_52__** @and_optab, align 8
  %94 = load i32, i32* @IOR, align 4
  %95 = call i8* @init_optab(i32 %94)
  %96 = bitcast i8* %95 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %96, %struct.TYPE_52__** @ior_optab, align 8
  %97 = load i32, i32* @XOR, align 4
  %98 = call i8* @init_optab(i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %99, %struct.TYPE_52__** @xor_optab, align 8
  %100 = load i32, i32* @ASHIFT, align 4
  %101 = call i8* @init_optab(i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %102, %struct.TYPE_52__** @ashl_optab, align 8
  %103 = load i32, i32* @ASHIFTRT, align 4
  %104 = call i8* @init_optab(i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %105, %struct.TYPE_52__** @ashr_optab, align 8
  %106 = load i32, i32* @LSHIFTRT, align 4
  %107 = call i8* @init_optab(i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %108, %struct.TYPE_52__** @lshr_optab, align 8
  %109 = load i32, i32* @ROTATE, align 4
  %110 = call i8* @init_optab(i32 %109)
  store i8* %110, i8** @rotl_optab, align 8
  %111 = load i32, i32* @ROTATERT, align 4
  %112 = call i8* @init_optab(i32 %111)
  store i8* %112, i8** @rotr_optab, align 8
  %113 = load i32, i32* @SMIN, align 4
  %114 = call i8* @init_optab(i32 %113)
  %115 = bitcast i8* %114 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %115, %struct.TYPE_52__** @smin_optab, align 8
  %116 = load i32, i32* @SMAX, align 4
  %117 = call i8* @init_optab(i32 %116)
  %118 = bitcast i8* %117 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %118, %struct.TYPE_52__** @smax_optab, align 8
  %119 = load i32, i32* @UMIN, align 4
  %120 = call i8* @init_optab(i32 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %121, %struct.TYPE_52__** @umin_optab, align 8
  %122 = load i32, i32* @UMAX, align 4
  %123 = call i8* @init_optab(i32 %122)
  %124 = bitcast i8* %123 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %124, %struct.TYPE_52__** @umax_optab, align 8
  %125 = load i32, i32* @UNKNOWN, align 4
  %126 = call i8* @init_optab(i32 %125)
  store i8* %126, i8** @pow_optab, align 8
  %127 = load i32, i32* @UNKNOWN, align 4
  %128 = call i8* @init_optab(i32 %127)
  store i8* %128, i8** @atan2_optab, align 8
  %129 = load i32, i32* @SET, align 4
  %130 = call i8* @init_optab(i32 %129)
  store i8* %130, i8** @mov_optab, align 8
  %131 = load i32, i32* @STRICT_LOW_PART, align 4
  %132 = call i8* @init_optab(i32 %131)
  store i8* %132, i8** @movstrict_optab, align 8
  %133 = load i32, i32* @COMPARE, align 4
  %134 = call i8* @init_optab(i32 %133)
  %135 = bitcast i8* %134 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %135, %struct.TYPE_52__** @cmp_optab, align 8
  %136 = load i32, i32* @UNKNOWN, align 4
  %137 = call i8* @init_optab(i32 %136)
  %138 = bitcast i8* %137 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %138, %struct.TYPE_52__** @ucmp_optab, align 8
  %139 = load i32, i32* @UNKNOWN, align 4
  %140 = call i8* @init_optab(i32 %139)
  store i8* %140, i8** @tst_optab, align 8
  %141 = load i32, i32* @EQ, align 4
  %142 = call i8* @init_optab(i32 %141)
  %143 = bitcast i8* %142 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %143, %struct.TYPE_52__** @eq_optab, align 8
  %144 = load i32, i32* @NE, align 4
  %145 = call i8* @init_optab(i32 %144)
  %146 = bitcast i8* %145 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %146, %struct.TYPE_52__** @ne_optab, align 8
  %147 = load i32, i32* @GT, align 4
  %148 = call i8* @init_optab(i32 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %149, %struct.TYPE_52__** @gt_optab, align 8
  %150 = load i32, i32* @GE, align 4
  %151 = call i8* @init_optab(i32 %150)
  %152 = bitcast i8* %151 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %152, %struct.TYPE_52__** @ge_optab, align 8
  %153 = load i32, i32* @LT, align 4
  %154 = call i8* @init_optab(i32 %153)
  %155 = bitcast i8* %154 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %155, %struct.TYPE_52__** @lt_optab, align 8
  %156 = load i32, i32* @LE, align 4
  %157 = call i8* @init_optab(i32 %156)
  %158 = bitcast i8* %157 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %158, %struct.TYPE_52__** @le_optab, align 8
  %159 = load i32, i32* @UNORDERED, align 4
  %160 = call i8* @init_optab(i32 %159)
  %161 = bitcast i8* %160 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %161, %struct.TYPE_52__** @unord_optab, align 8
  %162 = load i32, i32* @NEG, align 4
  %163 = call i8* @init_optab(i32 %162)
  %164 = bitcast i8* %163 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %164, %struct.TYPE_52__** @neg_optab, align 8
  %165 = load i32, i32* @NEG, align 4
  %166 = call i8* @init_optabv(i32 %165)
  %167 = bitcast i8* %166 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %167, %struct.TYPE_52__** @negv_optab, align 8
  %168 = load i32, i32* @ABS, align 4
  %169 = call i8* @init_optab(i32 %168)
  %170 = bitcast i8* %169 to %struct.TYPE_53__*
  store %struct.TYPE_53__* %170, %struct.TYPE_53__** @abs_optab, align 8
  %171 = load i32, i32* @ABS, align 4
  %172 = call i8* @init_optabv(i32 %171)
  store i8* %172, i8** @absv_optab, align 8
  %173 = load i32, i32* @UNKNOWN, align 4
  %174 = call i8* @init_optab(i32 %173)
  store i8* %174, i8** @addcc_optab, align 8
  %175 = load i32, i32* @NOT, align 4
  %176 = call i8* @init_optab(i32 %175)
  %177 = bitcast i8* %176 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %177, %struct.TYPE_52__** @one_cmpl_optab, align 8
  %178 = load i32, i32* @BSWAP, align 4
  %179 = call i8* @init_optab(i32 %178)
  store i8* %179, i8** @bswap_optab, align 8
  %180 = load i32, i32* @FFS, align 4
  %181 = call i8* @init_optab(i32 %180)
  %182 = bitcast i8* %181 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %182, %struct.TYPE_52__** @ffs_optab, align 8
  %183 = load i32, i32* @CLZ, align 4
  %184 = call i8* @init_optab(i32 %183)
  %185 = bitcast i8* %184 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %185, %struct.TYPE_52__** @clz_optab, align 8
  %186 = load i32, i32* @CTZ, align 4
  %187 = call i8* @init_optab(i32 %186)
  %188 = bitcast i8* %187 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %188, %struct.TYPE_52__** @ctz_optab, align 8
  %189 = load i32, i32* @POPCOUNT, align 4
  %190 = call i8* @init_optab(i32 %189)
  %191 = bitcast i8* %190 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %191, %struct.TYPE_52__** @popcount_optab, align 8
  %192 = load i32, i32* @PARITY, align 4
  %193 = call i8* @init_optab(i32 %192)
  %194 = bitcast i8* %193 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %194, %struct.TYPE_52__** @parity_optab, align 8
  %195 = load i32, i32* @SQRT, align 4
  %196 = call i8* @init_optab(i32 %195)
  store i8* %196, i8** @sqrt_optab, align 8
  %197 = load i32, i32* @UNKNOWN, align 4
  %198 = call i8* @init_optab(i32 %197)
  store i8* %198, i8** @floor_optab, align 8
  %199 = load i32, i32* @UNKNOWN, align 4
  %200 = call i8* @init_optab(i32 %199)
  store i8* %200, i8** @lfloor_optab, align 8
  %201 = load i32, i32* @UNKNOWN, align 4
  %202 = call i8* @init_optab(i32 %201)
  store i8* %202, i8** @ceil_optab, align 8
  %203 = load i32, i32* @UNKNOWN, align 4
  %204 = call i8* @init_optab(i32 %203)
  store i8* %204, i8** @lceil_optab, align 8
  %205 = load i32, i32* @UNKNOWN, align 4
  %206 = call i8* @init_optab(i32 %205)
  store i8* %206, i8** @round_optab, align 8
  %207 = load i32, i32* @UNKNOWN, align 4
  %208 = call i8* @init_optab(i32 %207)
  store i8* %208, i8** @btrunc_optab, align 8
  %209 = load i32, i32* @UNKNOWN, align 4
  %210 = call i8* @init_optab(i32 %209)
  store i8* %210, i8** @nearbyint_optab, align 8
  %211 = load i32, i32* @UNKNOWN, align 4
  %212 = call i8* @init_optab(i32 %211)
  store i8* %212, i8** @rint_optab, align 8
  %213 = load i32, i32* @UNKNOWN, align 4
  %214 = call i8* @init_optab(i32 %213)
  store i8* %214, i8** @lrint_optab, align 8
  %215 = load i32, i32* @UNKNOWN, align 4
  %216 = call i8* @init_optab(i32 %215)
  store i8* %216, i8** @sincos_optab, align 8
  %217 = load i32, i32* @UNKNOWN, align 4
  %218 = call i8* @init_optab(i32 %217)
  store i8* %218, i8** @sin_optab, align 8
  %219 = load i32, i32* @UNKNOWN, align 4
  %220 = call i8* @init_optab(i32 %219)
  store i8* %220, i8** @asin_optab, align 8
  %221 = load i32, i32* @UNKNOWN, align 4
  %222 = call i8* @init_optab(i32 %221)
  store i8* %222, i8** @cos_optab, align 8
  %223 = load i32, i32* @UNKNOWN, align 4
  %224 = call i8* @init_optab(i32 %223)
  store i8* %224, i8** @acos_optab, align 8
  %225 = load i32, i32* @UNKNOWN, align 4
  %226 = call i8* @init_optab(i32 %225)
  store i8* %226, i8** @exp_optab, align 8
  %227 = load i32, i32* @UNKNOWN, align 4
  %228 = call i8* @init_optab(i32 %227)
  store i8* %228, i8** @exp10_optab, align 8
  %229 = load i32, i32* @UNKNOWN, align 4
  %230 = call i8* @init_optab(i32 %229)
  store i8* %230, i8** @exp2_optab, align 8
  %231 = load i32, i32* @UNKNOWN, align 4
  %232 = call i8* @init_optab(i32 %231)
  store i8* %232, i8** @expm1_optab, align 8
  %233 = load i32, i32* @UNKNOWN, align 4
  %234 = call i8* @init_optab(i32 %233)
  store i8* %234, i8** @ldexp_optab, align 8
  %235 = load i32, i32* @UNKNOWN, align 4
  %236 = call i8* @init_optab(i32 %235)
  store i8* %236, i8** @logb_optab, align 8
  %237 = load i32, i32* @UNKNOWN, align 4
  %238 = call i8* @init_optab(i32 %237)
  store i8* %238, i8** @ilogb_optab, align 8
  %239 = load i32, i32* @UNKNOWN, align 4
  %240 = call i8* @init_optab(i32 %239)
  store i8* %240, i8** @log_optab, align 8
  %241 = load i32, i32* @UNKNOWN, align 4
  %242 = call i8* @init_optab(i32 %241)
  store i8* %242, i8** @log10_optab, align 8
  %243 = load i32, i32* @UNKNOWN, align 4
  %244 = call i8* @init_optab(i32 %243)
  store i8* %244, i8** @log2_optab, align 8
  %245 = load i32, i32* @UNKNOWN, align 4
  %246 = call i8* @init_optab(i32 %245)
  store i8* %246, i8** @log1p_optab, align 8
  %247 = load i32, i32* @UNKNOWN, align 4
  %248 = call i8* @init_optab(i32 %247)
  store i8* %248, i8** @tan_optab, align 8
  %249 = load i32, i32* @UNKNOWN, align 4
  %250 = call i8* @init_optab(i32 %249)
  store i8* %250, i8** @atan_optab, align 8
  %251 = load i32, i32* @UNKNOWN, align 4
  %252 = call i8* @init_optab(i32 %251)
  store i8* %252, i8** @copysign_optab, align 8
  %253 = load i32, i32* @UNKNOWN, align 4
  %254 = call i8* @init_optab(i32 %253)
  store i8* %254, i8** @strlen_optab, align 8
  %255 = load i32, i32* @UNKNOWN, align 4
  %256 = call i8* @init_optab(i32 %255)
  store i8* %256, i8** @cbranch_optab, align 8
  %257 = load i32, i32* @UNKNOWN, align 4
  %258 = call i8* @init_optab(i32 %257)
  store i8* %258, i8** @cmov_optab, align 8
  %259 = load i32, i32* @UNKNOWN, align 4
  %260 = call i8* @init_optab(i32 %259)
  store i8* %260, i8** @cstore_optab, align 8
  %261 = load i32, i32* @UNKNOWN, align 4
  %262 = call i8* @init_optab(i32 %261)
  store i8* %262, i8** @push_optab, align 8
  %263 = load i32, i32* @UNKNOWN, align 4
  %264 = call i8* @init_optab(i32 %263)
  store i8* %264, i8** @reduc_smax_optab, align 8
  %265 = load i32, i32* @UNKNOWN, align 4
  %266 = call i8* @init_optab(i32 %265)
  store i8* %266, i8** @reduc_umax_optab, align 8
  %267 = load i32, i32* @UNKNOWN, align 4
  %268 = call i8* @init_optab(i32 %267)
  store i8* %268, i8** @reduc_smin_optab, align 8
  %269 = load i32, i32* @UNKNOWN, align 4
  %270 = call i8* @init_optab(i32 %269)
  store i8* %270, i8** @reduc_umin_optab, align 8
  %271 = load i32, i32* @UNKNOWN, align 4
  %272 = call i8* @init_optab(i32 %271)
  store i8* %272, i8** @reduc_splus_optab, align 8
  %273 = load i32, i32* @UNKNOWN, align 4
  %274 = call i8* @init_optab(i32 %273)
  store i8* %274, i8** @reduc_uplus_optab, align 8
  %275 = load i32, i32* @UNKNOWN, align 4
  %276 = call i8* @init_optab(i32 %275)
  store i8* %276, i8** @ssum_widen_optab, align 8
  %277 = load i32, i32* @UNKNOWN, align 4
  %278 = call i8* @init_optab(i32 %277)
  store i8* %278, i8** @usum_widen_optab, align 8
  %279 = load i32, i32* @UNKNOWN, align 4
  %280 = call i8* @init_optab(i32 %279)
  store i8* %280, i8** @sdot_prod_optab, align 8
  %281 = load i32, i32* @UNKNOWN, align 4
  %282 = call i8* @init_optab(i32 %281)
  store i8* %282, i8** @udot_prod_optab, align 8
  %283 = load i32, i32* @UNKNOWN, align 4
  %284 = call i8* @init_optab(i32 %283)
  store i8* %284, i8** @vec_extract_optab, align 8
  %285 = load i32, i32* @UNKNOWN, align 4
  %286 = call i8* @init_optab(i32 %285)
  store i8* %286, i8** @vec_set_optab, align 8
  %287 = load i32, i32* @UNKNOWN, align 4
  %288 = call i8* @init_optab(i32 %287)
  store i8* %288, i8** @vec_init_optab, align 8
  %289 = load i32, i32* @UNKNOWN, align 4
  %290 = call i8* @init_optab(i32 %289)
  store i8* %290, i8** @vec_shl_optab, align 8
  %291 = load i32, i32* @UNKNOWN, align 4
  %292 = call i8* @init_optab(i32 %291)
  store i8* %292, i8** @vec_shr_optab, align 8
  %293 = load i32, i32* @UNKNOWN, align 4
  %294 = call i8* @init_optab(i32 %293)
  store i8* %294, i8** @vec_realign_load_optab, align 8
  %295 = load i32, i32* @UNKNOWN, align 4
  %296 = call i8* @init_optab(i32 %295)
  store i8* %296, i8** @movmisalign_optab, align 8
  %297 = load i32, i32* @UNKNOWN, align 4
  %298 = call i8* @init_optab(i32 %297)
  %299 = bitcast i8* %298 to %struct.TYPE_52__*
  store %struct.TYPE_52__* %299, %struct.TYPE_52__** @powi_optab, align 8
  %300 = load i32, i32* @SIGN_EXTEND, align 4
  %301 = call i8* @init_convert_optab(i32 %300)
  store i8* %301, i8** @sext_optab, align 8
  %302 = load i32, i32* @ZERO_EXTEND, align 4
  %303 = call i8* @init_convert_optab(i32 %302)
  store i8* %303, i8** @zext_optab, align 8
  %304 = load i32, i32* @TRUNCATE, align 4
  %305 = call i8* @init_convert_optab(i32 %304)
  store i8* %305, i8** @trunc_optab, align 8
  %306 = load i32, i32* @FIX, align 4
  %307 = call i8* @init_convert_optab(i32 %306)
  store i8* %307, i8** @sfix_optab, align 8
  %308 = load i32, i32* @UNSIGNED_FIX, align 4
  %309 = call i8* @init_convert_optab(i32 %308)
  store i8* %309, i8** @ufix_optab, align 8
  %310 = load i32, i32* @UNKNOWN, align 4
  %311 = call i8* @init_convert_optab(i32 %310)
  store i8* %311, i8** @sfixtrunc_optab, align 8
  %312 = load i32, i32* @UNKNOWN, align 4
  %313 = call i8* @init_convert_optab(i32 %312)
  store i8* %313, i8** @ufixtrunc_optab, align 8
  %314 = load i32, i32* @FLOAT, align 4
  %315 = call i8* @init_convert_optab(i32 %314)
  store i8* %315, i8** @sfloat_optab, align 8
  %316 = load i32, i32* @UNSIGNED_FLOAT, align 4
  %317 = call i8* @init_convert_optab(i32 %316)
  store i8* %317, i8** @ufloat_optab, align 8
  store i32 0, i32* %1, align 4
  br label %318

318:                                              ; preds = %467, %34
  %319 = load i32, i32* %1, align 4
  %320 = load i32, i32* @NUM_MACHINE_MODES, align 4
  %321 = icmp ult i32 %319, %320
  br i1 %321, label %322, label %470

322:                                              ; preds = %318
  %323 = load i8*, i8** @CODE_FOR_nothing, align 8
  %324 = load i8**, i8*** @movmem_optab, align 8
  %325 = load i32, i32* %1, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i8*, i8** %324, i64 %326
  store i8* %323, i8** %327, align 8
  %328 = load i8*, i8** @CODE_FOR_nothing, align 8
  %329 = load i8**, i8*** @cmpstr_optab, align 8
  %330 = load i32, i32* %1, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  store i8* %328, i8** %332, align 8
  %333 = load i8*, i8** @CODE_FOR_nothing, align 8
  %334 = load i8**, i8*** @cmpstrn_optab, align 8
  %335 = load i32, i32* %1, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds i8*, i8** %334, i64 %336
  store i8* %333, i8** %337, align 8
  %338 = load i8*, i8** @CODE_FOR_nothing, align 8
  %339 = load i8**, i8*** @cmpmem_optab, align 8
  %340 = load i32, i32* %1, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %338, i8** %342, align 8
  %343 = load i8*, i8** @CODE_FOR_nothing, align 8
  %344 = load i8**, i8*** @setmem_optab, align 8
  %345 = load i32, i32* %1, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i8*, i8** %344, i64 %346
  store i8* %343, i8** %347, align 8
  %348 = load i8*, i8** @CODE_FOR_nothing, align 8
  %349 = load i8**, i8*** @sync_add_optab, align 8
  %350 = load i32, i32* %1, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  store i8* %348, i8** %352, align 8
  %353 = load i8*, i8** @CODE_FOR_nothing, align 8
  %354 = load i8**, i8*** @sync_sub_optab, align 8
  %355 = load i32, i32* %1, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %354, i64 %356
  store i8* %353, i8** %357, align 8
  %358 = load i8*, i8** @CODE_FOR_nothing, align 8
  %359 = load i8**, i8*** @sync_ior_optab, align 8
  %360 = load i32, i32* %1, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i8*, i8** %359, i64 %361
  store i8* %358, i8** %362, align 8
  %363 = load i8*, i8** @CODE_FOR_nothing, align 8
  %364 = load i8**, i8*** @sync_and_optab, align 8
  %365 = load i32, i32* %1, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  store i8* %363, i8** %367, align 8
  %368 = load i8*, i8** @CODE_FOR_nothing, align 8
  %369 = load i8**, i8*** @sync_xor_optab, align 8
  %370 = load i32, i32* %1, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  store i8* %368, i8** %372, align 8
  %373 = load i8*, i8** @CODE_FOR_nothing, align 8
  %374 = load i8**, i8*** @sync_nand_optab, align 8
  %375 = load i32, i32* %1, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i8*, i8** %374, i64 %376
  store i8* %373, i8** %377, align 8
  %378 = load i8*, i8** @CODE_FOR_nothing, align 8
  %379 = load i8**, i8*** @sync_old_add_optab, align 8
  %380 = load i32, i32* %1, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i8*, i8** %379, i64 %381
  store i8* %378, i8** %382, align 8
  %383 = load i8*, i8** @CODE_FOR_nothing, align 8
  %384 = load i8**, i8*** @sync_old_sub_optab, align 8
  %385 = load i32, i32* %1, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i8*, i8** %384, i64 %386
  store i8* %383, i8** %387, align 8
  %388 = load i8*, i8** @CODE_FOR_nothing, align 8
  %389 = load i8**, i8*** @sync_old_ior_optab, align 8
  %390 = load i32, i32* %1, align 4
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds i8*, i8** %389, i64 %391
  store i8* %388, i8** %392, align 8
  %393 = load i8*, i8** @CODE_FOR_nothing, align 8
  %394 = load i8**, i8*** @sync_old_and_optab, align 8
  %395 = load i32, i32* %1, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  store i8* %393, i8** %397, align 8
  %398 = load i8*, i8** @CODE_FOR_nothing, align 8
  %399 = load i8**, i8*** @sync_old_xor_optab, align 8
  %400 = load i32, i32* %1, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i8*, i8** %399, i64 %401
  store i8* %398, i8** %402, align 8
  %403 = load i8*, i8** @CODE_FOR_nothing, align 8
  %404 = load i8**, i8*** @sync_old_nand_optab, align 8
  %405 = load i32, i32* %1, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %404, i64 %406
  store i8* %403, i8** %407, align 8
  %408 = load i8*, i8** @CODE_FOR_nothing, align 8
  %409 = load i8**, i8*** @sync_new_add_optab, align 8
  %410 = load i32, i32* %1, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds i8*, i8** %409, i64 %411
  store i8* %408, i8** %412, align 8
  %413 = load i8*, i8** @CODE_FOR_nothing, align 8
  %414 = load i8**, i8*** @sync_new_sub_optab, align 8
  %415 = load i32, i32* %1, align 4
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds i8*, i8** %414, i64 %416
  store i8* %413, i8** %417, align 8
  %418 = load i8*, i8** @CODE_FOR_nothing, align 8
  %419 = load i8**, i8*** @sync_new_ior_optab, align 8
  %420 = load i32, i32* %1, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  store i8* %418, i8** %422, align 8
  %423 = load i8*, i8** @CODE_FOR_nothing, align 8
  %424 = load i8**, i8*** @sync_new_and_optab, align 8
  %425 = load i32, i32* %1, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds i8*, i8** %424, i64 %426
  store i8* %423, i8** %427, align 8
  %428 = load i8*, i8** @CODE_FOR_nothing, align 8
  %429 = load i8**, i8*** @sync_new_xor_optab, align 8
  %430 = load i32, i32* %1, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i8*, i8** %429, i64 %431
  store i8* %428, i8** %432, align 8
  %433 = load i8*, i8** @CODE_FOR_nothing, align 8
  %434 = load i8**, i8*** @sync_new_nand_optab, align 8
  %435 = load i32, i32* %1, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i8*, i8** %434, i64 %436
  store i8* %433, i8** %437, align 8
  %438 = load i8*, i8** @CODE_FOR_nothing, align 8
  %439 = load i8**, i8*** @sync_compare_and_swap, align 8
  %440 = load i32, i32* %1, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i8*, i8** %439, i64 %441
  store i8* %438, i8** %442, align 8
  %443 = load i8*, i8** @CODE_FOR_nothing, align 8
  %444 = load i8**, i8*** @sync_compare_and_swap_cc, align 8
  %445 = load i32, i32* %1, align 4
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds i8*, i8** %444, i64 %446
  store i8* %443, i8** %447, align 8
  %448 = load i8*, i8** @CODE_FOR_nothing, align 8
  %449 = load i8**, i8*** @sync_lock_test_and_set, align 8
  %450 = load i32, i32* %1, align 4
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds i8*, i8** %449, i64 %451
  store i8* %448, i8** %452, align 8
  %453 = load i8*, i8** @CODE_FOR_nothing, align 8
  %454 = load i8**, i8*** @sync_lock_release, align 8
  %455 = load i32, i32* %1, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds i8*, i8** %454, i64 %456
  store i8* %453, i8** %457, align 8
  %458 = load i8*, i8** @CODE_FOR_nothing, align 8
  %459 = load i8**, i8*** @reload_out_optab, align 8
  %460 = load i32, i32* %1, align 4
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i8*, i8** %459, i64 %461
  store i8* %458, i8** %462, align 8
  %463 = load i8**, i8*** @reload_in_optab, align 8
  %464 = load i32, i32* %1, align 4
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i8*, i8** %463, i64 %465
  store i8* %458, i8** %466, align 8
  br label %467

467:                                              ; preds = %322
  %468 = load i32, i32* %1, align 4
  %469 = add i32 %468, 1
  store i32 %469, i32* %1, align 4
  br label %318

470:                                              ; preds = %318
  %471 = call i32 (...) @init_all_optabs()
  %472 = load %struct.TYPE_52__*, %struct.TYPE_52__** @add_optab, align 8
  %473 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %472, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext 51)
  %474 = load %struct.TYPE_52__*, %struct.TYPE_52__** @add_optab, align 8
  %475 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %474, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext 51)
  %476 = load %struct.TYPE_52__*, %struct.TYPE_52__** @addv_optab, align 8
  %477 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %476, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext 51)
  %478 = load %struct.TYPE_52__*, %struct.TYPE_52__** @addv_optab, align 8
  %479 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %478, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext 51)
  %480 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sub_optab, align 8
  %481 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %480, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 51)
  %482 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sub_optab, align 8
  %483 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %482, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 51)
  %484 = load %struct.TYPE_52__*, %struct.TYPE_52__** @subv_optab, align 8
  %485 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %484, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 signext 51)
  %486 = load %struct.TYPE_52__*, %struct.TYPE_52__** @subv_optab, align 8
  %487 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %486, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext 51)
  %488 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smul_optab, align 8
  %489 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %488, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8 signext 51)
  %490 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smul_optab, align 8
  %491 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %490, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8 signext 51)
  %492 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smulv_optab, align 8
  %493 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %492, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8 signext 51)
  %494 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smulv_optab, align 8
  %495 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %494, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8 signext 51)
  %496 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sdiv_optab, align 8
  %497 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %496, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8 signext 51)
  %498 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sdiv_optab, align 8
  %499 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %498, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8 signext 51)
  %500 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sdivv_optab, align 8
  %501 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %500, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8 signext 51)
  %502 = load %struct.TYPE_52__*, %struct.TYPE_52__** @udiv_optab, align 8
  %503 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %502, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8 signext 51)
  %504 = load %struct.TYPE_52__*, %struct.TYPE_52__** @sdivmod_optab, align 8
  %505 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %504, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8 signext 52)
  %506 = load %struct.TYPE_52__*, %struct.TYPE_52__** @udivmod_optab, align 8
  %507 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %506, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8 signext 52)
  %508 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smod_optab, align 8
  %509 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %508, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8 signext 51)
  %510 = load %struct.TYPE_52__*, %struct.TYPE_52__** @umod_optab, align 8
  %511 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %510, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8 signext 51)
  %512 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ftrunc_optab, align 8
  %513 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8 signext 50)
  %514 = load %struct.TYPE_52__*, %struct.TYPE_52__** @and_optab, align 8
  %515 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %514, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8 signext 51)
  %516 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ior_optab, align 8
  %517 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %516, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8 signext 51)
  %518 = load %struct.TYPE_52__*, %struct.TYPE_52__** @xor_optab, align 8
  %519 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %518, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8 signext 51)
  %520 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ashl_optab, align 8
  %521 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %520, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8 signext 51)
  %522 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ashr_optab, align 8
  %523 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %522, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8 signext 51)
  %524 = load %struct.TYPE_52__*, %struct.TYPE_52__** @lshr_optab, align 8
  %525 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %524, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8 signext 51)
  %526 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smin_optab, align 8
  %527 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %526, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8 signext 51)
  %528 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smin_optab, align 8
  %529 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %528, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8 signext 51)
  %530 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smax_optab, align 8
  %531 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %530, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8 signext 51)
  %532 = load %struct.TYPE_52__*, %struct.TYPE_52__** @smax_optab, align 8
  %533 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %532, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8 signext 51)
  %534 = load %struct.TYPE_52__*, %struct.TYPE_52__** @umin_optab, align 8
  %535 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %534, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8 signext 51)
  %536 = load %struct.TYPE_52__*, %struct.TYPE_52__** @umax_optab, align 8
  %537 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8 signext 51)
  %538 = load %struct.TYPE_52__*, %struct.TYPE_52__** @neg_optab, align 8
  %539 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %538, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8 signext 50)
  %540 = load %struct.TYPE_52__*, %struct.TYPE_52__** @neg_optab, align 8
  %541 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %540, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8 signext 50)
  %542 = load %struct.TYPE_52__*, %struct.TYPE_52__** @negv_optab, align 8
  %543 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %542, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8 signext 50)
  %544 = load %struct.TYPE_52__*, %struct.TYPE_52__** @negv_optab, align 8
  %545 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %544, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8 signext 50)
  %546 = load %struct.TYPE_52__*, %struct.TYPE_52__** @one_cmpl_optab, align 8
  %547 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %546, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8 signext 50)
  %548 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ffs_optab, align 8
  %549 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %548, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8 signext 50)
  %550 = load %struct.TYPE_52__*, %struct.TYPE_52__** @clz_optab, align 8
  %551 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %550, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8 signext 50)
  %552 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ctz_optab, align 8
  %553 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %552, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i8 signext 50)
  %554 = load %struct.TYPE_52__*, %struct.TYPE_52__** @popcount_optab, align 8
  %555 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %554, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8 signext 50)
  %556 = load %struct.TYPE_52__*, %struct.TYPE_52__** @parity_optab, align 8
  %557 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %556, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8 signext 50)
  %558 = load %struct.TYPE_52__*, %struct.TYPE_52__** @cmp_optab, align 8
  %559 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %558, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8 signext 50)
  %560 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ucmp_optab, align 8
  %561 = call i32 @init_integral_libfuncs(%struct.TYPE_52__* %560, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8 signext 50)
  %562 = load %struct.TYPE_52__*, %struct.TYPE_52__** @cmp_optab, align 8
  %563 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %562, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8 signext 50)
  %564 = load %struct.TYPE_52__*, %struct.TYPE_52__** @eq_optab, align 8
  %565 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %564, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8 signext 50)
  %566 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ne_optab, align 8
  %567 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %566, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8 signext 50)
  %568 = load %struct.TYPE_52__*, %struct.TYPE_52__** @gt_optab, align 8
  %569 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %568, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8 signext 50)
  %570 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ge_optab, align 8
  %571 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %570, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8 signext 50)
  %572 = load %struct.TYPE_52__*, %struct.TYPE_52__** @lt_optab, align 8
  %573 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %572, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8 signext 50)
  %574 = load %struct.TYPE_52__*, %struct.TYPE_52__** @le_optab, align 8
  %575 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %574, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8 signext 50)
  %576 = load %struct.TYPE_52__*, %struct.TYPE_52__** @unord_optab, align 8
  %577 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8 signext 50)
  %578 = load %struct.TYPE_52__*, %struct.TYPE_52__** @powi_optab, align 8
  %579 = call i32 @init_floating_libfuncs(%struct.TYPE_52__* %578, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8 signext 50)
  %580 = load i8*, i8** @sfloat_optab, align 8
  %581 = load i32, i32* @MODE_INT, align 4
  %582 = load i32, i32* @MODE_FLOAT, align 4
  %583 = call i32 @init_interclass_conv_libfuncs(i8* %580, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i32 %581, i32 %582)
  %584 = load i8*, i8** @sfloat_optab, align 8
  %585 = load i32, i32* @MODE_INT, align 4
  %586 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %587 = call i32 @init_interclass_conv_libfuncs(i8* %584, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i32 %585, i32 %586)
  %588 = load i8*, i8** @ufloat_optab, align 8
  %589 = load i32, i32* @MODE_INT, align 4
  %590 = load i32, i32* @MODE_FLOAT, align 4
  %591 = call i32 @init_interclass_conv_libfuncs(i8* %588, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i32 %589, i32 %590)
  %592 = load i8*, i8** @ufloat_optab, align 8
  %593 = load i32, i32* @MODE_INT, align 4
  %594 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %595 = call i32 @init_interclass_conv_libfuncs(i8* %592, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i32 %593, i32 %594)
  %596 = load i8*, i8** @sfix_optab, align 8
  %597 = load i32, i32* @MODE_FLOAT, align 4
  %598 = load i32, i32* @MODE_INT, align 4
  %599 = call i32 @init_interclass_conv_libfuncs(i8* %596, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %597, i32 %598)
  %600 = load i8*, i8** @sfix_optab, align 8
  %601 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %602 = load i32, i32* @MODE_INT, align 4
  %603 = call i32 @init_interclass_conv_libfuncs(i8* %600, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %601, i32 %602)
  %604 = load i8*, i8** @ufix_optab, align 8
  %605 = load i32, i32* @MODE_FLOAT, align 4
  %606 = load i32, i32* @MODE_INT, align 4
  %607 = call i32 @init_interclass_conv_libfuncs(i8* %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i32 %605, i32 %606)
  %608 = load i8*, i8** @ufix_optab, align 8
  %609 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %610 = load i32, i32* @MODE_INT, align 4
  %611 = call i32 @init_interclass_conv_libfuncs(i8* %608, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0), i32 %609, i32 %610)
  %612 = load i8*, i8** @ufloat_optab, align 8
  %613 = load i32, i32* @MODE_INT, align 4
  %614 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %615 = call i32 @init_interclass_conv_libfuncs(i8* %612, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i32 %613, i32 %614)
  %616 = load i8*, i8** @sext_optab, align 8
  %617 = load i32, i32* @MODE_FLOAT, align 4
  %618 = call i32 @init_intraclass_conv_libfuncs(i8* %616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i32 %617, i32 1)
  %619 = load i8*, i8** @sext_optab, align 8
  %620 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %621 = call i32 @init_intraclass_conv_libfuncs(i8* %619, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i32 %620, i32 1)
  %622 = load i8*, i8** @sext_optab, align 8
  %623 = load i32, i32* @MODE_FLOAT, align 4
  %624 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %625 = call i32 @init_interclass_conv_libfuncs(i8* %622, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i32 %623, i32 %624)
  %626 = load i8*, i8** @sext_optab, align 8
  %627 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %628 = load i32, i32* @MODE_FLOAT, align 4
  %629 = call i32 @init_interclass_conv_libfuncs(i8* %626, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i32 %627, i32 %628)
  %630 = load i8*, i8** @trunc_optab, align 8
  %631 = load i32, i32* @MODE_FLOAT, align 4
  %632 = call i32 @init_intraclass_conv_libfuncs(i8* %630, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %631, i32 0)
  %633 = load i8*, i8** @trunc_optab, align 8
  %634 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %635 = call i32 @init_intraclass_conv_libfuncs(i8* %633, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %634, i32 0)
  %636 = load i8*, i8** @trunc_optab, align 8
  %637 = load i32, i32* @MODE_FLOAT, align 4
  %638 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %639 = call i32 @init_interclass_conv_libfuncs(i8* %636, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %637, i32 %638)
  %640 = load i8*, i8** @trunc_optab, align 8
  %641 = load i32, i32* @MODE_DECIMAL_FLOAT, align 4
  %642 = load i32, i32* @MODE_FLOAT, align 4
  %643 = call i32 @init_interclass_conv_libfuncs(i8* %640, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i32 %641, i32 %642)
  %644 = load i8*, i8** @bswap_optab, align 8
  %645 = load i32, i32* @SImode, align 4
  %646 = call i32 @set_optab_libfunc(i8* %644, i32 %645, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0))
  %647 = load i8*, i8** @bswap_optab, align 8
  %648 = load i32, i32* @DImode, align 4
  %649 = call i32 @set_optab_libfunc(i8* %647, i32 %648, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0))
  %650 = load i64, i64* @complex_double_type_node, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %661

652:                                              ; preds = %470
  %653 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0))
  %654 = load %struct.TYPE_53__*, %struct.TYPE_53__** @abs_optab, align 8
  %655 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %654, i32 0, i32 0
  %656 = load %struct.TYPE_50__*, %struct.TYPE_50__** %655, align 8
  %657 = load i64, i64* @complex_double_type_node, align 8
  %658 = call i64 @TYPE_MODE(i64 %657)
  %659 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %656, i64 %658
  %660 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %659, i32 0, i32 0
  store i8* %653, i8** %660, align 8
  br label %661

661:                                              ; preds = %652, %470
  %662 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %663 = load %struct.TYPE_52__*, %struct.TYPE_52__** @ffs_optab, align 8
  %664 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %663, i32 0, i32 0
  %665 = load %struct.TYPE_51__*, %struct.TYPE_51__** %664, align 8
  %666 = load i32, i32* @INT_TYPE_SIZE, align 4
  %667 = load i32, i32* @MODE_INT, align 4
  %668 = call i64 @mode_for_size(i32 %666, i32 %667, i32 0)
  %669 = trunc i64 %668 to i32
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %665, i64 %670
  %672 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %671, i32 0, i32 0
  store i8* %662, i8** %672, align 8
  %673 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
  store i8* %673, i8** @abort_libfunc, align 8
  %674 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0))
  store i8* %674, i8** @memcpy_libfunc, align 8
  %675 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  store i8* %675, i8** @memmove_libfunc, align 8
  %676 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  store i8* %676, i8** @memcmp_libfunc, align 8
  %677 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0))
  store i8* %677, i8** @memset_libfunc, align 8
  %678 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0))
  store i8* %678, i8** @setbits_libfunc, align 8
  %679 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0))
  store i8* %679, i8** @setjmp_libfunc, align 8
  %680 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0))
  store i8* %680, i8** @longjmp_libfunc, align 8
  %681 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  store i8* %681, i8** @unwind_sjlj_register_libfunc, align 8
  %682 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0))
  store i8* %682, i8** @unwind_sjlj_unregister_libfunc, align 8
  %683 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i64 0, i64 0))
  store i8* %683, i8** @profile_function_entry_libfunc, align 8
  %684 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0))
  store i8* %684, i8** @profile_function_exit_libfunc, align 8
  %685 = call i8* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0))
  store i8* %685, i8** @gcov_flush_libfunc, align 8
  %686 = load i64, i64* @HAVE_conditional_trap, align 8
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %694

688:                                              ; preds = %661
  %689 = load i32, i32* @EQ, align 4
  %690 = load i32, i32* @VOIDmode, align 4
  %691 = load i32, i32* @NULL_RTX, align 4
  %692 = load i32, i32* @NULL_RTX, align 4
  %693 = call i32 @gen_rtx_fmt_ee(i32 %689, i32 %690, i32 %691, i32 %692)
  store i32 %693, i32* @trap_rtx, align 4
  br label %694

694:                                              ; preds = %688, %661
  %695 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_49__, %struct.TYPE_49__* @targetm, i32 0, i32 0), align 8
  %696 = call i32 (...) %695()
  ret void
}

declare dso_local i8* @init_optab(i32) #1

declare dso_local i8* @init_optabv(i32) #1

declare dso_local i8* @init_convert_optab(i32) #1

declare dso_local i32 @init_all_optabs(...) #1

declare dso_local i32 @init_integral_libfuncs(%struct.TYPE_52__*, i8*, i8 signext) #1

declare dso_local i32 @init_floating_libfuncs(%struct.TYPE_52__*, i8*, i8 signext) #1

declare dso_local i32 @init_interclass_conv_libfuncs(i8*, i8*, i32, i32) #1

declare dso_local i32 @init_intraclass_conv_libfuncs(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_optab_libfunc(i8*, i32, i8*) #1

declare dso_local i8* @init_one_libfunc(i8*) #1

declare dso_local i64 @TYPE_MODE(i64) #1

declare dso_local i64 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
