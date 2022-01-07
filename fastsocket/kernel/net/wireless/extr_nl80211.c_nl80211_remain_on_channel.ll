; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32*, %struct.wireless_dev** }
%struct.wireless_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_DURATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_MIN_REMAIN_ON_CHANNEL_TIME = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_remain_on_channel(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 3
  %16 = load %struct.wireless_dev**, %struct.wireless_dev*** %15, align 8
  %17 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %16, i64 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %19 = bitcast %struct.wireless_dev* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 3
  %22 = load %struct.wireless_dev**, %struct.wireless_dev*** %21, align 8
  %23 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %22, i64 1
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %23, align 8
  store %struct.wireless_dev* %24, %struct.wireless_dev** %7, align 8
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32, %2
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %148

43:                                               ; preds = %32
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_get_u32(i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %52 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %43
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57, %43
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %148

68:                                               ; preds = %57
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @NL80211_MIN_REMAIN_ON_CHANNEL_TIME, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %12, align 8
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %75 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72, %68
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %148

82:                                               ; preds = %72
  %83 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %84 = bitcast %struct.cfg80211_registered_device* %83 to %struct.wireless_dev*
  %85 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %86 = call i32 @nl80211_parse_chandef(%struct.wireless_dev* %84, %struct.genl_info* %85, %struct.cfg80211_chan_def* %8)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %82
  %92 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.sk_buff* @nlmsg_new(i32 %92, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %148

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %103 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NL80211_CMD_REMAIN_ON_CHANNEL, align 4
  %109 = call i8* @nl80211hdr_put(%struct.sk_buff* %101, i32 %104, i32 %107, i32 0, i32 %108)
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %13, align 4
  br label %144

116:                                              ; preds = %100
  %117 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %118 = bitcast %struct.cfg80211_registered_device* %117 to %struct.wireless_dev*
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %120 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @rdev_remain_on_channel(%struct.wireless_dev* %118, %struct.wireless_dev* %119, i32 %121, i64 %122, i32* %11)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %144

127:                                              ; preds = %116
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i64 @nla_put_u64(%struct.sk_buff* %128, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %141

134:                                              ; preds = %127
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @genlmsg_end(%struct.sk_buff* %135, i8* %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %140 = call i32 @genlmsg_reply(%struct.sk_buff* %138, %struct.genl_info* %139)
  store i32 %140, i32* %3, align 4
  br label %148

141:                                              ; preds = %133
  %142 = load i32, i32* @ENOBUFS, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %141, %126, %113
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = call i32 @nlmsg_free(%struct.sk_buff* %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %134, %97, %89, %79, %65, %40
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.wireless_dev*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @rdev_remain_on_channel(%struct.wireless_dev*, %struct.wireless_dev*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
