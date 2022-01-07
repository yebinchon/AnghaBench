; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_get_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_get_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@NL80211_ATTR_STA_VLAN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.genl_info*, %struct.cfg80211_registered_device*)* @get_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @get_vlan(%struct.genl_info* %0, %struct.cfg80211_registered_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %12 = load i64, i64* @NL80211_ATTR_STA_VLAN, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  store %struct.nlattr* %14, %struct.nlattr** %6, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %88

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %20 = call i32 @genl_info_net(%struct.genl_info* %19)
  %21 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %22 = call i32 @nla_get_u32(%struct.nlattr* %21)
  %23 = call %struct.net_device* @dev_get_by_index(i32 %20, i32 %22)
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.net_device* @ERR_PTR(i32 %28)
  store %struct.net_device* %29, %struct.net_device** %3, align 8
  br label %88

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %42 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %41, i32 0, i32 0
  %43 = icmp ne i32* %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35, %30
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %83

47:                                               ; preds = %35
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %83

74:                                               ; preds = %63, %55, %47
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = call i32 @netif_running(%struct.net_device* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @ENETDOWN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %82, %struct.net_device** %3, align 8
  br label %88

83:                                               ; preds = %78, %71, %44
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = call i32 @dev_put(%struct.net_device* %84)
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.net_device* @ERR_PTR(i32 %86)
  store %struct.net_device* %87, %struct.net_device** %3, align 8
  br label %88

88:                                               ; preds = %83, %81, %26, %17
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %89
}

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
