; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_sysv4_init_libfuncs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_sysv4_init_libfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eq_optab = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_U_Qfeq\00", align 1
@ne_optab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"_U_Qfne\00", align 1
@gt_optab = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"_U_Qfgt\00", align 1
@ge_optab = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"_U_Qfge\00", align 1
@lt_optab = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"_U_Qflt\00", align 1
@le_optab = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"_U_Qfle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ia64_sysv4_init_libfuncs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_sysv4_init_libfuncs() #0 {
  %1 = call i32 (...) @ia64_init_libfuncs()
  %2 = load i32, i32* @eq_optab, align 4
  %3 = load i32, i32* @TFmode, align 4
  %4 = call i32 @set_optab_libfunc(i32 %2, i32 %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ne_optab, align 4
  %6 = load i32, i32* @TFmode, align 4
  %7 = call i32 @set_optab_libfunc(i32 %5, i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @gt_optab, align 4
  %9 = load i32, i32* @TFmode, align 4
  %10 = call i32 @set_optab_libfunc(i32 %8, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @ge_optab, align 4
  %12 = load i32, i32* @TFmode, align 4
  %13 = call i32 @set_optab_libfunc(i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @lt_optab, align 4
  %15 = load i32, i32* @TFmode, align 4
  %16 = call i32 @set_optab_libfunc(i32 %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* @le_optab, align 4
  %18 = load i32, i32* @TFmode, align 4
  %19 = call i32 @set_optab_libfunc(i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ia64_init_libfuncs(...) #1

declare dso_local i32 @set_optab_libfunc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
