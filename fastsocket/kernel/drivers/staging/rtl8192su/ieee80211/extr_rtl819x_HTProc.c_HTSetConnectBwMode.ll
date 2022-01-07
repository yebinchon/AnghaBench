; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTSetConnectBwMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTSetConnectBwMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_3__, i32, i32 (i32)*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@HT_EXTCHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@HT_EXTCHNL_OFFSET_NO_EXT = common dso_local global i64 0, align 8
@HT_EXTCHNL_OFFSET_UPPER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HTSetConnectBwMode(%struct.ieee80211_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %79

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %79

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %27, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @HT_EXTCHNL_OFFSET_LOWER, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %45, %41, %35
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @HT_EXTCHNL_OFFSET_UPPER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @HT_EXTCHNL_OFFSET_LOWER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load i64, i64* @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  br label %74

68:                                               ; preds = %26, %22
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load i64, i64* @HT_EXTCHNL_OFFSET_NO_EXT, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %68, %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %78 = call i32 @HTSetConnectBwModeCallback(%struct.ieee80211_device* %77)
  br label %79

79:                                               ; preds = %74, %21, %15
  ret void
}

declare dso_local i32 @HTSetConnectBwModeCallback(%struct.ieee80211_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
