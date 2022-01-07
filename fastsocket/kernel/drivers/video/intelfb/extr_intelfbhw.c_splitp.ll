; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_splitp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_splitp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_min_max = type { i32, i32 }

@plls = common dso_local global %struct.pll_min_max* null, align 8
@PLLS_I9xx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @splitp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitp(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pll_min_max*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.pll_min_max*, %struct.pll_min_max** @plls, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %13, i64 %15
  store %struct.pll_min_max* %16, %struct.pll_min_max** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PLLS_I9xx, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = urem i32 %21, 10
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 5, i32 10
  %31 = udiv i32 %26, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %92

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = urem i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %11, align 4
  br label %42

41:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = udiv i32 %43, %46
  %48 = sub i32 %47, 2
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = urem i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.pll_min_max*, %struct.pll_min_max** %12, align 8
  %55 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = shl i32 1, %61
  %63 = udiv i32 %59, %62
  %64 = sub i32 %63, 2
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %58, %52, %42
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.pll_min_max*, %struct.pll_min_max** %12, align 8
  %68 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.pll_min_max*, %struct.pll_min_max** %12, align 8
  %74 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 2
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  %82 = shl i32 1, %81
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %77, %71, %65
  store i32 1, i32* %5, align 4
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %86, %20
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
