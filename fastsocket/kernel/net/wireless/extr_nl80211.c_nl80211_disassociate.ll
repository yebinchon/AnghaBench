; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_disassociate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }

@NL80211_ATTR_IE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_REASON_CODE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@NL80211_ATTR_LOCAL_STATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_disassociate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_disassociate(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = bitcast %struct.net_device* %17 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %6, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.net_device**, %struct.net_device*** %20, align 8
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %21, i64 1
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @NL80211_ATTR_IE, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @is_valid_ie_attr(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %149

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %149

46:                                               ; preds = %35
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %149

57:                                               ; preds = %46
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %149

67:                                               ; preds = %57
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %149

86:                                               ; preds = %75, %67
  %87 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %88 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32* @nla_data(i64 %92)
  store i32* %93, i32** %9, align 8
  %94 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @NL80211_ATTR_REASON_CODE, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @nla_get_u16(i64 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %86
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %149

106:                                              ; preds = %86
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @NL80211_ATTR_IE, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %106
  %115 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %116 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @NL80211_ATTR_IE, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32* @nla_data(i64 %120)
  store i32* %121, i32** %8, align 8
  %122 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %123 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @NL80211_ATTR_IE, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @nla_len(i64 %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %114, %106
  %130 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %131 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @NL80211_ATTR_LOCAL_STATE_CHANGE, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %12, align 4
  %140 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %141 = bitcast %struct.cfg80211_registered_device* %140 to %struct.net_device*
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i64, i64* %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @cfg80211_mlme_disassoc(%struct.net_device* %141, %struct.net_device* %142, i32* %143, i32* %144, i32 %145, i64 %146, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %129, %103, %83, %64, %54, %43, %32
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @is_valid_ie_attr(i64) #1

declare dso_local i32* @nla_data(i64) #1

declare dso_local i64 @nla_get_u16(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @cfg80211_mlme_disassoc(%struct.net_device*, %struct.net_device*, i32*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
