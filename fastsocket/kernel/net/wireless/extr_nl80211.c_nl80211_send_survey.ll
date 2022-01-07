; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_survey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.survey_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_CMD_NEW_SURVEY_RESULTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_SURVEY_INFO = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_FREQUENCY = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_NOISE = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_CHANNEL_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_BUSY = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_EXT_BUSY = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_RX = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_CHANNEL_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_TX = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_CHANNEL_TIME_TX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.net_device*, %struct.survey_info*)* @nl80211_send_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_survey(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, %struct.survey_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.survey_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.survey_info* %5, %struct.survey_info** %13, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @NL80211_CMD_NEW_SURVEY_RESULTS, align 4
  %21 = call i8* @nl80211hdr_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %176

27:                                               ; preds = %6
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %30 = load %struct.net_device*, %struct.net_device** %12, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %170

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* @NL80211_ATTR_SURVEY_INFO, align 4
  %39 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %37, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %15, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %170

43:                                               ; preds = %36
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load i32, i32* @NL80211_SURVEY_INFO_FREQUENCY, align 4
  %46 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %47 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %46, i32 0, i32 7
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %170

54:                                               ; preds = %43
  %55 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %56 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i32, i32* @NL80211_SURVEY_INFO_NOISE, align 4
  %64 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %65 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @nla_put_u8(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %170

70:                                               ; preds = %61, %54
  %71 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %72 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = load i32, i32* @NL80211_SURVEY_INFO_IN_USE, align 4
  %80 = call i64 @nla_put_flag(%struct.sk_buff* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %170

83:                                               ; preds = %77, %70
  %84 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %85 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* @NL80211_SURVEY_INFO_CHANNEL_TIME, align 4
  %93 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %94 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u64(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %170

99:                                               ; preds = %90, %83
  %100 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %101 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_BUSY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32, i32* @NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY, align 4
  %109 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %110 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @nla_put_u64(%struct.sk_buff* %107, i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %170

115:                                              ; preds = %106, %99
  %116 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %117 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_EXT_BUSY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = load i32, i32* @NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY, align 4
  %125 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %126 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @nla_put_u64(%struct.sk_buff* %123, i32 %124, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %170

131:                                              ; preds = %122, %115
  %132 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %133 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_RX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = load i32, i32* @NL80211_SURVEY_INFO_CHANNEL_TIME_RX, align 4
  %141 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %142 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @nla_put_u64(%struct.sk_buff* %139, i32 %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %170

147:                                              ; preds = %138, %131
  %148 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %149 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_TX, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = load i32, i32* @NL80211_SURVEY_INFO_CHANNEL_TIME_TX, align 4
  %157 = load %struct.survey_info*, %struct.survey_info** %13, align 8
  %158 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @nla_put_u64(%struct.sk_buff* %155, i32 %156, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %170

163:                                              ; preds = %154, %147
  %164 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %165 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %166 = call i32 @nla_nest_end(%struct.sk_buff* %164, %struct.nlattr* %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = load i8*, i8** %14, align 8
  %169 = call i32 @genlmsg_end(%struct.sk_buff* %167, i8* %168)
  store i32 %169, i32* %7, align 4
  br label %176

170:                                              ; preds = %162, %146, %130, %114, %98, %82, %69, %53, %42, %35
  %171 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = call i32 @genlmsg_cancel(%struct.sk_buff* %171, i8* %172)
  %174 = load i32, i32* @EMSGSIZE, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %170, %163, %24
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
