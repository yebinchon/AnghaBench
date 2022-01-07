; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_p2p_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wireless_dev** }
%struct.wireless_dev = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i64, i32, i32, i32, %struct.TYPE_2__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_p2p_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_p2p_device(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev**, %struct.wireless_dev*** %10, align 8
  %12 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %11, i64 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %14 = bitcast %struct.wireless_dev* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev**, %struct.wireless_dev*** %16, align 8
  %18 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %17, i64 1
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %7, align 8
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %2
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %29
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %83

44:                                               ; preds = %38
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %49 = bitcast %struct.cfg80211_registered_device* %48 to %struct.wireless_dev*
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @cfg80211_can_add_interface(%struct.wireless_dev* %49, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %83

61:                                               ; preds = %44
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %63 = bitcast %struct.cfg80211_registered_device* %62 to %struct.wireless_dev*
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %65 = call i32 @rdev_start_p2p_device(%struct.wireless_dev* %63, %struct.wireless_dev* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %61
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  %73 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %74 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %73, i32 0, i32 2
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  %80 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %81 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %70, %68, %59, %43, %35, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_can_add_interface(%struct.wireless_dev*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rdev_start_p2p_device(%struct.wireless_dev*, %struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
