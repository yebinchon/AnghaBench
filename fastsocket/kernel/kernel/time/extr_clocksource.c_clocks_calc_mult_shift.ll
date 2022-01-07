; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_clocks_calc_mult_shift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clocksource.c_clocks_calc_mult_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clocks_calc_mult_shift(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 32, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %14, %15
  %17 = ashr i32 %16, 32
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %21, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %13, align 4
  br label %18

26:                                               ; preds = %18
  store i32 32, i32* %12, align 4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @do_div(i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = ashr i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %12, align 4
  br label %27

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
