; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_band_rateinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_band_rateinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.nlattr = type { i32 }

@NL80211_BAND_ATTR_HT_MCS_SET = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_CAPA = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_AMPDU_FACTOR = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_HT_AMPDU_DENSITY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_VHT_MCS_SET = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_VHT_CAPA = common dso_local global i32 0, align 4
@NL80211_BAND_ATTR_RATES = common dso_local global i32 0, align 4
@NL80211_BITRATE_ATTR_RATE = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_supported_band*)* @nl80211_send_band_rateinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_band_rateinfo(%struct.sk_buff* %0, %struct.ieee80211_supported_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %5, align 8
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @NL80211_BAND_ATTR_HT_MCS_SET, align 4
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = call i64 @nla_put(%struct.sk_buff* %16, i32 %17, i32 4, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @NL80211_BAND_ATTR_HT_CAPA, align 4
  %26 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @nla_put_u16(%struct.sk_buff* %24, i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @NL80211_BAND_ATTR_HT_AMPDU_FACTOR, align 4
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u8(%struct.sk_buff* %33, i32 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %32
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @NL80211_BAND_ATTR_HT_AMPDU_DENSITY, align 4
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @nla_put_u8(%struct.sk_buff* %42, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41, %32, %23, %15
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %147

53:                                               ; preds = %41, %2
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @NL80211_BAND_ATTR_VHT_MCS_SET, align 4
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i64 @nla_put(%struct.sk_buff* %60, i32 %61, i32 4, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %59
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @NL80211_BAND_ATTR_VHT_CAPA, align 4
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @nla_put_u32(%struct.sk_buff* %68, i32 %69, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67, %59
  %77 = load i32, i32* @ENOBUFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %147

79:                                               ; preds = %67, %53
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* @NL80211_BAND_ATTR_RATES, align 4
  %82 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %80, i32 %81)
  store %struct.nlattr* %82, %struct.nlattr** %6, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOBUFS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %147

88:                                               ; preds = %79
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %140, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %89
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %96, i32 %97)
  store %struct.nlattr* %98, %struct.nlattr** %7, align 8
  %99 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOBUFS, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %147

104:                                              ; preds = %95
  %105 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %105, i32 0, i32 1
  %107 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %107, i64 %109
  store %struct.ieee80211_rate* %110, %struct.ieee80211_rate** %8, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = load i32, i32* @NL80211_BITRATE_ATTR_RATE, align 4
  %113 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @nla_put_u32(%struct.sk_buff* %111, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %104
  %119 = load i32, i32* @ENOBUFS, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %147

121:                                              ; preds = %104
  %122 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* @NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE, align 4
  %131 = call i64 @nla_put_flag(%struct.sk_buff* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @ENOBUFS, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %147

136:                                              ; preds = %128, %121
  %137 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %138 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %139 = call i32 @nla_nest_end(%struct.sk_buff* %137, %struct.nlattr* %138)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %89

143:                                              ; preds = %89
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %146 = call i32 @nla_nest_end(%struct.sk_buff* %144, %struct.nlattr* %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %133, %118, %101, %85, %76, %50
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
