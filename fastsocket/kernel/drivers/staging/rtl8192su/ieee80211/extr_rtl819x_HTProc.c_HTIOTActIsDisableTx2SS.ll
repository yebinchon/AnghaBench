; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTActIsDisableTx2SS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_HTProc.c_HTIOTActIsDisableTx2SS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_network = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@KEY_TYPE_WEP104 = common dso_local global i64 0, align 8
@KEY_TYPE_WEP40 = common dso_local global i64 0, align 8
@KEY_TYPE_TKIP = common dso_local global i64 0, align 8
@HT_IOT_PEER_REALTEK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTIOTActIsDisableTx2SS(%struct.ieee80211_device* %0, %struct.ieee80211_network* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load i64, i64* @KEY_TYPE_WEP104, align 8
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @KEY_TYPE_WEP40, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* @KEY_TYPE_WEP104, align 8
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @KEY_TYPE_WEP40, align 8
  %29 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @KEY_TYPE_TKIP, align 8
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33, %27, %21, %15, %2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HT_IOT_PEER_REALTEK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %45, %39
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
