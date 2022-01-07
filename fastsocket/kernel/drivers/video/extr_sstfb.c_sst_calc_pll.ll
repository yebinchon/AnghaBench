; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sstfb.c_sst_calc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sstfb.c_sst_calc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_timing = type { i32, i32, i32 }

@VCO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAC_FREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m: %d, n: %d, p: %d, F: %dKhz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.pll_timing*)* @sst_calc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_calc_pll(i32 %0, i32* %1, %struct.pll_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pll_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.pll_timing* %2, %struct.pll_timing** %7, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %12, align 4
  store i32 3, i32* %11, align 4
  br label %17

17:                                               ; preds = %29, %3
  %18 = load i32, i32* %11, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @VCO_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = icmp sge i32 %25, 0
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i1 [ false, %17 ], [ %26, %24 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  br label %17

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %151

38:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %103, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 32
  br i1 %41, label %42, label %106

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 2, %43
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 1, %45
  %47 = mul nsw i32 %44, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 2
  %50 = mul nsw i32 %47, %49
  %51 = load i32, i32* @DAC_FREF, align 4
  %52 = sdiv i32 %50, %51
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = srem i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %59, 1
  br label %64

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 2
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32 [ %60, %57 ], [ %63, %61 ]
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 128
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %106

69:                                               ; preds = %64
  %70 = load i32, i32* @DAC_FREF, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 2
  %73 = mul nsw i32 %70, %72
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 2
  %78 = mul nsw i32 %75, %77
  %79 = sdiv i32 %73, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @abs(i32 %82) #3
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %69
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @abs(i32 %94) #3
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 200, %96
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %106

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %86, %69
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %39

106:                                              ; preds = %100, %68, %39
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %151

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %115 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %118 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %121 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @DAC_FREF, align 4
  %123 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %124 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 2
  %127 = mul nsw i32 %122, %126
  %128 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %129 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 1, %130
  %132 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %133 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 2
  %136 = mul nsw i32 %131, %135
  %137 = sdiv i32 %127, %136
  %138 = load i32*, i32** %6, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %140 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %143 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.pll_timing*, %struct.pll_timing** %7, align 8
  %146 = getelementptr inbounds %struct.pll_timing, %struct.pll_timing* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @f_ddprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %144, i32 %147, i32 %149)
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %112, %109, %35
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @f_ddprintk(i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
