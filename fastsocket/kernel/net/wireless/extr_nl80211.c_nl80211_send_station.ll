; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, i32, i32*, i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_CMD_NEW_STATION = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_STA_INFO = common dso_local global i32 0, align 4
@STATION_INFO_CONNECTED_TIME = common dso_local global i32 0, align 4
@NL80211_STA_INFO_CONNECTED_TIME = common dso_local global i32 0, align 4
@STATION_INFO_INACTIVE_TIME = common dso_local global i32 0, align 4
@NL80211_STA_INFO_INACTIVE_TIME = common dso_local global i32 0, align 4
@STATION_INFO_RX_BYTES = common dso_local global i32 0, align 4
@STATION_INFO_RX_BYTES64 = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BYTES = common dso_local global i32 0, align 4
@STATION_INFO_TX_BYTES = common dso_local global i32 0, align 4
@STATION_INFO_TX_BYTES64 = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BYTES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BYTES64 = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BYTES64 = common dso_local global i32 0, align 4
@STATION_INFO_LLID = common dso_local global i32 0, align 4
@NL80211_STA_INFO_LLID = common dso_local global i32 0, align 4
@STATION_INFO_PLID = common dso_local global i32 0, align 4
@NL80211_STA_INFO_PLID = common dso_local global i32 0, align 4
@STATION_INFO_PLINK_STATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_PLINK_STATE = common dso_local global i32 0, align 4
@STATION_INFO_SIGNAL = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@STATION_INFO_SIGNAL_AVG = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL_AVG = common dso_local global i32 0, align 4
@STATION_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@STATION_INFO_RX_BITRATE = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BITRATE = common dso_local global i32 0, align 4
@STATION_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@STATION_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@STATION_INFO_TX_RETRIES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_RETRIES = common dso_local global i32 0, align 4
@STATION_INFO_TX_FAILED = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_FAILED = common dso_local global i32 0, align 4
@STATION_INFO_BEACON_LOSS_COUNT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_BEACON_LOSS = common dso_local global i32 0, align 4
@STATION_INFO_LOCAL_PM = common dso_local global i32 0, align 4
@NL80211_STA_INFO_LOCAL_PM = common dso_local global i32 0, align 4
@STATION_INFO_PEER_PM = common dso_local global i32 0, align 4
@NL80211_STA_INFO_PEER_PM = common dso_local global i32 0, align 4
@STATION_INFO_NONPEER_PM = common dso_local global i32 0, align 4
@NL80211_STA_INFO_NONPEER_PM = common dso_local global i32 0, align 4
@STATION_INFO_BSS_PARAM = common dso_local global i32 0, align 4
@NL80211_STA_INFO_BSS_PARAM = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_CTS_PROT = common dso_local global i32 0, align 4
@NL80211_STA_BSS_PARAM_CTS_PROT = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_STA_BSS_PARAM_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BSS_PARAM_FLAGS_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NL80211_STA_BSS_PARAM_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NL80211_STA_BSS_PARAM_DTIM_PERIOD = common dso_local global i32 0, align 4
@NL80211_STA_BSS_PARAM_BEACON_INTERVAL = common dso_local global i32 0, align 4
@STATION_INFO_STA_FLAGS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_STA_FLAGS = common dso_local global i32 0, align 4
@STATION_INFO_T_OFFSET = common dso_local global i32 0, align 4
@NL80211_STA_INFO_T_OFFSET = common dso_local global i32 0, align 4
@STATION_INFO_ASSOC_REQ_IES = common dso_local global i32 0, align 4
@NL80211_ATTR_IE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.net_device*, i32*, %struct.station_info*)* @nl80211_send_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_station(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.cfg80211_registered_device* %4, %struct.net_device* %5, i32* %6, %struct.station_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cfg80211_registered_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.station_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.cfg80211_registered_device* %4, %struct.cfg80211_registered_device** %14, align 8
  store %struct.net_device* %5, %struct.net_device** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.station_info* %7, %struct.station_info** %17, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @NL80211_CMD_NEW_STATION, align 4
  %26 = call i8* @nl80211hdr_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i8* %26, i8** %18, align 8
  %27 = load i8*, i8** %18, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %549

30:                                               ; preds = %8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %33 = load %struct.net_device*, %struct.net_device** %15, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = call i64 @nla_put(%struct.sk_buff* %39, i32 %40, i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %48 = load %struct.station_info*, %struct.station_info** %17, align 8
  %49 = getelementptr inbounds %struct.station_info, %struct.station_info* %48, i32 0, i32 25
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %38, %30
  br label %543

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i32, i32* @NL80211_ATTR_STA_INFO, align 4
  %57 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %55, i32 %56)
  store %struct.nlattr* %57, %struct.nlattr** %19, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %543

61:                                               ; preds = %54
  %62 = load %struct.station_info*, %struct.station_info** %17, align 8
  %63 = getelementptr inbounds %struct.station_info, %struct.station_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @STATION_INFO_CONNECTED_TIME, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load i32, i32* @NL80211_STA_INFO_CONNECTED_TIME, align 4
  %71 = load %struct.station_info*, %struct.station_info** %17, align 8
  %72 = getelementptr inbounds %struct.station_info, %struct.station_info* %71, i32 0, i32 24
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @nla_put_u32(%struct.sk_buff* %69, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %543

77:                                               ; preds = %68, %61
  %78 = load %struct.station_info*, %struct.station_info** %17, align 8
  %79 = getelementptr inbounds %struct.station_info, %struct.station_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @STATION_INFO_INACTIVE_TIME, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i32, i32* @NL80211_STA_INFO_INACTIVE_TIME, align 4
  %87 = load %struct.station_info*, %struct.station_info** %17, align 8
  %88 = getelementptr inbounds %struct.station_info, %struct.station_info* %87, i32 0, i32 23
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @nla_put_u32(%struct.sk_buff* %85, i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %543

93:                                               ; preds = %84, %77
  %94 = load %struct.station_info*, %struct.station_info** %17, align 8
  %95 = getelementptr inbounds %struct.station_info, %struct.station_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @STATION_INFO_RX_BYTES, align 4
  %98 = load i32, i32* @STATION_INFO_RX_BYTES64, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = load i32, i32* @NL80211_STA_INFO_RX_BYTES, align 4
  %105 = load %struct.station_info*, %struct.station_info** %17, align 8
  %106 = getelementptr inbounds %struct.station_info, %struct.station_info* %105, i32 0, i32 22
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i64 @nla_put_u32(%struct.sk_buff* %103, i32 %104, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %543

112:                                              ; preds = %102, %93
  %113 = load %struct.station_info*, %struct.station_info** %17, align 8
  %114 = getelementptr inbounds %struct.station_info, %struct.station_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @STATION_INFO_TX_BYTES, align 4
  %117 = load i32, i32* @STATION_INFO_TX_BYTES64, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %112
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = load i32, i32* @NL80211_STA_INFO_TX_BYTES, align 4
  %124 = load %struct.station_info*, %struct.station_info** %17, align 8
  %125 = getelementptr inbounds %struct.station_info, %struct.station_info* %124, i32 0, i32 21
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i64 @nla_put_u32(%struct.sk_buff* %122, i32 %123, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %543

131:                                              ; preds = %121, %112
  %132 = load %struct.station_info*, %struct.station_info** %17, align 8
  %133 = getelementptr inbounds %struct.station_info, %struct.station_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @STATION_INFO_RX_BYTES64, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %140 = load i32, i32* @NL80211_STA_INFO_RX_BYTES64, align 4
  %141 = load %struct.station_info*, %struct.station_info** %17, align 8
  %142 = getelementptr inbounds %struct.station_info, %struct.station_info* %141, i32 0, i32 22
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @nla_put_u64(%struct.sk_buff* %139, i32 %140, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %543

147:                                              ; preds = %138, %131
  %148 = load %struct.station_info*, %struct.station_info** %17, align 8
  %149 = getelementptr inbounds %struct.station_info, %struct.station_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @STATION_INFO_TX_BYTES64, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %147
  %155 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %156 = load i32, i32* @NL80211_STA_INFO_TX_BYTES64, align 4
  %157 = load %struct.station_info*, %struct.station_info** %17, align 8
  %158 = getelementptr inbounds %struct.station_info, %struct.station_info* %157, i32 0, i32 21
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @nla_put_u64(%struct.sk_buff* %155, i32 %156, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %543

163:                                              ; preds = %154, %147
  %164 = load %struct.station_info*, %struct.station_info** %17, align 8
  %165 = getelementptr inbounds %struct.station_info, %struct.station_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @STATION_INFO_LLID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = load i32, i32* @NL80211_STA_INFO_LLID, align 4
  %173 = load %struct.station_info*, %struct.station_info** %17, align 8
  %174 = getelementptr inbounds %struct.station_info, %struct.station_info* %173, i32 0, i32 20
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @nla_put_u16(%struct.sk_buff* %171, i32 %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  br label %543

179:                                              ; preds = %170, %163
  %180 = load %struct.station_info*, %struct.station_info** %17, align 8
  %181 = getelementptr inbounds %struct.station_info, %struct.station_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @STATION_INFO_PLID, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %179
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = load i32, i32* @NL80211_STA_INFO_PLID, align 4
  %189 = load %struct.station_info*, %struct.station_info** %17, align 8
  %190 = getelementptr inbounds %struct.station_info, %struct.station_info* %189, i32 0, i32 19
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @nla_put_u16(%struct.sk_buff* %187, i32 %188, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %543

195:                                              ; preds = %186, %179
  %196 = load %struct.station_info*, %struct.station_info** %17, align 8
  %197 = getelementptr inbounds %struct.station_info, %struct.station_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @STATION_INFO_PLINK_STATE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %204 = load i32, i32* @NL80211_STA_INFO_PLINK_STATE, align 4
  %205 = load %struct.station_info*, %struct.station_info** %17, align 8
  %206 = getelementptr inbounds %struct.station_info, %struct.station_info* %205, i32 0, i32 18
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @nla_put_u8(%struct.sk_buff* %203, i32 %204, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %543

211:                                              ; preds = %202, %195
  %212 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %213 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  switch i32 %215, label %249 [
    i32 128, label %216
  ]

216:                                              ; preds = %211
  %217 = load %struct.station_info*, %struct.station_info** %17, align 8
  %218 = getelementptr inbounds %struct.station_info, %struct.station_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @STATION_INFO_SIGNAL, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %216
  %224 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %225 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %226 = load %struct.station_info*, %struct.station_info** %17, align 8
  %227 = getelementptr inbounds %struct.station_info, %struct.station_info* %226, i32 0, i32 17
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @nla_put_u8(%struct.sk_buff* %224, i32 %225, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %543

232:                                              ; preds = %223, %216
  %233 = load %struct.station_info*, %struct.station_info** %17, align 8
  %234 = getelementptr inbounds %struct.station_info, %struct.station_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @STATION_INFO_SIGNAL_AVG, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %232
  %240 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %241 = load i32, i32* @NL80211_STA_INFO_SIGNAL_AVG, align 4
  %242 = load %struct.station_info*, %struct.station_info** %17, align 8
  %243 = getelementptr inbounds %struct.station_info, %struct.station_info* %242, i32 0, i32 16
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @nla_put_u8(%struct.sk_buff* %240, i32 %241, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  br label %543

248:                                              ; preds = %239, %232
  br label %250

249:                                              ; preds = %211
  br label %250

250:                                              ; preds = %249, %248
  %251 = load %struct.station_info*, %struct.station_info** %17, align 8
  %252 = getelementptr inbounds %struct.station_info, %struct.station_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @STATION_INFO_TX_BITRATE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %250
  %258 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %259 = load %struct.station_info*, %struct.station_info** %17, align 8
  %260 = getelementptr inbounds %struct.station_info, %struct.station_info* %259, i32 0, i32 15
  %261 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %262 = call i32 @nl80211_put_sta_rate(%struct.sk_buff* %258, i32* %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %543

265:                                              ; preds = %257
  br label %266

266:                                              ; preds = %265, %250
  %267 = load %struct.station_info*, %struct.station_info** %17, align 8
  %268 = getelementptr inbounds %struct.station_info, %struct.station_info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @STATION_INFO_RX_BITRATE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %266
  %274 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %275 = load %struct.station_info*, %struct.station_info** %17, align 8
  %276 = getelementptr inbounds %struct.station_info, %struct.station_info* %275, i32 0, i32 14
  %277 = load i32, i32* @NL80211_STA_INFO_RX_BITRATE, align 4
  %278 = call i32 @nl80211_put_sta_rate(%struct.sk_buff* %274, i32* %276, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  br label %543

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %281, %266
  %283 = load %struct.station_info*, %struct.station_info** %17, align 8
  %284 = getelementptr inbounds %struct.station_info, %struct.station_info* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @STATION_INFO_RX_PACKETS, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %282
  %290 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %291 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %292 = load %struct.station_info*, %struct.station_info** %17, align 8
  %293 = getelementptr inbounds %struct.station_info, %struct.station_info* %292, i32 0, i32 13
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @nla_put_u32(%struct.sk_buff* %290, i32 %291, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %543

298:                                              ; preds = %289, %282
  %299 = load %struct.station_info*, %struct.station_info** %17, align 8
  %300 = getelementptr inbounds %struct.station_info, %struct.station_info* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @STATION_INFO_TX_PACKETS, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %298
  %306 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %307 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %308 = load %struct.station_info*, %struct.station_info** %17, align 8
  %309 = getelementptr inbounds %struct.station_info, %struct.station_info* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 8
  %311 = call i64 @nla_put_u32(%struct.sk_buff* %306, i32 %307, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %305
  br label %543

314:                                              ; preds = %305, %298
  %315 = load %struct.station_info*, %struct.station_info** %17, align 8
  %316 = getelementptr inbounds %struct.station_info, %struct.station_info* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @STATION_INFO_TX_RETRIES, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %314
  %322 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %323 = load i32, i32* @NL80211_STA_INFO_TX_RETRIES, align 4
  %324 = load %struct.station_info*, %struct.station_info** %17, align 8
  %325 = getelementptr inbounds %struct.station_info, %struct.station_info* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = call i64 @nla_put_u32(%struct.sk_buff* %322, i32 %323, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  br label %543

330:                                              ; preds = %321, %314
  %331 = load %struct.station_info*, %struct.station_info** %17, align 8
  %332 = getelementptr inbounds %struct.station_info, %struct.station_info* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @STATION_INFO_TX_FAILED, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %330
  %338 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %339 = load i32, i32* @NL80211_STA_INFO_TX_FAILED, align 4
  %340 = load %struct.station_info*, %struct.station_info** %17, align 8
  %341 = getelementptr inbounds %struct.station_info, %struct.station_info* %340, i32 0, i32 10
  %342 = load i32, i32* %341, align 8
  %343 = call i64 @nla_put_u32(%struct.sk_buff* %338, i32 %339, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  br label %543

346:                                              ; preds = %337, %330
  %347 = load %struct.station_info*, %struct.station_info** %17, align 8
  %348 = getelementptr inbounds %struct.station_info, %struct.station_info* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @STATION_INFO_BEACON_LOSS_COUNT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %346
  %354 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %355 = load i32, i32* @NL80211_STA_INFO_BEACON_LOSS, align 4
  %356 = load %struct.station_info*, %struct.station_info** %17, align 8
  %357 = getelementptr inbounds %struct.station_info, %struct.station_info* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 4
  %359 = call i64 @nla_put_u32(%struct.sk_buff* %354, i32 %355, i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  br label %543

362:                                              ; preds = %353, %346
  %363 = load %struct.station_info*, %struct.station_info** %17, align 8
  %364 = getelementptr inbounds %struct.station_info, %struct.station_info* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @STATION_INFO_LOCAL_PM, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %362
  %370 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %371 = load i32, i32* @NL80211_STA_INFO_LOCAL_PM, align 4
  %372 = load %struct.station_info*, %struct.station_info** %17, align 8
  %373 = getelementptr inbounds %struct.station_info, %struct.station_info* %372, i32 0, i32 8
  %374 = load i32, i32* %373, align 8
  %375 = call i64 @nla_put_u32(%struct.sk_buff* %370, i32 %371, i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %369
  br label %543

378:                                              ; preds = %369, %362
  %379 = load %struct.station_info*, %struct.station_info** %17, align 8
  %380 = getelementptr inbounds %struct.station_info, %struct.station_info* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @STATION_INFO_PEER_PM, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %394

385:                                              ; preds = %378
  %386 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %387 = load i32, i32* @NL80211_STA_INFO_PEER_PM, align 4
  %388 = load %struct.station_info*, %struct.station_info** %17, align 8
  %389 = getelementptr inbounds %struct.station_info, %struct.station_info* %388, i32 0, i32 7
  %390 = load i32, i32* %389, align 4
  %391 = call i64 @nla_put_u32(%struct.sk_buff* %386, i32 %387, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %385
  br label %543

394:                                              ; preds = %385, %378
  %395 = load %struct.station_info*, %struct.station_info** %17, align 8
  %396 = getelementptr inbounds %struct.station_info, %struct.station_info* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @STATION_INFO_NONPEER_PM, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %394
  %402 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %403 = load i32, i32* @NL80211_STA_INFO_NONPEER_PM, align 4
  %404 = load %struct.station_info*, %struct.station_info** %17, align 8
  %405 = getelementptr inbounds %struct.station_info, %struct.station_info* %404, i32 0, i32 6
  %406 = load i32, i32* %405, align 8
  %407 = call i64 @nla_put_u32(%struct.sk_buff* %402, i32 %403, i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %401
  br label %543

410:                                              ; preds = %401, %394
  %411 = load %struct.station_info*, %struct.station_info** %17, align 8
  %412 = getelementptr inbounds %struct.station_info, %struct.station_info* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @STATION_INFO_BSS_PARAM, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %486

417:                                              ; preds = %410
  %418 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %419 = load i32, i32* @NL80211_STA_INFO_BSS_PARAM, align 4
  %420 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %418, i32 %419)
  store %struct.nlattr* %420, %struct.nlattr** %20, align 8
  %421 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %422 = icmp ne %struct.nlattr* %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %417
  br label %543

424:                                              ; preds = %417
  %425 = load %struct.station_info*, %struct.station_info** %17, align 8
  %426 = getelementptr inbounds %struct.station_info, %struct.station_info* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @BSS_PARAM_FLAGS_CTS_PROT, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %424
  %433 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %434 = load i32, i32* @NL80211_STA_BSS_PARAM_CTS_PROT, align 4
  %435 = call i64 @nla_put_flag(%struct.sk_buff* %433, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %481, label %437

437:                                              ; preds = %432, %424
  %438 = load %struct.station_info*, %struct.station_info** %17, align 8
  %439 = getelementptr inbounds %struct.station_info, %struct.station_info* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_PREAMBLE, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

445:                                              ; preds = %437
  %446 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %447 = load i32, i32* @NL80211_STA_BSS_PARAM_SHORT_PREAMBLE, align 4
  %448 = call i64 @nla_put_flag(%struct.sk_buff* %446, i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %481, label %450

450:                                              ; preds = %445, %437
  %451 = load %struct.station_info*, %struct.station_info** %17, align 8
  %452 = getelementptr inbounds %struct.station_info, %struct.station_info* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @BSS_PARAM_FLAGS_SHORT_SLOT_TIME, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %463

458:                                              ; preds = %450
  %459 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %460 = load i32, i32* @NL80211_STA_BSS_PARAM_SHORT_SLOT_TIME, align 4
  %461 = call i64 @nla_put_flag(%struct.sk_buff* %459, i32 %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %481, label %463

463:                                              ; preds = %458, %450
  %464 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %465 = load i32, i32* @NL80211_STA_BSS_PARAM_DTIM_PERIOD, align 4
  %466 = load %struct.station_info*, %struct.station_info** %17, align 8
  %467 = getelementptr inbounds %struct.station_info, %struct.station_info* %466, i32 0, i32 5
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  %470 = call i64 @nla_put_u8(%struct.sk_buff* %464, i32 %465, i32 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %481, label %472

472:                                              ; preds = %463
  %473 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %474 = load i32, i32* @NL80211_STA_BSS_PARAM_BEACON_INTERVAL, align 4
  %475 = load %struct.station_info*, %struct.station_info** %17, align 8
  %476 = getelementptr inbounds %struct.station_info, %struct.station_info* %475, i32 0, i32 5
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = call i64 @nla_put_u16(%struct.sk_buff* %473, i32 %474, i32 %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %472, %463, %458, %445, %432
  br label %543

482:                                              ; preds = %472
  %483 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %484 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %485 = call i32 @nla_nest_end(%struct.sk_buff* %483, %struct.nlattr* %484)
  br label %486

486:                                              ; preds = %482, %410
  %487 = load %struct.station_info*, %struct.station_info** %17, align 8
  %488 = getelementptr inbounds %struct.station_info, %struct.station_info* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @STATION_INFO_STA_FLAGS, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %486
  %494 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %495 = load i32, i32* @NL80211_STA_INFO_STA_FLAGS, align 4
  %496 = load %struct.station_info*, %struct.station_info** %17, align 8
  %497 = getelementptr inbounds %struct.station_info, %struct.station_info* %496, i32 0, i32 4
  %498 = call i64 @nla_put(%struct.sk_buff* %494, i32 %495, i32 4, i32* %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %501

500:                                              ; preds = %493
  br label %543

501:                                              ; preds = %493, %486
  %502 = load %struct.station_info*, %struct.station_info** %17, align 8
  %503 = getelementptr inbounds %struct.station_info, %struct.station_info* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @STATION_INFO_T_OFFSET, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %517

508:                                              ; preds = %501
  %509 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %510 = load i32, i32* @NL80211_STA_INFO_T_OFFSET, align 4
  %511 = load %struct.station_info*, %struct.station_info** %17, align 8
  %512 = getelementptr inbounds %struct.station_info, %struct.station_info* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = call i64 @nla_put_u64(%struct.sk_buff* %509, i32 %510, i64 %513)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %508
  br label %543

517:                                              ; preds = %508, %501
  %518 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %519 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %520 = call i32 @nla_nest_end(%struct.sk_buff* %518, %struct.nlattr* %519)
  %521 = load %struct.station_info*, %struct.station_info** %17, align 8
  %522 = getelementptr inbounds %struct.station_info, %struct.station_info* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load i32, i32* @STATION_INFO_ASSOC_REQ_IES, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %539

527:                                              ; preds = %517
  %528 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %529 = load i32, i32* @NL80211_ATTR_IE, align 4
  %530 = load %struct.station_info*, %struct.station_info** %17, align 8
  %531 = getelementptr inbounds %struct.station_info, %struct.station_info* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.station_info*, %struct.station_info** %17, align 8
  %534 = getelementptr inbounds %struct.station_info, %struct.station_info* %533, i32 0, i32 2
  %535 = load i32*, i32** %534, align 8
  %536 = call i64 @nla_put(%struct.sk_buff* %528, i32 %529, i32 %532, i32* %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %527
  br label %543

539:                                              ; preds = %527, %517
  %540 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %541 = load i8*, i8** %18, align 8
  %542 = call i32 @genlmsg_end(%struct.sk_buff* %540, i8* %541)
  store i32 %542, i32* %9, align 4
  br label %549

543:                                              ; preds = %538, %516, %500, %481, %423, %409, %393, %377, %361, %345, %329, %313, %297, %280, %264, %247, %231, %210, %194, %178, %162, %146, %130, %111, %92, %76, %60, %53
  %544 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %545 = load i8*, i8** %18, align 8
  %546 = call i32 @genlmsg_cancel(%struct.sk_buff* %544, i8* %545)
  %547 = load i32, i32* @EMSGSIZE, align 4
  %548 = sub nsw i32 0, %547
  store i32 %548, i32* %9, align 4
  br label %549

549:                                              ; preds = %543, %539, %29
  %550 = load i32, i32* %9, align 4
  ret i32 %550
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nl80211_put_sta_rate(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
