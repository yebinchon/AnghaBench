; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_sta_ps_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
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
  store i32 0, i32* %8, align 4
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @IEEE80211_DTIM_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %126

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @IEEE80211_DTIM_INVALID, align 4
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IEEE80211_DTIM_UCAST, align 4
  %31 = load i32, i32* @IEEE80211_DTIM_MBCAST, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = and i32 %29, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  store i16 2, i16* %4, align 2
  br label %126

40:                                               ; preds = %24
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @MSECS(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i32 @time_after(i32 %41, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store i16 0, i16* %4, align 2
  br label %126

53:                                               ; preds = %40
  %54 = load i32, i32* @jiffies, align 4
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @MSECS(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = call i32 @time_after(i32 %54, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i16 0, i16* %4, align 2
  br label %126

64:                                               ; preds = %53
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IEEE_SOFTMAC_SINGLE_QUEUE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i16 0, i16* %4, align 2
  br label %126

80:                                               ; preds = %71, %64
  %81 = load i64*, i64** %7, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @MSECS(i32 %93)
  %95 = add nsw i64 %89, %94
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %83, %80
  %98 = load i64*, i64** %6, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %6, align 8
  store i64 %106, i64* %107, align 8
  %108 = load i64*, i64** %7, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %112, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i64*, i64** %6, align 8
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %120, %110, %100
  br label %125

125:                                              ; preds = %124, %97
  store i16 1, i16* %4, align 2
  br label %126

126:                                              ; preds = %125, %79, %63, %52, %39, %18
  %127 = load i16, i16* %4, align 2
  ret i16 %127
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @MSECS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
