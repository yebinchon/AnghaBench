; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfMmAddIeSupportRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfMmAddIeSupportRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ZM_RATE_SET_CCK = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@zg11bRateTbl = common dso_local global i64* null, align 8
@ZM_RATE_SET_OFDM = common dso_local global i64 0, align 8
@zg11gRateTbl = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfMmAddIeSupportRate(i32* %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @ZM_RATE_SET_CCK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %61, %18
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = load i32, i32* %12, align 4
  %30 = shl i32 1, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %36, %37
  %39 = add nsw i64 %38, 2
  %40 = trunc i64 %39 to i32
  %41 = load i64*, i64** @zg11bRateTbl, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 7, %52
  %54 = shl i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %45, %55
  %57 = call i32 @zmw_tx_buf_writeb(i32* %33, i32* %34, i32 %40, i64 %56)
  %58 = load i64, i64* %11, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %32, %22
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %19

64:                                               ; preds = %19
  br label %117

65:                                               ; preds = %5
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @ZM_RATE_SET_OFDM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %112, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 1, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %73
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %87, %88
  %90 = add nsw i64 %89, 2
  %91 = trunc i64 %90 to i32
  %92 = load i64*, i64** @zg11gRateTbl, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 7, %103
  %105 = shl i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %96, %106
  %108 = call i32 @zmw_tx_buf_writeb(i32* %84, i32* %85, i32 %91, i64 %107)
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %11, align 8
  br label %111

111:                                              ; preds = %83, %73
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %70

115:                                              ; preds = %70
  br label %116

116:                                              ; preds = %115, %65
  br label %117

117:                                              ; preds = %116, %64
  %118 = load i64, i64* %11, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @zmw_tx_buf_writeb(i32* %121, i32* %122, i32 %123, i64 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @zmw_tx_buf_writeb(i32* %126, i32* %127, i32 %129, i64 %130)
  %132 = load i64, i64* %11, align 8
  %133 = add nsw i64 2, %132
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %120, %117
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
