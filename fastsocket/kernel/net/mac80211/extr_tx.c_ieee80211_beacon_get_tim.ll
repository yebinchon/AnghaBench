; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_beacon_get_tim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tx.c_ieee80211_beacon_get_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_sub_if_data = type { i32*, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.ieee80211_if_mesh, %struct.ieee80211_if_ibss, %struct.ieee80211_if_ap }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 (%struct.ieee80211_sub_if_data*)* }
%struct.ieee80211_if_ibss = type { i32 }
%struct.ieee80211_if_ap = type { i32, i32 }
%struct.ieee80211_tx_rate_control = type { i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_19__, %struct.sk_buff*, i32*, %struct.ieee80211_hw* }
%struct.TYPE_19__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.beacon_data = type { i64, i64, i64, i64 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ieee80211_beacon_get_tim(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_tx_rate_control, align 8
  %15 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %16 = alloca %struct.ieee80211_if_ap*, align 8
  %17 = alloca %struct.beacon_data*, align 8
  %18 = alloca %struct.ieee80211_if_ibss*, align 8
  %19 = alloca %struct.ieee80211_hdr*, align 8
  %20 = alloca %struct.beacon_data*, align 8
  %21 = alloca %struct.ieee80211_if_mesh*, align 8
  %22 = alloca %struct.beacon_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %23)
  store %struct.ieee80211_local* %24, %struct.ieee80211_local** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  store %struct.ieee80211_sub_if_data* null, %struct.ieee80211_sub_if_data** %12, align 8
  %25 = call i32 (...) @rcu_read_lock()
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %26)
  store %struct.ieee80211_sub_if_data* %27, %struct.ieee80211_sub_if_data** %12, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @rcu_dereference(i32 %31)
  %33 = bitcast i8* %32 to %struct.ieee80211_chanctx_conf*
  store %struct.ieee80211_chanctx_conf* %33, %struct.ieee80211_chanctx_conf** %15, align 8
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %35 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %15, align 8
  %39 = icmp ne %struct.ieee80211_chanctx_conf* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %4
  br label %380

41:                                               ; preds = %37
  %42 = load i64*, i64** %7, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64*, i64** %7, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i64*, i64** %8, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64*, i64** %8, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %149

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store %struct.ieee80211_if_ap* %61, %struct.ieee80211_if_ap** %16, align 8
  %62 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %16, align 8
  %63 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @rcu_dereference(i32 %64)
  %66 = bitcast i8* %65 to %struct.beacon_data*
  store %struct.beacon_data* %66, %struct.beacon_data** %17, align 8
  %67 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %68 = icmp ne %struct.beacon_data* %67, null
  br i1 %68, label %69, label %147

69:                                               ; preds = %58
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %74 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %78 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = add nsw i64 %80, 256
  %82 = call %struct.sk_buff* @dev_alloc_skb(i64 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %69
  br label %380

86:                                               ; preds = %69
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @skb_reserve(%struct.sk_buff* %87, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %94 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @skb_put(%struct.sk_buff* %92, i64 %95)
  %97 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %98 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %101 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @memcpy(i32 %96, i64 %99, i64 %102)
  %104 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %105 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %16, align 8
  %106 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %105, i32 0, i32 0
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = call i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %104, i32* %106, %struct.sk_buff* %107)
  %109 = load i64*, i64** %7, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %86
  %112 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %113 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %7, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %86
  %117 = load i64*, i64** %8, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %124 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  %127 = load i64*, i64** %8, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %116
  %129 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %130 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %136 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @skb_put(%struct.sk_buff* %134, i64 %137)
  %139 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %140 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.beacon_data*, %struct.beacon_data** %17, align 8
  %143 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @memcpy(i32 %138, i64 %141, i64 %144)
  br label %146

146:                                              ; preds = %133, %128
  br label %148

147:                                              ; preds = %58
  br label %380

148:                                              ; preds = %146
  br label %294

149:                                              ; preds = %51
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %208

156:                                              ; preds = %149
  %157 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store %struct.ieee80211_if_ibss* %159, %struct.ieee80211_if_ibss** %18, align 8
  %160 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %18, align 8
  %161 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @rcu_dereference(i32 %162)
  %164 = bitcast i8* %163 to %struct.beacon_data*
  store %struct.beacon_data* %164, %struct.beacon_data** %20, align 8
  %165 = load %struct.beacon_data*, %struct.beacon_data** %20, align 8
  %166 = icmp ne %struct.beacon_data* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %156
  br label %380

168:                                              ; preds = %156
  %169 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %170 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.beacon_data*, %struct.beacon_data** %20, align 8
  %173 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %171, %174
  %176 = call %struct.sk_buff* @dev_alloc_skb(i64 %175)
  store %struct.sk_buff* %176, %struct.sk_buff** %10, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %178 = icmp ne %struct.sk_buff* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %168
  br label %380

180:                                              ; preds = %168
  %181 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %182 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %183 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @skb_reserve(%struct.sk_buff* %181, i64 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %187 = load %struct.beacon_data*, %struct.beacon_data** %20, align 8
  %188 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @skb_put(%struct.sk_buff* %186, i64 %189)
  %191 = load %struct.beacon_data*, %struct.beacon_data** %20, align 8
  %192 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.beacon_data*, %struct.beacon_data** %20, align 8
  %195 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @memcpy(i32 %190, i64 %193, i64 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %201, %struct.ieee80211_hdr** %19, align 8
  %202 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %203 = load i32, i32* @IEEE80211_STYPE_BEACON, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @cpu_to_le16(i32 %204)
  %206 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %207 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  br label %293

208:                                              ; preds = %149
  %209 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %209, i32 0, i32 1
  %211 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_11__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %290

213:                                              ; preds = %208
  %214 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %215 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %216, %struct.ieee80211_if_mesh** %21, align 8
  %217 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %218 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @rcu_dereference(i32 %219)
  %221 = bitcast i8* %220 to %struct.beacon_data*
  store %struct.beacon_data* %221, %struct.beacon_data** %22, align 8
  %222 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %223 = icmp ne %struct.beacon_data* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %213
  br label %380

225:                                              ; preds = %213
  %226 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %227 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = icmp ne %struct.TYPE_14__* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %232 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %231, i32 0, i32 1
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i32 (%struct.ieee80211_sub_if_data*)*, i32 (%struct.ieee80211_sub_if_data*)** %234, align 8
  %236 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %237 = call i32 %235(%struct.ieee80211_sub_if_data* %236)
  br label %238

238:                                              ; preds = %230, %225
  %239 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %240 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %243 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = add nsw i64 %245, 256
  %247 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %248 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %246, %249
  %251 = call %struct.sk_buff* @dev_alloc_skb(i64 %250)
  store %struct.sk_buff* %251, %struct.sk_buff** %10, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %253 = icmp ne %struct.sk_buff* %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %238
  br label %380

255:                                              ; preds = %238
  %256 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %257 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %258 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @skb_reserve(%struct.sk_buff* %256, i64 %259)
  %261 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %262 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %263 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @skb_put(%struct.sk_buff* %261, i64 %264)
  %266 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %267 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %270 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @memcpy(i32 %265, i64 %268, i64 %271)
  %273 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %274 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %275 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %274, i32 0, i32 0
  %276 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %277 = call i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %273, i32* %275, %struct.sk_buff* %276)
  %278 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %279 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %280 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @skb_put(%struct.sk_buff* %278, i64 %281)
  %283 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %284 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.beacon_data*, %struct.beacon_data** %22, align 8
  %287 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = call i32 @memcpy(i32 %282, i64 %285, i64 %288)
  br label %292

290:                                              ; preds = %208
  %291 = call i32 @WARN_ON(i32 1)
  br label %380

292:                                              ; preds = %255
  br label %293

293:                                              ; preds = %292, %180
  br label %294

294:                                              ; preds = %293, %148
  %295 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %15, align 8
  %296 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %13, align 4
  %301 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %302 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %301)
  store %struct.ieee80211_tx_info* %302, %struct.ieee80211_tx_info** %11, align 8
  %303 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %304 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %305 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %309 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %310 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 8
  %313 = load i32, i32* %13, align 4
  %314 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %315 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = call i32 @memset(%struct.ieee80211_tx_rate_control* %14, i32 0, i32 56)
  %317 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %318 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 7
  store %struct.ieee80211_hw* %317, %struct.ieee80211_hw** %318, align 8
  %319 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %320 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %323, align 8
  %325 = load i32, i32* %13, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %324, i64 %326
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %327, align 8
  %329 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 3
  store %struct.TYPE_20__* %328, %struct.TYPE_20__** %329, align 8
  %330 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %331 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 6
  store i32* %332, i32** %333, align 8
  %334 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %335 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 5
  store %struct.sk_buff* %334, %struct.sk_buff** %335, align 8
  %336 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 4
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  store i32 -1, i32* %337, align 8
  %338 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %339 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 0
  store i32 %344, i32* %345, align 8
  %346 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 3
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = shl i32 1, %351
  %353 = sub nsw i32 %352, 1
  %354 = icmp eq i32 %347, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %294
  %356 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 1
  store i32 -1, i32* %356, align 4
  br label %363

357:                                              ; preds = %294
  %358 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @fls(i32 %359)
  %361 = sub nsw i32 %360, 1
  %362 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 1
  store i32 %361, i32* %362, align 4
  br label %363

363:                                              ; preds = %357, %355
  %364 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %14, i32 0, i32 2
  store i32 1, i32* %364, align 8
  %365 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %366 = call i32 @rate_control_get_rate(%struct.ieee80211_sub_if_data* %365, i32* null, %struct.ieee80211_tx_rate_control* %14)
  %367 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %368 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %369 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 0
  store %struct.ieee80211_vif* %367, %struct.ieee80211_vif** %370, align 8
  %371 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %372 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %375 = or i32 %373, %374
  %376 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %377 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %363, %290, %254, %224, %179, %167, %147, %85, %40
  %381 = call i32 (...) @rcu_read_unlock()
  %382 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %382
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_rate_control*, i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @rate_control_get_rate(%struct.ieee80211_sub_if_data*, i32*, %struct.ieee80211_tx_rate_control*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
