; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_mpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mpath_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_CMD_NEW_STATION = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_MPATH_NEXT_HOP = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_MPATH_INFO = common dso_local global i32 0, align 4
@MPATH_INFO_FRAME_QLEN = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_FRAME_QLEN = common dso_local global i32 0, align 4
@MPATH_INFO_SN = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_SN = common dso_local global i32 0, align 4
@MPATH_INFO_METRIC = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_METRIC = common dso_local global i32 0, align 4
@MPATH_INFO_EXPTIME = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_EXPTIME = common dso_local global i32 0, align 4
@MPATH_INFO_FLAGS = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_FLAGS = common dso_local global i32 0, align 4
@MPATH_INFO_DISCOVERY_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_DISCOVERY_TIMEOUT = common dso_local global i32 0, align 4
@MPATH_INFO_DISCOVERY_RETRIES = common dso_local global i32 0, align 4
@NL80211_MPATH_INFO_DISCOVERY_RETRIES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32*, i32*, %struct.mpath_info*)* @nl80211_send_mpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_mpath(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, i32* %5, i32* %6, %struct.mpath_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.mpath_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.net_device* %4, %struct.net_device** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.mpath_info* %7, %struct.mpath_info** %17, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @NL80211_CMD_NEW_STATION, align 4
  %25 = call i8* @nl80211hdr_put(%struct.sk_buff* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i8* %25, i8** %18, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %187

29:                                               ; preds = %8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %32 = load %struct.net_device*, %struct.net_device** %14, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %29
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i64 @nla_put(%struct.sk_buff* %38, i32 %39, i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load i32, i32* @NL80211_ATTR_MPATH_NEXT_HOP, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = call i64 @nla_put(%struct.sk_buff* %45, i32 %46, i32 %47, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %54 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %55 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %44, %37, %29
  br label %181

60:                                               ; preds = %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* @NL80211_ATTR_MPATH_INFO, align 4
  %63 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %61, i32 %62)
  store %struct.nlattr* %63, %struct.nlattr** %19, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %181

67:                                               ; preds = %60
  %68 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %69 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MPATH_INFO_FRAME_QLEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i32, i32* @NL80211_MPATH_INFO_FRAME_QLEN, align 4
  %77 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %78 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %181

83:                                               ; preds = %74, %67
  %84 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %85 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MPATH_INFO_SN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = load i32, i32* @NL80211_MPATH_INFO_SN, align 4
  %93 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %94 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %173, label %98

98:                                               ; preds = %90, %83
  %99 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %100 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MPATH_INFO_METRIC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load i32, i32* @NL80211_MPATH_INFO_METRIC, align 4
  %108 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %109 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @nla_put_u32(%struct.sk_buff* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %173, label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %115 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MPATH_INFO_EXPTIME, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = load i32, i32* @NL80211_MPATH_INFO_EXPTIME, align 4
  %123 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %124 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @nla_put_u32(%struct.sk_buff* %121, i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %173, label %128

128:                                              ; preds = %120, %113
  %129 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %130 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MPATH_INFO_FLAGS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %137 = load i32, i32* @NL80211_MPATH_INFO_FLAGS, align 4
  %138 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %139 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @nla_put_u8(%struct.sk_buff* %136, i32 %137, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %173, label %143

143:                                              ; preds = %135, %128
  %144 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %145 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MPATH_INFO_DISCOVERY_TIMEOUT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = load i32, i32* @NL80211_MPATH_INFO_DISCOVERY_TIMEOUT, align 4
  %153 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %154 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @nla_put_u32(%struct.sk_buff* %151, i32 %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %150, %143
  %159 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %160 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MPATH_INFO_DISCOVERY_RETRIES, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %167 = load i32, i32* @NL80211_MPATH_INFO_DISCOVERY_RETRIES, align 4
  %168 = load %struct.mpath_info*, %struct.mpath_info** %17, align 8
  %169 = getelementptr inbounds %struct.mpath_info, %struct.mpath_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @nla_put_u8(%struct.sk_buff* %166, i32 %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165, %150, %135, %120, %105, %90
  br label %181

174:                                              ; preds = %165, %158
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %177 = call i32 @nla_nest_end(%struct.sk_buff* %175, %struct.nlattr* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 @genlmsg_end(%struct.sk_buff* %178, i8* %179)
  store i32 %180, i32* %9, align 4
  br label %187

181:                                              ; preds = %173, %82, %66, %59
  %182 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = call i32 @genlmsg_cancel(%struct.sk_buff* %182, i8* %183)
  %185 = load i32, i32* @EMSGSIZE, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %181, %174, %28
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
