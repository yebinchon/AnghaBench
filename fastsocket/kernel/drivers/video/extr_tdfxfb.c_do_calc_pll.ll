; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tdfxfb.c_do_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @do_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_calc_pll(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 14318, i32* %12, align 4
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 3, i32* %7, align 4
  br label %17

17:                                               ; preds = %73, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %17
  store i32 63, i32* %5, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 2
  %28 = mul nsw i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %12, align 4
  %32 = sdiv i32 %30, %31
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @max(i32 0, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %65, %24
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @min(i32 255, i32 %39)
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 2
  %46 = mul nsw i32 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 2
  %49 = sdiv i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @abs(i32 %54) #3
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %36

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %5, align 4
  br label %21

72:                                               ; preds = %21
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 2
  %83 = mul nsw i32 %80, %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 2
  %86 = sdiv i32 %83, %85
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %86, %87
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %5, align 4
  %93 = shl i32 %92, 2
  %94 = or i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %94, %95
  ret i32 %96
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
