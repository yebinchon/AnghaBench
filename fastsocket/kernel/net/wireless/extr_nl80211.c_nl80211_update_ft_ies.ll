; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_update_ft_ies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_update_ft_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.cfg80211_update_ft_ies_params = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MDID = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_update_ft_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_update_ft_ies(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.cfg80211_update_ft_ies_params, align 4
  %8 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = bitcast %struct.net_device* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.net_device**, %struct.net_device*** %16, align 8
  %18 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %21 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @NL80211_ATTR_MDID, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @NL80211_ATTR_IE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @is_valid_ie_attr(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %37
  %50 = call i32 @memset(%struct.cfg80211_update_ft_ies_params* %7, i32 0, i32 12)
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @NL80211_ATTR_MDID, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nla_get_u16(i32 %56)
  %58 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %7, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @NL80211_ATTR_IE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nla_data(i32 %64)
  %66 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %7, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @NL80211_ATTR_IE, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nla_len(i32 %72)
  %74 = getelementptr inbounds %struct.cfg80211_update_ft_ies_params, %struct.cfg80211_update_ft_ies_params* %7, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %76 = bitcast %struct.cfg80211_registered_device* %75 to %struct.net_device*
  %77 = load %struct.net_device*, %struct.net_device** %8, align 8
  %78 = call i32 @rdev_update_ft_ies(%struct.net_device* %76, %struct.net_device* %77, %struct.cfg80211_update_ft_ies_params* %7)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %49, %46, %26
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @is_valid_ie_attr(i32) #1

declare dso_local i32 @memset(%struct.cfg80211_update_ft_ies_params*, i32, i32) #1

declare dso_local i32 @nla_get_u16(i32) #1

declare dso_local i32 @nla_data(i32) #1

declare dso_local i32 @nla_len(i32) #1

declare dso_local i32 @rdev_update_ft_ies(%struct.net_device*, %struct.net_device*, %struct.cfg80211_update_ft_ies_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
