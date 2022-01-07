; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_power_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__*, %struct.wireless_dev* }

@NL80211_ATTR_PS_STATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_PS_DISABLED = common dso_local global i64 0, align 8
@NL80211_PS_ENABLED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_power_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_power_save(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = bitcast %struct.net_device* %16 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 1
  %20 = load %struct.net_device**, %struct.net_device*** %19, align 8
  %21 = getelementptr inbounds %struct.net_device*, %struct.net_device** %20, i64 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @NL80211_ATTR_PS_STATE, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %93

33:                                               ; preds = %2
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_PS_STATE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @nla_get_u32(i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @NL80211_PS_DISABLED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @NL80211_PS_ENABLED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %93

51:                                               ; preds = %44, %33
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %53, align 8
  store %struct.wireless_dev* %54, %struct.wireless_dev** %7, align 8
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %93

64:                                               ; preds = %51
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @NL80211_PS_ENABLED, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %93

76:                                               ; preds = %64
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %78 = bitcast %struct.cfg80211_registered_device* %77 to %struct.net_device*
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rdev_set_power_mgmt(%struct.net_device* %78, %struct.net_device* %79, i32 %80, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %76
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %75, %61, %48, %30
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @rdev_set_power_mgmt(%struct.net_device*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
