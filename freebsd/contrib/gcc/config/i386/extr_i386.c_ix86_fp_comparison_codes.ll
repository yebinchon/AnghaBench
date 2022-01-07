; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_fp_comparison_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_fp_comparison_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN = common dso_local global i32 0, align 4
@TARGET_IEEE_FP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_fp_comparison_codes(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @UNKNOWN, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @UNKNOWN, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %35 [
    i32 139, label %16
    i32 140, label %16
    i32 134, label %16
    i32 128, label %16
    i32 133, label %16
    i32 129, label %16
    i32 130, label %16
    i32 136, label %16
    i32 137, label %17
    i32 138, label %20
    i32 141, label %23
    i32 135, label %26
    i32 132, label %29
    i32 131, label %32
  ]

16:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  br label %37

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  store i32 129, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 128, i32* %19, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  store i32 130, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 128, i32* %22, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 133, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 128, i32* %25, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  store i32 136, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 128, i32* %28, align 4
  br label %37

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  store i32 140, i32* %30, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 128, i32* %31, align 4
  br label %37

32:                                               ; preds = %4
  %33 = load i32*, i32** %7, align 8
  store i32 139, i32* %33, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 128, i32* %34, align 4
  br label %37

35:                                               ; preds = %4
  %36 = call i32 (...) @gcc_unreachable()
  br label %37

37:                                               ; preds = %35, %32, %29, %26, %23, %20, %17, %16
  %38 = load i32, i32* @TARGET_IEEE_FP, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @UNKNOWN, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @UNKNOWN, align 4
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
