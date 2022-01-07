; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_prepare_sse_fp_compare_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_prepare_sse_fp_compare_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @ix86_prepare_sse_fp_compare_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_prepare_sse_fp_compare_args(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %36 [
    i32 136, label %12
    i32 133, label %12
    i32 137, label %14
    i32 138, label %14
    i32 131, label %14
    i32 132, label %14
    i32 141, label %15
    i32 135, label %15
    i32 128, label %15
    i32 134, label %15
    i32 140, label %26
    i32 139, label %26
    i32 130, label %26
    i32 129, label %26
  ]

12:                                               ; preds = %4, %4
  %13 = load i32, i32* @UNKNOWN, align 4
  store i32 %13, i32* %5, align 4
  br label %40

14:                                               ; preds = %4, %4, %4, %4
  br label %38

15:                                               ; preds = %4, %4, %4, %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rtx_equal_p(i32 %19, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %15
  br label %38

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %4, %4, %4, %4, %25
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @swap_condition(i32 %34)
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %4
  %37 = call i32 (...) @gcc_unreachable()
  br label %38

38:                                               ; preds = %36, %26, %24, %14
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
