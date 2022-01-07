; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_if_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_iface.c_ieee80211_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.wireless_dev = type { i32, %struct.TYPE_17__*, i32 }
%struct.vif_params = type { i32 }
%struct.net_device = type { i32, %struct.wireless_dev*, i32, i32, i32, i32, i64 }
%struct.ieee80211_sub_if_data = type { i32*, %struct.wireless_dev, i32, %struct.TYPE_15__, i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, %struct.ieee80211_local*, %struct.net_device*, i32, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ieee80211_if_setup = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@IEEE80211_ENCRYPT_HEADROOM = common dso_local global i64 0, align 8
@IEEE80211_ENCRYPT_TAILROOM = common dso_local global i32 0, align 4
@IEEE80211_FRAGMENT_MAX = common dso_local global i32 0, align 4
@ieee80211_cleanup_sdata_stas_wk = common dso_local global i32 0, align 4
@ieee80211_dfs_cac_timer_work = common dso_local global i32 0, align 4
@ieee80211_delayed_tailroom_dec = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_if_add(%struct.ieee80211_local* %0, i8* %1, %struct.wireless_dev** %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wireless_dev**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ieee80211_sub_if_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wireless_dev*, align 8
  %18 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.wireless_dev** %2, %struct.wireless_dev*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store %struct.ieee80211_sub_if_data* null, %struct.ieee80211_sub_if_data** %13, align 8
  store i32 1, i32* %16, align 4
  %19 = call i32 (...) @ASSERT_RTNL()
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %5
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add i64 112, %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ieee80211_sub_if_data* @kzalloc(i64 %28, i32 %29)
  store %struct.ieee80211_sub_if_data* %30, %struct.ieee80211_sub_if_data** %13, align 8
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %32 = icmp ne %struct.ieee80211_sub_if_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %358

36:                                               ; preds = %23
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 1
  store %struct.wireless_dev* %38, %struct.wireless_dev** %17, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 15
  store %struct.net_device* null, %struct.net_device** %40, align 8
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = call i32 @strlcpy(i32 %43, i8* %44, i32 %45)
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ieee80211_assign_perm_addr(%struct.ieee80211_local* %47, i32 %50, i32 %51)
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 17
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %56, i32 %59, i32 %60)
  br label %172

62:                                               ; preds = %5
  %63 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add i64 112, %75
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* @ieee80211_if_setup, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call %struct.net_device* @alloc_netdev_mqs(i64 %76, i8* %77, i32 %78, i32 %79, i32 1)
  store %struct.net_device* %80, %struct.net_device** %12, align 8
  %81 = load %struct.net_device*, %struct.net_device** %12, align 8
  %82 = icmp ne %struct.net_device* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %358

86:                                               ; preds = %71
  %87 = load %struct.net_device*, %struct.net_device** %12, align 8
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = call i32 @wiphy_net(%struct.TYPE_17__* %91)
  %93 = call i32 @dev_net_set(%struct.net_device* %87, i32 %92)
  %94 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %95 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 24
  %98 = add nsw i64 %97, 2
  %99 = add nsw i64 %98, 2
  %100 = add nsw i64 %99, 2
  %101 = add nsw i64 %100, 2
  %102 = add nsw i64 %101, 6
  %103 = add nsw i64 %102, 8
  %104 = load i64, i64* @ETH_HLEN, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load i64, i64* @IEEE80211_ENCRYPT_HEADROOM, align 8
  %107 = add nsw i64 %105, %106
  %108 = load %struct.net_device*, %struct.net_device** %12, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @IEEE80211_ENCRYPT_TAILROOM, align 4
  %111 = load %struct.net_device*, %struct.net_device** %12, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load %struct.net_device*, %struct.net_device** %12, align 8
  %114 = load %struct.net_device*, %struct.net_device** %12, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_alloc_name(%struct.net_device* %113, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %86
  %121 = load %struct.net_device*, %struct.net_device** %12, align 8
  %122 = call i32 @free_netdev(%struct.net_device* %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %6, align 4
  br label %358

124:                                              ; preds = %86
  %125 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %126 = load %struct.net_device*, %struct.net_device** %12, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @ieee80211_assign_perm_addr(%struct.ieee80211_local* %125, i32 %128, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %12, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.net_device*, %struct.net_device** %12, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ETH_ALEN, align 4
  %138 = call i32 @memcpy(i32 %133, i32 %136, i32 %137)
  %139 = load %struct.net_device*, %struct.net_device** %12, align 8
  %140 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i32 @wiphy_dev(%struct.TYPE_17__* %143)
  %145 = call i32 @SET_NETDEV_DEV(%struct.net_device* %139, i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %12, align 8
  %147 = call %struct.ieee80211_sub_if_data* @netdev_priv(%struct.net_device* %146)
  store %struct.ieee80211_sub_if_data* %147, %struct.ieee80211_sub_if_data** %13, align 8
  %148 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %148, i32 0, i32 1
  %150 = load %struct.net_device*, %struct.net_device** %12, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 1
  store %struct.wireless_dev* %149, %struct.wireless_dev** %151, align 8
  %152 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %153 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %152, i32 0, i32 17
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.net_device*, %struct.net_device** %12, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ETH_ALEN, align 4
  %160 = call i32 @memcpy(i32 %155, i32 %158, i32 %159)
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %161, i32 0, i32 16
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.net_device*, %struct.net_device** %12, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IFNAMSIZ, align 4
  %168 = call i32 @memcpy(i32 %163, i32 %166, i32 %167)
  %169 = load %struct.net_device*, %struct.net_device** %12, align 8
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %170, i32 0, i32 15
  store %struct.net_device* %169, %struct.net_device** %171, align 8
  br label %172

172:                                              ; preds = %124, %36
  %173 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %178, i32 0, i32 1
  store %struct.TYPE_17__* %176, %struct.TYPE_17__** %179, align 8
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %181 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %182 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %181, i32 0, i32 14
  store %struct.ieee80211_local* %180, %struct.ieee80211_local** %182, align 8
  store i32 0, i32* %15, align 4
  br label %183

183:                                              ; preds = %196, %172
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @IEEE80211_FRAGMENT_MAX, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %188, i32 0, i32 13
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = call i32 @skb_queue_head_init(i32* %194)
  br label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %183

199:                                              ; preds = %183
  %200 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %200, i32 0, i32 12
  %202 = call i32 @INIT_LIST_HEAD(i32* %201)
  %203 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %204 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %203, i32 0, i32 11
  %205 = call i32 @spin_lock_init(i32* %204)
  %206 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %206, i32 0, i32 10
  %208 = call i32 @INIT_LIST_HEAD(i32* %207)
  %209 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %209, i32 0, i32 9
  %211 = load i32, i32* @ieee80211_cleanup_sdata_stas_wk, align 4
  %212 = call i32 @INIT_WORK(i32* %210, i32 %211)
  %213 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %214 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %213, i32 0, i32 8
  %215 = load i32, i32* @ieee80211_dfs_cac_timer_work, align 4
  %216 = call i32 @INIT_DELAYED_WORK(i32* %214, i32 %215)
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %218 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %217, i32 0, i32 7
  %219 = load i32, i32* @ieee80211_delayed_tailroom_dec, align 4
  %220 = call i32 @INIT_DELAYED_WORK(i32* %218, i32 %219)
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %279, %199
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %282

225:                                              ; preds = %221
  %226 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %227 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %231, i64 %233
  %235 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %234, align 8
  store %struct.ieee80211_supported_band* %235, %struct.ieee80211_supported_band** %18, align 8
  %236 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  %237 = icmp ne %struct.ieee80211_supported_band* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %225
  %239 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  %240 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = shl i32 1, %241
  %243 = sub nsw i32 %242, 1
  br label %245

244:                                              ; preds = %225
  br label %245

245:                                              ; preds = %244, %238
  %246 = phi i32 [ %243, %238 ], [ 0, %244 ]
  %247 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %248 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %246, i32* %252, align 4
  %253 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  %254 = icmp ne %struct.ieee80211_supported_band* %253, null
  br i1 %254, label %255, label %269

255:                                              ; preds = %245
  %256 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %257 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, align 8
  %264 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @memcpy(i32 %262, i32 %267, i32 4)
  br label %278

269:                                              ; preds = %245
  %270 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %271 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %270, i32 0, i32 6
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @memset(i32 %276, i32 0, i32 4)
  br label %278

278:                                              ; preds = %269, %255
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %15, align 4
  br label %221

282:                                              ; preds = %221
  %283 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %284 = call i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data* %283)
  %285 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %286 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %287 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  %288 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %289 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %292 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %291, i32 0, i32 4
  store i32 %290, i32* %292, align 8
  %293 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @ieee80211_setup_sdata(%struct.ieee80211_sub_if_data* %293, i32 %294)
  %296 = load %struct.net_device*, %struct.net_device** %12, align 8
  %297 = icmp ne %struct.net_device* %296, null
  br i1 %297, label %298, label %339

298:                                              ; preds = %282
  %299 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %300 = icmp ne %struct.vif_params* %299, null
  br i1 %300, label %301, label %321

301:                                              ; preds = %298
  %302 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %303 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.net_device*, %struct.net_device** %12, align 8
  %306 = getelementptr inbounds %struct.net_device, %struct.net_device* %305, i32 0, i32 1
  %307 = load %struct.wireless_dev*, %struct.wireless_dev** %306, align 8
  %308 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %307, i32 0, i32 0
  store i32 %304, i32* %308, align 8
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %301
  %313 = load %struct.vif_params*, %struct.vif_params** %11, align 8
  %314 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %317 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 0
  store i32 %315, i32* %319, align 4
  br label %320

320:                                              ; preds = %312, %301
  br label %321

321:                                              ; preds = %320, %298
  %322 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %323 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.net_device*, %struct.net_device** %12, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = or i32 %328, %325
  store i32 %329, i32* %327, align 8
  %330 = load %struct.net_device*, %struct.net_device** %12, align 8
  %331 = call i32 @register_netdevice(%struct.net_device* %330)
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %14, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %321
  %335 = load %struct.net_device*, %struct.net_device** %12, align 8
  %336 = call i32 @free_netdev(%struct.net_device* %335)
  %337 = load i32, i32* %14, align 4
  store i32 %337, i32* %6, align 4
  br label %358

338:                                              ; preds = %321
  br label %339

339:                                              ; preds = %338, %282
  %340 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %341 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %340, i32 0, i32 0
  %342 = call i32 @mutex_lock(i32* %341)
  %343 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %344 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %343, i32 0, i32 2
  %345 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %346 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %345, i32 0, i32 1
  %347 = call i32 @list_add_tail_rcu(i32* %344, i32* %346)
  %348 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %349 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %348, i32 0, i32 0
  %350 = call i32 @mutex_unlock(i32* %349)
  %351 = load %struct.wireless_dev**, %struct.wireless_dev*** %9, align 8
  %352 = icmp ne %struct.wireless_dev** %351, null
  br i1 %352, label %353, label %357

353:                                              ; preds = %339
  %354 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %355 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %354, i32 0, i32 1
  %356 = load %struct.wireless_dev**, %struct.wireless_dev*** %9, align 8
  store %struct.wireless_dev* %355, %struct.wireless_dev** %356, align 8
  br label %357

357:                                              ; preds = %353, %339
  store i32 0, i32* %6, align 4
  br label %358

358:                                              ; preds = %357, %334, %120, %83, %33
  %359 = load i32, i32* %6, align 4
  ret i32 %359
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @kzalloc(i64, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_assign_perm_addr(%struct.ieee80211_local*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.net_device* @alloc_netdev_mqs(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_net(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_alloc_name(%struct.net_device*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(%struct.TYPE_17__*) #1

declare dso_local %struct.ieee80211_sub_if_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_set_default_queues(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_setup_sdata(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
