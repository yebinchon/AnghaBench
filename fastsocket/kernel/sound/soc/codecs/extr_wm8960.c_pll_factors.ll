; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_pll_factors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_pll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pll_div = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"WM8960 PLL: setting %dHz->%dHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"WM8960 PLL: Unsupported N=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIXED_PLL_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"WM8960 PLL: N=%x K=%x pre_div=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct._pll_div*)* @pll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_factors(i32 %0, i32 %1, %struct._pll_div* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._pll_div*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct._pll_div* %2, %struct._pll_div** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = mul i32 %15, 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ult i32 %20, 6
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = lshr i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %26 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %32 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %34, 6
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ugt i32 %37, 12
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %47 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = urem i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* @FIXED_PLL_SIZE, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = mul nsw i64 %51, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @do_div(i64 %55, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %58, 4294967295
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = urem i32 %61, 10
  %63 = icmp uge i32 %62, 5
  br i1 %63, label %64, label %67

64:                                               ; preds = %44
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 5
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %44
  %68 = load i32, i32* %9, align 4
  %69 = udiv i32 %68, 10
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %72 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %74 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %77 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct._pll_div*, %struct._pll_div** %7, align 8
  %80 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %67, %39
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
