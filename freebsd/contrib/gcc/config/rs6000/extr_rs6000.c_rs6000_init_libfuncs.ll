; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@TARGET_XCOFF = common dso_local global i64 0, align 8
@TARGET_POWER2 = common dso_local global i64 0, align 8
@TARGET_POWERPC = common dso_local global i32 0, align 4
@sfix_optab = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__itrunc\00", align 1
@ufix_optab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"__uitrunc\00", align 1
@TFmode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"_qitrunc\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_quitrunc\00", align 1
@TARGET_IEEEQUAD = common dso_local global i32 0, align 4
@TARGET_XL_COMPAT = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"__gcc_qadd\00", align 1
@sub_optab = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"__gcc_qsub\00", align 1
@smul_optab = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"__gcc_qmul\00", align 1
@sdiv_optab = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"__gcc_qdiv\00", align 1
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@neg_optab = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"__gcc_qneg\00", align 1
@eq_optab = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"__gcc_qeq\00", align 1
@ne_optab = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"__gcc_qne\00", align 1
@gt_optab = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"__gcc_qgt\00", align 1
@ge_optab = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"__gcc_qge\00", align 1
@lt_optab = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"__gcc_qlt\00", align 1
@le_optab = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"__gcc_qle\00", align 1
@unord_optab = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"__gcc_qunord\00", align 1
@sext_optab = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"__gcc_stoq\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"__gcc_dtoq\00", align 1
@trunc_optab = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"__gcc_qtos\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"__gcc_qtod\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"__gcc_qtoi\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"__gcc_qtou\00", align 1
@sfloat_optab = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"__gcc_itoq\00", align 1
@ufloat_optab = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"__gcc_utoq\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"_xlqadd\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"_xlqsub\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"_xlqmul\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"_xlqdiv\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"_q_add\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"_q_sub\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"_q_neg\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"_q_mul\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_q_div\00", align 1
@TARGET_PPC_GPOPT = common dso_local global i64 0, align 8
@sqrt_optab = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"_q_sqrt\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"_q_feq\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"_q_fne\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"_q_fgt\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"_q_fge\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_q_flt\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"_q_fle\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"_q_stoq\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"_q_dtoq\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"_q_qtos\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"_q_qtod\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"_q_qtoi\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"_q_qtou\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"_q_itoq\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"_q_utoq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs6000_init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_init_libfuncs() #0 {
  %1 = load i64, i64* @DEFAULT_ABI, align 8
  %2 = load i64, i64* @ABI_V4, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = load i64, i64* @TARGET_XCOFF, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load i64, i64* @TARGET_POWER2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @TARGET_POWERPC, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @sfix_optab, align 4
  %15 = load i32, i32* @SImode, align 4
  %16 = load i32, i32* @DFmode, align 4
  %17 = call i32 @set_conv_libfunc(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ufix_optab, align 4
  %19 = load i32, i32* @SImode, align 4
  %20 = load i32, i32* @DFmode, align 4
  %21 = call i32 @set_conv_libfunc(i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @sfix_optab, align 4
  %23 = load i32, i32* @SImode, align 4
  %24 = load i32, i32* @TFmode, align 4
  %25 = call i32 @set_conv_libfunc(i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ufix_optab, align 4
  %27 = load i32, i32* @SImode, align 4
  %28 = load i32, i32* @TFmode, align 4
  %29 = call i32 @set_conv_libfunc(i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %13, %10, %7, %4, %0
  %31 = load i32, i32* @TARGET_IEEEQUAD, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %123, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @TARGET_XL_COMPAT, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %109, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @add_optab, align 4
  %38 = load i32, i32* @TFmode, align 4
  %39 = call i32 @set_optab_libfunc(i32 %37, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @sub_optab, align 4
  %41 = load i32, i32* @TFmode, align 4
  %42 = call i32 @set_optab_libfunc(i32 %40, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @smul_optab, align 4
  %44 = load i32, i32* @TFmode, align 4
  %45 = call i32 @set_optab_libfunc(i32 %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* @sdiv_optab, align 4
  %47 = load i32, i32* @TFmode, align 4
  %48 = call i32 @set_optab_libfunc(i32 %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %36
  %52 = load i32, i32* @neg_optab, align 4
  %53 = load i32, i32* @TFmode, align 4
  %54 = call i32 @set_optab_libfunc(i32 %52, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i32, i32* @eq_optab, align 4
  %56 = load i32, i32* @TFmode, align 4
  %57 = call i32 @set_optab_libfunc(i32 %55, i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %58 = load i32, i32* @ne_optab, align 4
  %59 = load i32, i32* @TFmode, align 4
  %60 = call i32 @set_optab_libfunc(i32 %58, i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %61 = load i32, i32* @gt_optab, align 4
  %62 = load i32, i32* @TFmode, align 4
  %63 = call i32 @set_optab_libfunc(i32 %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32, i32* @ge_optab, align 4
  %65 = load i32, i32* @TFmode, align 4
  %66 = call i32 @set_optab_libfunc(i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %67 = load i32, i32* @lt_optab, align 4
  %68 = load i32, i32* @TFmode, align 4
  %69 = call i32 @set_optab_libfunc(i32 %67, i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %70 = load i32, i32* @le_optab, align 4
  %71 = load i32, i32* @TFmode, align 4
  %72 = call i32 @set_optab_libfunc(i32 %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %73 = load i32, i32* @unord_optab, align 4
  %74 = load i32, i32* @TFmode, align 4
  %75 = call i32 @set_optab_libfunc(i32 %73, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %76 = load i32, i32* @sext_optab, align 4
  %77 = load i32, i32* @TFmode, align 4
  %78 = load i32, i32* @SFmode, align 4
  %79 = call i32 @set_conv_libfunc(i32 %76, i32 %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %80 = load i32, i32* @sext_optab, align 4
  %81 = load i32, i32* @TFmode, align 4
  %82 = load i32, i32* @DFmode, align 4
  %83 = call i32 @set_conv_libfunc(i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %84 = load i32, i32* @trunc_optab, align 4
  %85 = load i32, i32* @SFmode, align 4
  %86 = load i32, i32* @TFmode, align 4
  %87 = call i32 @set_conv_libfunc(i32 %84, i32 %85, i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %88 = load i32, i32* @trunc_optab, align 4
  %89 = load i32, i32* @DFmode, align 4
  %90 = load i32, i32* @TFmode, align 4
  %91 = call i32 @set_conv_libfunc(i32 %88, i32 %89, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %92 = load i32, i32* @sfix_optab, align 4
  %93 = load i32, i32* @SImode, align 4
  %94 = load i32, i32* @TFmode, align 4
  %95 = call i32 @set_conv_libfunc(i32 %92, i32 %93, i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %96 = load i32, i32* @ufix_optab, align 4
  %97 = load i32, i32* @SImode, align 4
  %98 = load i32, i32* @TFmode, align 4
  %99 = call i32 @set_conv_libfunc(i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %100 = load i32, i32* @sfloat_optab, align 4
  %101 = load i32, i32* @TFmode, align 4
  %102 = load i32, i32* @SImode, align 4
  %103 = call i32 @set_conv_libfunc(i32 %100, i32 %101, i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %104 = load i32, i32* @ufloat_optab, align 4
  %105 = load i32, i32* @TFmode, align 4
  %106 = load i32, i32* @SImode, align 4
  %107 = call i32 @set_conv_libfunc(i32 %104, i32 %105, i32 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %108

108:                                              ; preds = %51, %36
  br label %122

109:                                              ; preds = %33
  %110 = load i32, i32* @add_optab, align 4
  %111 = load i32, i32* @TFmode, align 4
  %112 = call i32 @set_optab_libfunc(i32 %110, i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %113 = load i32, i32* @sub_optab, align 4
  %114 = load i32, i32* @TFmode, align 4
  %115 = call i32 @set_optab_libfunc(i32 %113, i32 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %116 = load i32, i32* @smul_optab, align 4
  %117 = load i32, i32* @TFmode, align 4
  %118 = call i32 @set_optab_libfunc(i32 %116, i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %119 = load i32, i32* @sdiv_optab, align 4
  %120 = load i32, i32* @TFmode, align 4
  %121 = call i32 @set_optab_libfunc(i32 %119, i32 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  br label %122

122:                                              ; preds = %109, %108
  br label %199

123:                                              ; preds = %30
  %124 = load i32, i32* @add_optab, align 4
  %125 = load i32, i32* @TFmode, align 4
  %126 = call i32 @set_optab_libfunc(i32 %124, i32 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  %127 = load i32, i32* @sub_optab, align 4
  %128 = load i32, i32* @TFmode, align 4
  %129 = call i32 @set_optab_libfunc(i32 %127, i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %130 = load i32, i32* @neg_optab, align 4
  %131 = load i32, i32* @TFmode, align 4
  %132 = call i32 @set_optab_libfunc(i32 %130, i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %133 = load i32, i32* @smul_optab, align 4
  %134 = load i32, i32* @TFmode, align 4
  %135 = call i32 @set_optab_libfunc(i32 %133, i32 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  %136 = load i32, i32* @sdiv_optab, align 4
  %137 = load i32, i32* @TFmode, align 4
  %138 = call i32 @set_optab_libfunc(i32 %136, i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %139 = load i64, i64* @TARGET_PPC_GPOPT, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %123
  %142 = load i64, i64* @TARGET_POWER2, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141, %123
  %145 = load i32, i32* @sqrt_optab, align 4
  %146 = load i32, i32* @TFmode, align 4
  %147 = call i32 @set_optab_libfunc(i32 %145, i32 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* @eq_optab, align 4
  %150 = load i32, i32* @TFmode, align 4
  %151 = call i32 @set_optab_libfunc(i32 %149, i32 %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %152 = load i32, i32* @ne_optab, align 4
  %153 = load i32, i32* @TFmode, align 4
  %154 = call i32 @set_optab_libfunc(i32 %152, i32 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %155 = load i32, i32* @gt_optab, align 4
  %156 = load i32, i32* @TFmode, align 4
  %157 = call i32 @set_optab_libfunc(i32 %155, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %158 = load i32, i32* @ge_optab, align 4
  %159 = load i32, i32* @TFmode, align 4
  %160 = call i32 @set_optab_libfunc(i32 %158, i32 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %161 = load i32, i32* @lt_optab, align 4
  %162 = load i32, i32* @TFmode, align 4
  %163 = call i32 @set_optab_libfunc(i32 %161, i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %164 = load i32, i32* @le_optab, align 4
  %165 = load i32, i32* @TFmode, align 4
  %166 = call i32 @set_optab_libfunc(i32 %164, i32 %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %167 = load i32, i32* @sext_optab, align 4
  %168 = load i32, i32* @TFmode, align 4
  %169 = load i32, i32* @SFmode, align 4
  %170 = call i32 @set_conv_libfunc(i32 %167, i32 %168, i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  %171 = load i32, i32* @sext_optab, align 4
  %172 = load i32, i32* @TFmode, align 4
  %173 = load i32, i32* @DFmode, align 4
  %174 = call i32 @set_conv_libfunc(i32 %171, i32 %172, i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %175 = load i32, i32* @trunc_optab, align 4
  %176 = load i32, i32* @SFmode, align 4
  %177 = load i32, i32* @TFmode, align 4
  %178 = call i32 @set_conv_libfunc(i32 %175, i32 %176, i32 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0))
  %179 = load i32, i32* @trunc_optab, align 4
  %180 = load i32, i32* @DFmode, align 4
  %181 = load i32, i32* @TFmode, align 4
  %182 = call i32 @set_conv_libfunc(i32 %179, i32 %180, i32 %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %183 = load i32, i32* @sfix_optab, align 4
  %184 = load i32, i32* @SImode, align 4
  %185 = load i32, i32* @TFmode, align 4
  %186 = call i32 @set_conv_libfunc(i32 %183, i32 %184, i32 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  %187 = load i32, i32* @ufix_optab, align 4
  %188 = load i32, i32* @SImode, align 4
  %189 = load i32, i32* @TFmode, align 4
  %190 = call i32 @set_conv_libfunc(i32 %187, i32 %188, i32 %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  %191 = load i32, i32* @sfloat_optab, align 4
  %192 = load i32, i32* @TFmode, align 4
  %193 = load i32, i32* @SImode, align 4
  %194 = call i32 @set_conv_libfunc(i32 %191, i32 %192, i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0))
  %195 = load i32, i32* @ufloat_optab, align 4
  %196 = load i32, i32* @TFmode, align 4
  %197 = load i32, i32* @SImode, align 4
  %198 = call i32 @set_conv_libfunc(i32 %195, i32 %196, i32 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  br label %199

199:                                              ; preds = %148, %122
  ret void
}

declare dso_local i32 @set_conv_libfunc(i32, i32, i32, i8*) #1

declare dso_local i32 @set_optab_libfunc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
