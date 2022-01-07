; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c____cfg80211_scan_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_scan.c____cfg80211_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.cfg80211_scan_request*, i32, i32 }
%struct.cfg80211_scan_request = type { i32, i64, i32, %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }

@NL80211_SCAN_FLAG_FLUSH = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @___cfg80211_scan_done(%struct.cfg80211_registered_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %11 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %10, i32 0, i32 0
  %12 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  store %struct.cfg80211_scan_request* %12, %struct.cfg80211_scan_request** %5, align 8
  %13 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %14 = icmp ne %struct.cfg80211_scan_request* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 3
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %6, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cfg80211_sme_scan_done(i64 %27)
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %37 = call i32 @nl80211_send_scan_aborted(%struct.cfg80211_registered_device* %35, %struct.wireless_dev* %36)
  br label %61

38:                                               ; preds = %29
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NL80211_SCAN_FLAG_FLUSH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %50 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %51 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__cfg80211_bss_expire(%struct.cfg80211_registered_device* %49, i32 %52)
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_bh(i32* %55)
  br label %57

57:                                               ; preds = %45, %38
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %60 = call i32 @nl80211_send_scan_done(%struct.cfg80211_registered_device* %58, %struct.wireless_dev* %59)
  br label %61

61:                                               ; preds = %57, %34
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dev_put(i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %73 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %72, i32 0, i32 0
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %78 = call i32 @kfree(%struct.cfg80211_scan_request* %77)
  br label %79

79:                                               ; preds = %15, %76, %71
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cfg80211_sme_scan_done(i64) #1

declare dso_local i32 @nl80211_send_scan_aborted(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__cfg80211_bss_expire(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nl80211_send_scan_done(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @kfree(%struct.cfg80211_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
