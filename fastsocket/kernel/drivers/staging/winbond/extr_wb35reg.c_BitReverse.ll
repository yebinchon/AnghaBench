; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_BitReverse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_BitReverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BitReverse(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %72

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = sub nsw i64 32, %16
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 -1, %18
  %20 = zext i32 %19 to i64
  %21 = and i64 %15, %20
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sdiv i64 %22, 2
  store i64 %23, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %65, %14
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @GetBit(i64 %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @GetBit(i64 %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @ClearBit(i64 %43, i64 %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @SetBit(i64 %46, i64 %47)
  store i64 %48, i64* %4, align 8
  br label %64

49:                                               ; preds = %39, %30
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @SetBit(i64 %56, i64 %57)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @ClearBit(i64 %59, i64 %60)
  store i64 %61, i64* %4, align 8
  br label %63

62:                                               ; preds = %52, %49
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %8, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %70, %13
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @GetBit(i64, i64) #1

declare dso_local i64 @ClearBit(i64, i64) #1

declare dso_local i64 @SetBit(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
