; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_TDLS_ACTION = common dso_local global i64 0, align 8
@NL80211_ATTR_STATUS_CODE = common dso_local global i64 0, align 8
@NL80211_ATTR_TDLS_DIALOG_TOKEN = common dso_local global i64 0, align 8
@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_tdls_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_tdls_mgmt(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30, %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %134

40:                                               ; preds = %30
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @NL80211_ATTR_TDLS_ACTION, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %40
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @NL80211_ATTR_TDLS_DIALOG_TOKEN, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_IE, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72, %64, %56, %48, %40
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %134

83:                                               ; preds = %72
  %84 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %85 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @nla_data(i32 %89)
  store i32* %90, i32** %11, align 8
  %91 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %92 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @NL80211_ATTR_TDLS_ACTION, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nla_get_u8(i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @NL80211_ATTR_STATUS_CODE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @nla_get_u16(i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_TDLS_DIALOG_TOKEN, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nla_get_u8(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %113 = bitcast %struct.cfg80211_registered_device* %112 to %struct.net_device*
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @NL80211_ATTR_IE, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32* @nla_data(i32 %124)
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @NL80211_ATTR_IE, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @nla_len(i32 %131)
  %133 = call i32 @rdev_tdls_mgmt(%struct.net_device* %113, %struct.net_device* %114, i32* %115, i32 %116, i32 %117, i32 %118, i32* %125, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %83, %80, %37
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32* @nla_data(i32) #1

declare dso_local i32 @nla_get_u8(i32) #1

declare dso_local i32 @nla_get_u16(i32) #1

declare dso_local i32 @rdev_tdls_mgmt(%struct.net_device*, %struct.net_device*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nla_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
