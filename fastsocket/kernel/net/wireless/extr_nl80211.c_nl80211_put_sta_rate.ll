; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_put_sta_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_put_sta_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rate_info = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_RATE_INFO_BITRATE32 = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_BITRATE = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_VHT_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_VHT_NSS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_80P80_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_80P80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rate_info*, i32)* @nl80211_put_sta_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_put_sta_rate(%struct.sk_buff* %0, %struct.rate_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rate_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.rate_info* %1, %struct.rate_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %8, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %185

17:                                               ; preds = %3
  %18 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %19 = call i64 @cfg80211_calculate_bitrate(%struct.rate_info* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 65536
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ 0, %24 ]
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @NL80211_RATE_INFO_BITRATE32, align 4
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %185

36:                                               ; preds = %29, %25
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @NL80211_RATE_INFO_BITRATE, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @nla_put_u16(%struct.sk_buff* %40, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %185

46:                                               ; preds = %39, %36
  %47 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %48 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @NL80211_RATE_INFO_MCS, align 4
  %56 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %57 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u8(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %185

62:                                               ; preds = %53
  %63 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %64 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @NL80211_RATE_INFO_40_MHZ_WIDTH, align 4
  %72 = call i64 @nla_put_flag(%struct.sk_buff* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %185

75:                                               ; preds = %69, %62
  %76 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %77 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = load i32, i32* @NL80211_RATE_INFO_SHORT_GI, align 4
  %85 = call i64 @nla_put_flag(%struct.sk_buff* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %185

88:                                               ; preds = %82, %75
  br label %181

89:                                               ; preds = %46
  %90 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %91 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %180

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load i32, i32* @NL80211_RATE_INFO_VHT_MCS, align 4
  %99 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %100 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @nla_put_u8(%struct.sk_buff* %97, i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %185

105:                                              ; preds = %96
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* @NL80211_RATE_INFO_VHT_NSS, align 4
  %108 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %109 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @nla_put_u8(%struct.sk_buff* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %185

114:                                              ; preds = %105
  %115 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %116 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RATE_INFO_FLAGS_40_MHZ_WIDTH, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load i32, i32* @NL80211_RATE_INFO_40_MHZ_WIDTH, align 4
  %124 = call i64 @nla_put_flag(%struct.sk_buff* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %185

127:                                              ; preds = %121, %114
  %128 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %129 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RATE_INFO_FLAGS_80_MHZ_WIDTH, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = load i32, i32* @NL80211_RATE_INFO_80_MHZ_WIDTH, align 4
  %137 = call i64 @nla_put_flag(%struct.sk_buff* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %185

140:                                              ; preds = %134, %127
  %141 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %142 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RATE_INFO_FLAGS_80P80_MHZ_WIDTH, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load i32, i32* @NL80211_RATE_INFO_80P80_MHZ_WIDTH, align 4
  %150 = call i64 @nla_put_flag(%struct.sk_buff* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %185

153:                                              ; preds = %147, %140
  %154 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %155 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RATE_INFO_FLAGS_160_MHZ_WIDTH, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = load i32, i32* @NL80211_RATE_INFO_160_MHZ_WIDTH, align 4
  %163 = call i64 @nla_put_flag(%struct.sk_buff* %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %185

166:                                              ; preds = %160, %153
  %167 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %168 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = load i32, i32* @NL80211_RATE_INFO_SHORT_GI, align 4
  %176 = call i64 @nla_put_flag(%struct.sk_buff* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %185

179:                                              ; preds = %173, %166
  br label %180

180:                                              ; preds = %179, %89
  br label %181

181:                                              ; preds = %180, %88
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %184 = call i32 @nla_nest_end(%struct.sk_buff* %182, %struct.nlattr* %183)
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %181, %178, %165, %152, %139, %126, %113, %104, %87, %74, %61, %45, %35, %16
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
