; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_firstpll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_firstpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }
%struct.matrox_pll_limits = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_pll_limits*, i32*, i32)* @g450_firstpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_firstpll(%struct.matrox_fb_info* %0, %struct.matrox_pll_limits* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.matrox_fb_info*, align 8
  %6 = alloca %struct.matrox_pll_limits*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %5, align 8
  store %struct.matrox_pll_limits* %1, %struct.matrox_pll_limits** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %6, align 8
  %13 = getelementptr inbounds %struct.matrox_pll_limits, %struct.matrox_pll_limits* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 %16, 2
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  store i32 64, i32* %9, align 4
  br label %61

30:                                               ; preds = %4
  store i32 3, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @g450_f2vco(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %43, %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ugt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %34

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %6, align 8
  %51 = getelementptr inbounds %struct.matrox_pll_limits, %struct.matrox_pll_limits* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %6, align 8
  %56 = getelementptr inbounds %struct.matrox_pll_limits, %struct.matrox_pll_limits* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %29
  %62 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %63 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = or i32 16711680, %65
  %67 = call i32 @g450_nextpll(%struct.matrox_fb_info* %62, %struct.matrox_pll_limits* %63, i32* %64, i32 %66)
  ret i32 %67
}

declare dso_local i32 @g450_f2vco(i32, i32) #1

declare dso_local i32 @g450_nextpll(%struct.matrox_fb_info*, %struct.matrox_pll_limits*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
