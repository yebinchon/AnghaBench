; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdiv_optab = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__divsi3\00", align 1
@udiv_optab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"__udivsi3\00", align 1
@smod_optab = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"__modsi3\00", align 1
@umod_optab = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"__umodsi3\00", align 1
@add_optab = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"_U_Qfadd\00", align 1
@sub_optab = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"_U_Qfsub\00", align 1
@smul_optab = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"_U_Qfmpy\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_U_Qfdiv\00", align 1
@neg_optab = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"_U_Qfneg\00", align 1
@sext_optab = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_sgl_to_quad\00", align 1
@DFmode = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_dbl_to_quad\00", align 1
@XFmode = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_f80_to_quad\00", align 1
@trunc_optab = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_quad_to_sgl\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_quad_to_dbl\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvff_quad_to_f80\00", align 1
@sfix_optab = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"_U_Qfcnvfxt_quad_to_sgl\00", align 1
@DImode = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"_U_Qfcnvfxt_quad_to_dbl\00", align 1
@TImode = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"_U_Qfcnvfxt_quad_to_quad\00", align 1
@ufix_optab = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"_U_Qfcnvfxut_quad_to_sgl\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"_U_Qfcnvfxut_quad_to_dbl\00", align 1
@sfloat_optab = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvxf_sgl_to_quad\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"_U_Qfcnvxf_dbl_to_quad\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"_U_Qfcnvxf_quad_to_quad\00", align 1
@ufloat_optab = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"_U_Qfcnvxuf_dbl_to_quad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ia64_init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_init_libfuncs() #0 {
  %1 = load i32, i32* @sdiv_optab, align 4
  %2 = load i32, i32* @SImode, align 4
  %3 = call i32 @set_optab_libfunc(i32 %1, i32 %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @udiv_optab, align 4
  %5 = load i32, i32* @SImode, align 4
  %6 = call i32 @set_optab_libfunc(i32 %4, i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @smod_optab, align 4
  %8 = load i32, i32* @SImode, align 4
  %9 = call i32 @set_optab_libfunc(i32 %7, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32, i32* @umod_optab, align 4
  %11 = load i32, i32* @SImode, align 4
  %12 = call i32 @set_optab_libfunc(i32 %10, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* @add_optab, align 4
  %14 = load i32, i32* @TFmode, align 4
  %15 = call i32 @set_optab_libfunc(i32 %13, i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @sub_optab, align 4
  %17 = load i32, i32* @TFmode, align 4
  %18 = call i32 @set_optab_libfunc(i32 %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @smul_optab, align 4
  %20 = load i32, i32* @TFmode, align 4
  %21 = call i32 @set_optab_libfunc(i32 %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32, i32* @sdiv_optab, align 4
  %23 = load i32, i32* @TFmode, align 4
  %24 = call i32 @set_optab_libfunc(i32 %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32, i32* @neg_optab, align 4
  %26 = load i32, i32* @TFmode, align 4
  %27 = call i32 @set_optab_libfunc(i32 %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i32, i32* @sext_optab, align 4
  %29 = load i32, i32* @TFmode, align 4
  %30 = load i32, i32* @SFmode, align 4
  %31 = call i32 @set_conv_libfunc(i32 %28, i32 %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %32 = load i32, i32* @sext_optab, align 4
  %33 = load i32, i32* @TFmode, align 4
  %34 = load i32, i32* @DFmode, align 4
  %35 = call i32 @set_conv_libfunc(i32 %32, i32 %33, i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %36 = load i32, i32* @sext_optab, align 4
  %37 = load i32, i32* @TFmode, align 4
  %38 = load i32, i32* @XFmode, align 4
  %39 = call i32 @set_conv_libfunc(i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %40 = load i32, i32* @trunc_optab, align 4
  %41 = load i32, i32* @SFmode, align 4
  %42 = load i32, i32* @TFmode, align 4
  %43 = call i32 @set_conv_libfunc(i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %44 = load i32, i32* @trunc_optab, align 4
  %45 = load i32, i32* @DFmode, align 4
  %46 = load i32, i32* @TFmode, align 4
  %47 = call i32 @set_conv_libfunc(i32 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %48 = load i32, i32* @trunc_optab, align 4
  %49 = load i32, i32* @XFmode, align 4
  %50 = load i32, i32* @TFmode, align 4
  %51 = call i32 @set_conv_libfunc(i32 %48, i32 %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %52 = load i32, i32* @sfix_optab, align 4
  %53 = load i32, i32* @SImode, align 4
  %54 = load i32, i32* @TFmode, align 4
  %55 = call i32 @set_conv_libfunc(i32 %52, i32 %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %56 = load i32, i32* @sfix_optab, align 4
  %57 = load i32, i32* @DImode, align 4
  %58 = load i32, i32* @TFmode, align 4
  %59 = call i32 @set_conv_libfunc(i32 %56, i32 %57, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %60 = load i32, i32* @sfix_optab, align 4
  %61 = load i32, i32* @TImode, align 4
  %62 = load i32, i32* @TFmode, align 4
  %63 = call i32 @set_conv_libfunc(i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %64 = load i32, i32* @ufix_optab, align 4
  %65 = load i32, i32* @SImode, align 4
  %66 = load i32, i32* @TFmode, align 4
  %67 = call i32 @set_conv_libfunc(i32 %64, i32 %65, i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %68 = load i32, i32* @ufix_optab, align 4
  %69 = load i32, i32* @DImode, align 4
  %70 = load i32, i32* @TFmode, align 4
  %71 = call i32 @set_conv_libfunc(i32 %68, i32 %69, i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %72 = load i32, i32* @sfloat_optab, align 4
  %73 = load i32, i32* @TFmode, align 4
  %74 = load i32, i32* @SImode, align 4
  %75 = call i32 @set_conv_libfunc(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  %76 = load i32, i32* @sfloat_optab, align 4
  %77 = load i32, i32* @TFmode, align 4
  %78 = load i32, i32* @DImode, align 4
  %79 = call i32 @set_conv_libfunc(i32 %76, i32 %77, i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %80 = load i32, i32* @sfloat_optab, align 4
  %81 = load i32, i32* @TFmode, align 4
  %82 = load i32, i32* @TImode, align 4
  %83 = call i32 @set_conv_libfunc(i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %84 = load i32, i32* @ufloat_optab, align 4
  %85 = load i32, i32* @TFmode, align 4
  %86 = load i32, i32* @DImode, align 4
  %87 = call i32 @set_conv_libfunc(i32 %84, i32 %85, i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

declare dso_local i32 @set_optab_libfunc(i32, i32, i8*) #1

declare dso_local i32 @set_conv_libfunc(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
