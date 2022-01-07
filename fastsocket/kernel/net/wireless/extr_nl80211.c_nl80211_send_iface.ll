; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wireless_dev = type { i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_CMD_NEW_INTERFACE = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_IFNAME = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*)* @nl80211_send_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_iface(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.cfg80211_registered_device* %4, %struct.wireless_dev* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cfg80211_chan_def, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.cfg80211_registered_device* %4, %struct.cfg80211_registered_device** %12, align 8
  store %struct.wireless_dev* %5, %struct.wireless_dev** %13, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 3
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @NL80211_CMD_NEW_INTERFACE, align 4
  %26 = call i8* @nl80211hdr_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %141

30:                                               ; preds = %6
  %31 = load %struct.net_device*, %struct.net_device** %14, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %36 = load %struct.net_device*, %struct.net_device** %14, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load i32, i32* @NL80211_ATTR_IFNAME, align 4
  %44 = load %struct.net_device*, %struct.net_device** %14, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nla_put_string(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %33
  br label %135

50:                                               ; preds = %41, %30
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %54 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* @NL80211_ATTR_IFTYPE, align 4
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %92, label %66

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %70 = call i32 @wdev_id(%struct.wireless_dev* %69)
  %71 = call i64 @nla_put_u64(%struct.sk_buff* %67, i32 %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %76 = load i64, i64* @ETH_ALEN, align 8
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %78 = call i32 @wdev_address(%struct.wireless_dev* %77)
  %79 = call i64 @nla_put(%struct.sk_buff* %74, i32 %75, i64 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %73
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %85 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %88 = shl i32 %87, 2
  %89 = xor i32 %86, %88
  %90 = call i64 @nla_put_u32(%struct.sk_buff* %82, i32 %83, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81, %73, %66, %58, %50
  br label %135

93:                                               ; preds = %81
  %94 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %95 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %93
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %103 = call i32 @rdev_get_channel(%struct.cfg80211_registered_device* %101, %struct.wireless_dev* %102, %struct.cfg80211_chan_def* %17)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = call i64 @nl80211_send_chandef(%struct.sk_buff* %107, %struct.cfg80211_chan_def* %17)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %135

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %115 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* @NL80211_ATTR_SSID, align 4
  %121 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %122 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %125 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @nla_put(%struct.sk_buff* %119, i32 %120, i64 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %135

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %113
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @genlmsg_end(%struct.sk_buff* %132, i8* %133)
  store i32 %134, i32* %7, align 4
  br label %141

135:                                              ; preds = %129, %110, %92, %49
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = call i32 @genlmsg_cancel(%struct.sk_buff* %136, i8* %137)
  %139 = load i32, i32* @EMSGSIZE, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %135, %131, %29
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @wdev_address(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_get_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @nl80211_send_chandef(%struct.sk_buff*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
