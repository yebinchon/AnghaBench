; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-init.c_rtl_unroll_and_peel_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-init.c_rtl_unroll_and_peel_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_loops = common dso_local global i64 0, align 8
@flag_peel_loops = common dso_local global i64 0, align 8
@UAP_PEEL = common dso_local global i32 0, align 4
@flag_unroll_loops = common dso_local global i64 0, align 8
@UAP_UNROLL = common dso_local global i32 0, align 4
@flag_unroll_all_loops = common dso_local global i64 0, align 8
@UAP_UNROLL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rtl_unroll_and_peel_loops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_unroll_and_peel_loops() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @current_loops, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @flag_peel_loops, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @UAP_PEEL, align 4
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %7, %4
  %12 = load i64, i64* @flag_unroll_loops, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @UAP_UNROLL, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i64, i64* @flag_unroll_all_loops, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @UAP_UNROLL_ALL, align 4
  %23 = load i32, i32* %1, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* @current_loops, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @unroll_and_peel_loops(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %0
  ret i32 0
}

declare dso_local i32 @unroll_and_peel_loops(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
