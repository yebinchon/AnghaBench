; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_12__, %struct.TYPE_20__, %struct.TYPE_16__*, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ieee80211_channel* }
%struct.TYPE_13__ = type { i32, i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_OFFCHAN_TX_OK = common dso_local global i32 0, align 4
@IEEE80211_HW_QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_ROC_TYPE_MGMT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i32, i32*, i64, i32, i32, i64*)* @ieee80211_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4, i32* %5, i64 %6, i32 %7, i32 %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca %struct.ieee80211_sub_if_data*, align 8
  %23 = alloca %struct.ieee80211_local*, align 8
  %24 = alloca %struct.sk_buff*, align 8
  %25 = alloca %struct.sta_info*, align 8
  %26 = alloca %struct.ieee80211_mgmt*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %13, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i64* %9, i64** %21, align 8
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %32 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %31)
  store %struct.ieee80211_sub_if_data* %32, %struct.ieee80211_sub_if_data** %22, align 8
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 4
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %34, align 8
  store %struct.ieee80211_local* %35, %struct.ieee80211_local** %23, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8* %37 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %38, %struct.ieee80211_mgmt** %26, align 8
  store i32 0, i32* %27, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %10
  %42 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  store i32 %42, i32* %28, align 4
  br label %47

43:                                               ; preds = %10
  %44 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %45 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %28, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %52 = load i32, i32* %28, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %28, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %127 [
    i32 135, label %59
    i32 134, label %68
    i32 133, label %68
    i32 129, label %68
    i32 128, label %117
    i32 131, label %117
    i32 130, label %126
  ]

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 1, i32* %27, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %54, %54, %54, %67
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 135
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %75, i32 0, i32 1
  %77 = call i32 @ieee80211_vif_is_mesh(%struct.TYPE_12__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rcu_access_pointer(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 1, i32* %27, align 4
  br label %88

88:                                               ; preds = %87, %79, %74, %68
  %89 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %26, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ieee80211_is_action(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %26, align 8
  %96 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @WLAN_CATEGORY_PUBLIC, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94, %88
  br label %130

103:                                              ; preds = %94
  %104 = call i32 (...) @rcu_read_lock()
  %105 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %106 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %26, align 8
  %107 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %105, i32 %108)
  store %struct.sta_info* %109, %struct.sta_info** %25, align 8
  %110 = call i32 (...) @rcu_read_unlock()
  %111 = load %struct.sta_info*, %struct.sta_info** %25, align 8
  %112 = icmp ne %struct.sta_info* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @ENOLINK, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %11, align 4
  br label %253

116:                                              ; preds = %103
  br label %130

117:                                              ; preds = %54, %54
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 1, i32* %27, align 4
  br label %125

125:                                              ; preds = %124, %117
  br label %130

126:                                              ; preds = %54
  store i32 1, i32* %27, align 4
  br label %130

127:                                              ; preds = %54
  %128 = load i32, i32* @EOPNOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %11, align 4
  br label %253

130:                                              ; preds = %126, %125, %116, %102
  %131 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %132 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %131, i32 0, i32 0
  %133 = call i32 @mutex_lock(i32* %132)
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %130
  %137 = call i32 (...) @rcu_read_lock()
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %141)
  store %struct.ieee80211_chanctx_conf* %142, %struct.ieee80211_chanctx_conf** %30, align 8
  %143 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %30, align 8
  %144 = icmp ne %struct.ieee80211_chanctx_conf* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %147 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %30, align 8
  %148 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %149, align 8
  %151 = icmp ne %struct.ieee80211_channel* %146, %150
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %27, align 4
  br label %154

153:                                              ; preds = %136
  store i32 1, i32* %27, align 4
  br label %154

154:                                              ; preds = %153, %145
  %155 = call i32 (...) @rcu_read_unlock()
  br label %156

156:                                              ; preds = %154, %130
  %157 = load i32, i32* %27, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* @EBUSY, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %29, align 4
  br label %248

165:                                              ; preds = %159, %156
  %166 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %167 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %18, align 8
  %171 = add i64 %169, %170
  %172 = call %struct.sk_buff* @dev_alloc_skb(i64 %171)
  store %struct.sk_buff* %172, %struct.sk_buff** %24, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %174 = icmp ne %struct.sk_buff* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %165
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %29, align 4
  br label %248

178:                                              ; preds = %165
  %179 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %181 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @skb_reserve(%struct.sk_buff* %179, i64 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %186 = load i64, i64* %18, align 8
  %187 = call i32 @skb_put(%struct.sk_buff* %185, i64 %186)
  %188 = load i32*, i32** %17, align 8
  %189 = load i64, i64* %18, align 8
  %190 = call i32 @memcpy(i32 %187, i32* %188, i64 %189)
  %191 = load i32, i32* %28, align 4
  %192 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %193 = call %struct.TYPE_13__* @IEEE80211_SKB_CB(%struct.sk_buff* %192)
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 4
  %195 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %196 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %27, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %178
  %203 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %204 = ptrtoint %struct.sk_buff* %203 to i64
  %205 = load i64*, i64** %21, align 8
  store i64 %204, i64* %205, align 8
  %206 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %208 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %206, %struct.sk_buff* %207)
  store i32 0, i32* %29, align 4
  br label %248

209:                                              ; preds = %178
  %210 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %211 = load i32, i32* @IEEE80211_TX_INTFL_OFFCHAN_TX_OK, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %214 = call %struct.TYPE_13__* @IEEE80211_SKB_CB(%struct.sk_buff* %213)
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %212
  store i32 %217, i32* %215, align 4
  %218 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %219 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IEEE80211_HW_QUEUE_CONTROL, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %209
  %226 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %227 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %231 = call %struct.TYPE_13__* @IEEE80211_SKB_CB(%struct.sk_buff* %230)
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  br label %233

233:                                              ; preds = %225, %209
  %234 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %236 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i64*, i64** %21, align 8
  %239 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %240 = load i32, i32* @IEEE80211_ROC_TYPE_MGMT_TX, align 4
  %241 = call i32 @ieee80211_start_roc_work(%struct.ieee80211_local* %234, %struct.ieee80211_sub_if_data* %235, %struct.ieee80211_channel* %236, i32 %237, i64* %238, %struct.sk_buff* %239, i32 %240)
  store i32 %241, i32* %29, align 4
  %242 = load i32, i32* %29, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %246 = call i32 @kfree_skb(%struct.sk_buff* %245)
  br label %247

247:                                              ; preds = %244, %233
  br label %248

248:                                              ; preds = %247, %202, %175, %162
  %249 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %250 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %249, i32 0, i32 0
  %251 = call i32 @mutex_unlock(i32* %250)
  %252 = load i32, i32* %29, align 4
  store i32 %252, i32* %11, align 4
  br label %253

253:                                              ; preds = %248, %127, %113
  %254 = load i32, i32* %11, align 4
  ret i32 %254
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local i32 @ieee80211_vif_is_mesh(%struct.TYPE_12__*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @ieee80211_is_action(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_13__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_start_roc_work(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_channel*, i32, i64*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
