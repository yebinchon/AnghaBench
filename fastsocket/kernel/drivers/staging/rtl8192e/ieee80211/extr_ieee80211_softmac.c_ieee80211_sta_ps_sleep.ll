; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32, i64, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64* }
%struct.TYPE_3__ = type { i64 }

@IEEE80211_DTIM_VALID = common dso_local global i32 0, align 4
@IEEE80211_DTIM_INVALID = common dso_local global i32 0, align 4
@IEEE80211_DTIM_UCAST = common dso_local global i32 0, align 4
@IEEE80211_DTIM_MBCAST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_SINGLE_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @ieee80211_sta_ps_sleep(%struct.ieee80211_device* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IEEE80211_DTIM_VALID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %128

22:                                               ; preds = %3
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @IEEE80211_DTIM_INVALID, align 4
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @IEEE80211_DTIM_UCAST, align 4
  %33 = load i32, i32* @IEEE80211_DTIM_MBCAST, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = and i32 %31, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i16 2, i16* %4, align 2
  br label %128

42:                                               ; preds = %22
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 7
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @MSECS(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @time_after(i32 %43, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i16 0, i16* %4, align 2
  br label %128

55:                                               ; preds = %42
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @MSECS(i32 %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @time_after(i32 %56, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i16 0, i16* %4, align 2
  br label %128

66:                                               ; preds = %55
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i16 0, i16* %4, align 2
  br label %128

82:                                               ; preds = %73, %66
  %83 = load i64*, i64** %7, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %91, %96
  %98 = load i64*, i64** %7, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %85, %82
  %100 = load i64*, i64** %6, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %6, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = icmp ne i64* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %102
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %114, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i64*, i64** %6, align 8
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %122, %112, %102
  br label %127

127:                                              ; preds = %126, %99
  store i16 1, i16* %4, align 2
  br label %128

128:                                              ; preds = %127, %81, %65, %54, %41, %21
  %129 = load i16, i16* %4, align 2
  ret i16 %129
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @MSECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
