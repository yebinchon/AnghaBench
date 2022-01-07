; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_FIX_VR4120 = common dso_local global i64 0, align 8
@sdiv_optab = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"__vr4120_divsi3\00", align 1
@smod_optab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"__vr4120_modsi3\00", align 1
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@mips16_hard_float = common dso_local global i64 0, align 8
@add_optab = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"__mips16_addsf3\00", align 1
@sub_optab = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"__mips16_subsf3\00", align 1
@smul_optab = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"__mips16_mulsf3\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"__mips16_divsf3\00", align 1
@eq_optab = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"__mips16_eqsf2\00", align 1
@ne_optab = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"__mips16_nesf2\00", align 1
@gt_optab = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"__mips16_gtsf2\00", align 1
@ge_optab = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"__mips16_gesf2\00", align 1
@lt_optab = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"__mips16_ltsf2\00", align 1
@le_optab = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"__mips16_lesf2\00", align 1
@sfix_optab = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"__mips16_fix_truncsfsi\00", align 1
@sfloat_optab = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"__mips16_floatsisf\00", align 1
@TARGET_DOUBLE_FLOAT = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"__mips16_adddf3\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"__mips16_subdf3\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"__mips16_muldf3\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"__mips16_divdf3\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"__mips16_eqdf2\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"__mips16_nedf2\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"__mips16_gtdf2\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"__mips16_gedf2\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"__mips16_ltdf2\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"__mips16_ledf2\00", align 1
@sext_optab = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [21 x i8] c"__mips16_extendsfdf2\00", align 1
@trunc_optab = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"__mips16_truncdfsf2\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"__mips16_fix_truncdfsi\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"__mips16_floatsidf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_init_libfuncs() #0 {
  %1 = load i64, i64* @TARGET_FIX_VR4120, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @sdiv_optab, align 4
  %5 = load i32, i32* @SImode, align 4
  %6 = call i32 @set_optab_libfunc(i32 %4, i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @smod_optab, align 4
  %8 = load i32, i32* @SImode, align 4
  %9 = call i32 @set_optab_libfunc(i32 %7, i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i64, i64* @TARGET_MIPS16, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %105

13:                                               ; preds = %10
  %14 = load i64, i64* @mips16_hard_float, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %13
  %17 = load i32, i32* @add_optab, align 4
  %18 = load i32, i32* @SFmode, align 4
  %19 = call i32 @set_optab_libfunc(i32 %17, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @sub_optab, align 4
  %21 = load i32, i32* @SFmode, align 4
  %22 = call i32 @set_optab_libfunc(i32 %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32, i32* @smul_optab, align 4
  %24 = load i32, i32* @SFmode, align 4
  %25 = call i32 @set_optab_libfunc(i32 %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %26 = load i32, i32* @sdiv_optab, align 4
  %27 = load i32, i32* @SFmode, align 4
  %28 = call i32 @set_optab_libfunc(i32 %26, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* @eq_optab, align 4
  %30 = load i32, i32* @SFmode, align 4
  %31 = call i32 @set_optab_libfunc(i32 %29, i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @ne_optab, align 4
  %33 = load i32, i32* @SFmode, align 4
  %34 = call i32 @set_optab_libfunc(i32 %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* @gt_optab, align 4
  %36 = load i32, i32* @SFmode, align 4
  %37 = call i32 @set_optab_libfunc(i32 %35, i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %38 = load i32, i32* @ge_optab, align 4
  %39 = load i32, i32* @SFmode, align 4
  %40 = call i32 @set_optab_libfunc(i32 %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %41 = load i32, i32* @lt_optab, align 4
  %42 = load i32, i32* @SFmode, align 4
  %43 = call i32 @set_optab_libfunc(i32 %41, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %44 = load i32, i32* @le_optab, align 4
  %45 = load i32, i32* @SFmode, align 4
  %46 = call i32 @set_optab_libfunc(i32 %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %47 = load i32, i32* @sfix_optab, align 4
  %48 = load i32, i32* @SImode, align 4
  %49 = load i32, i32* @SFmode, align 4
  %50 = call i32 @set_conv_libfunc(i32 %47, i32 %48, i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %51 = load i32, i32* @sfloat_optab, align 4
  %52 = load i32, i32* @SFmode, align 4
  %53 = load i32, i32* @SImode, align 4
  %54 = call i32 @set_conv_libfunc(i32 %51, i32 %52, i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %55 = load i64, i64* @TARGET_DOUBLE_FLOAT, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %16
  %58 = load i32, i32* @add_optab, align 4
  %59 = load i32, i32* @DFmode, align 4
  %60 = call i32 @set_optab_libfunc(i32 %58, i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %61 = load i32, i32* @sub_optab, align 4
  %62 = load i32, i32* @DFmode, align 4
  %63 = call i32 @set_optab_libfunc(i32 %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %64 = load i32, i32* @smul_optab, align 4
  %65 = load i32, i32* @DFmode, align 4
  %66 = call i32 @set_optab_libfunc(i32 %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %67 = load i32, i32* @sdiv_optab, align 4
  %68 = load i32, i32* @DFmode, align 4
  %69 = call i32 @set_optab_libfunc(i32 %67, i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %70 = load i32, i32* @eq_optab, align 4
  %71 = load i32, i32* @DFmode, align 4
  %72 = call i32 @set_optab_libfunc(i32 %70, i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %73 = load i32, i32* @ne_optab, align 4
  %74 = load i32, i32* @DFmode, align 4
  %75 = call i32 @set_optab_libfunc(i32 %73, i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %76 = load i32, i32* @gt_optab, align 4
  %77 = load i32, i32* @DFmode, align 4
  %78 = call i32 @set_optab_libfunc(i32 %76, i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %79 = load i32, i32* @ge_optab, align 4
  %80 = load i32, i32* @DFmode, align 4
  %81 = call i32 @set_optab_libfunc(i32 %79, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %82 = load i32, i32* @lt_optab, align 4
  %83 = load i32, i32* @DFmode, align 4
  %84 = call i32 @set_optab_libfunc(i32 %82, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %85 = load i32, i32* @le_optab, align 4
  %86 = load i32, i32* @DFmode, align 4
  %87 = call i32 @set_optab_libfunc(i32 %85, i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %88 = load i32, i32* @sext_optab, align 4
  %89 = load i32, i32* @DFmode, align 4
  %90 = load i32, i32* @SFmode, align 4
  %91 = call i32 @set_conv_libfunc(i32 %88, i32 %89, i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0))
  %92 = load i32, i32* @trunc_optab, align 4
  %93 = load i32, i32* @SFmode, align 4
  %94 = load i32, i32* @DFmode, align 4
  %95 = call i32 @set_conv_libfunc(i32 %92, i32 %93, i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  %96 = load i32, i32* @sfix_optab, align 4
  %97 = load i32, i32* @SImode, align 4
  %98 = load i32, i32* @DFmode, align 4
  %99 = call i32 @set_conv_libfunc(i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %100 = load i32, i32* @sfloat_optab, align 4
  %101 = load i32, i32* @DFmode, align 4
  %102 = load i32, i32* @SImode, align 4
  %103 = call i32 @set_conv_libfunc(i32 %100, i32 %101, i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  br label %104

104:                                              ; preds = %57, %16
  br label %107

105:                                              ; preds = %13, %10
  %106 = call i32 (...) @gofast_maybe_init_libfuncs()
  br label %107

107:                                              ; preds = %105, %104
  ret void
}

declare dso_local i32 @set_optab_libfunc(i32, i32, i8*) #1

declare dso_local i32 @set_conv_libfunc(i32, i32, i32, i8*) #1

declare dso_local i32 @gofast_maybe_init_libfuncs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
