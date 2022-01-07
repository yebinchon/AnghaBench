; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_matching_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtl-factoring.c_matching_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*)* @matching_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matching_length(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %38, %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @PATTERN(i64 %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @PATTERN(i64 %32)
  %34 = call i64 @rtx_equal_p(i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %25, %21, %18, %15
  %37 = phi i1 [ false, %25 ], [ false, %21 ], [ false, %18 ], [ false, %15 ], [ %35, %29 ]
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @compute_rtx_cost(i64 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %43
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @prev_insn_in_block(i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @prev_insn_in_block(i64 %51)
  store i64 %52, i64* %10, align 8
  br label %15

53:                                               ; preds = %36
  ret void
}

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @compute_rtx_cost(i64) #1

declare dso_local i64 @prev_insn_in_block(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
