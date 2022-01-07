; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_hpux_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_hpux_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdiv_optab = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@udiv_optab = common dso_local global i32 0, align 4
@smod_optab = common dso_local global i32 0, align 4
@umod_optab = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"__milli_divI\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__milli_divU\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__milli_remI\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"__milli_remU\00", align 1
@smin_optab = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"_U_Qfmin\00", align 1
@smax_optab = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"_U_Qfmax\00", align 1
@abs_optab = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"_U_Qfabs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_U_Qfcmp\00", align 1
@cmptf_libfunc = common dso_local global i32 0, align 4
@eq_optab = common dso_local global i32 0, align 4
@ne_optab = common dso_local global i32 0, align 4
@gt_optab = common dso_local global i32 0, align 4
@ge_optab = common dso_local global i32 0, align 4
@lt_optab = common dso_local global i32 0, align 4
@le_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ia64_hpux_init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_hpux_init_libfuncs() #0 {
  %1 = call i32 (...) @ia64_init_libfuncs()
  %2 = load i32, i32* @sdiv_optab, align 4
  %3 = load i32, i32* @SImode, align 4
  %4 = call i32 @set_optab_libfunc(i32 %2, i32 %3, i8* null)
  %5 = load i32, i32* @udiv_optab, align 4
  %6 = load i32, i32* @SImode, align 4
  %7 = call i32 @set_optab_libfunc(i32 %5, i32 %6, i8* null)
  %8 = load i32, i32* @smod_optab, align 4
  %9 = load i32, i32* @SImode, align 4
  %10 = call i32 @set_optab_libfunc(i32 %8, i32 %9, i8* null)
  %11 = load i32, i32* @umod_optab, align 4
  %12 = load i32, i32* @SImode, align 4
  %13 = call i32 @set_optab_libfunc(i32 %11, i32 %12, i8* null)
  %14 = load i32, i32* @sdiv_optab, align 4
  %15 = load i32, i32* @DImode, align 4
  %16 = call i32 @set_optab_libfunc(i32 %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @udiv_optab, align 4
  %18 = load i32, i32* @DImode, align 4
  %19 = call i32 @set_optab_libfunc(i32 %17, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @smod_optab, align 4
  %21 = load i32, i32* @DImode, align 4
  %22 = call i32 @set_optab_libfunc(i32 %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @umod_optab, align 4
  %24 = load i32, i32* @DImode, align 4
  %25 = call i32 @set_optab_libfunc(i32 %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @smin_optab, align 4
  %27 = load i32, i32* @TFmode, align 4
  %28 = call i32 @set_optab_libfunc(i32 %26, i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @smax_optab, align 4
  %30 = load i32, i32* @TFmode, align 4
  %31 = call i32 @set_optab_libfunc(i32 %29, i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @abs_optab, align 4
  %33 = load i32, i32* @TFmode, align 4
  %34 = call i32 @set_optab_libfunc(i32 %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %35 = call i32 @init_one_libfunc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %35, i32* @cmptf_libfunc, align 4
  %36 = load i32, i32* @eq_optab, align 4
  %37 = load i32, i32* @TFmode, align 4
  %38 = call i32 @set_optab_libfunc(i32 %36, i32 %37, i8* null)
  %39 = load i32, i32* @ne_optab, align 4
  %40 = load i32, i32* @TFmode, align 4
  %41 = call i32 @set_optab_libfunc(i32 %39, i32 %40, i8* null)
  %42 = load i32, i32* @gt_optab, align 4
  %43 = load i32, i32* @TFmode, align 4
  %44 = call i32 @set_optab_libfunc(i32 %42, i32 %43, i8* null)
  %45 = load i32, i32* @ge_optab, align 4
  %46 = load i32, i32* @TFmode, align 4
  %47 = call i32 @set_optab_libfunc(i32 %45, i32 %46, i8* null)
  %48 = load i32, i32* @lt_optab, align 4
  %49 = load i32, i32* @TFmode, align 4
  %50 = call i32 @set_optab_libfunc(i32 %48, i32 %49, i8* null)
  %51 = load i32, i32* @le_optab, align 4
  %52 = load i32, i32* @TFmode, align 4
  %53 = call i32 @set_optab_libfunc(i32 %51, i32 %52, i8* null)
  ret void
}

declare dso_local i32 @ia64_init_libfuncs(...) #1

declare dso_local i32 @set_optab_libfunc(i32, i32, i8*) #1

declare dso_local i32 @init_one_libfunc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
