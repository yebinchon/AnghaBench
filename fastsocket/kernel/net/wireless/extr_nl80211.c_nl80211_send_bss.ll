; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_send_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.wireless_dev = type { i32, %struct.cfg80211_internal_bss*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_internal_bss = type { i64, %struct.cfg80211_bss }
%struct.cfg80211_bss = type { i32, %struct.TYPE_6__*, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_bss_ies = type { i32, i64, i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NL80211_CMD_NEW_SCAN_RESULTS = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_BSS = common dso_local global i32 0, align 4
@NL80211_BSS_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_BSS_TSF = common dso_local global i32 0, align 4
@NL80211_BSS_INFORMATION_ELEMENTS = common dso_local global i32 0, align 4
@NL80211_BSS_BEACON_IES = common dso_local global i32 0, align 4
@NL80211_BSS_BEACON_INTERVAL = common dso_local global i32 0, align 4
@NL80211_BSS_CAPABILITY = common dso_local global i32 0, align 4
@NL80211_BSS_FREQUENCY = common dso_local global i32 0, align 4
@NL80211_BSS_SEEN_MS_AGO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NL80211_BSS_SIGNAL_MBM = common dso_local global i32 0, align 4
@NL80211_BSS_SIGNAL_UNSPEC = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS_IBSS_JOINED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_internal_bss*)* @nl80211_send_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_bss(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, i32 %3, %struct.cfg80211_registered_device* %4, %struct.wireless_dev* %5, %struct.cfg80211_internal_bss* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.netlink_callback*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfg80211_registered_device*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  %15 = alloca %struct.cfg80211_internal_bss*, align 8
  %16 = alloca %struct.cfg80211_bss*, align 8
  %17 = alloca %struct.cfg80211_bss_ies*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.cfg80211_registered_device* %4, %struct.cfg80211_registered_device** %13, align 8
  store %struct.wireless_dev* %5, %struct.wireless_dev** %14, align 8
  store %struct.cfg80211_internal_bss* %6, %struct.cfg80211_internal_bss** %15, align 8
  %22 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %23 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %22, i32 0, i32 1
  store %struct.cfg80211_bss* %23, %struct.cfg80211_bss** %16, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %25 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NETLINK_CB(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @NL80211_CMD_NEW_SCAN_RESULTS, align 4
  %37 = call i8* @nl80211hdr_put(%struct.sk_buff* %26, i32 %33, i32 %34, i32 %35, i32 %36)
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %291

41:                                               ; preds = %7
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %42, i8* %43, i32* @nl80211_fam)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %47 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %48 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %285

53:                                               ; preds = %41
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %285

69:                                               ; preds = %58, %53
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %73 = call i32 @wdev_id(%struct.wireless_dev* %72)
  %74 = call i64 @nla_put_u64(%struct.sk_buff* %70, i32 %71, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %285

77:                                               ; preds = %69
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load i32, i32* @NL80211_ATTR_BSS, align 4
  %80 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %78, i32 %79)
  store %struct.nlattr* %80, %struct.nlattr** %19, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %285

84:                                               ; preds = %77
  %85 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %86 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @is_zero_ether_addr(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i32, i32* @NL80211_BSS_BSSID, align 4
  %93 = load i64, i64* @ETH_ALEN, align 8
  %94 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %95 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nla_put(%struct.sk_buff* %91, i32 %92, i64 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %285

100:                                              ; preds = %90, %84
  %101 = call i32 (...) @rcu_read_lock()
  %102 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %103 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %104)
  store %struct.cfg80211_bss_ies* %105, %struct.cfg80211_bss_ies** %17, align 8
  %106 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %107 = icmp ne %struct.cfg80211_bss_ies* %106, null
  br i1 %107, label %108, label %135

108:                                              ; preds = %100
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = load i32, i32* @NL80211_BSS_TSF, align 4
  %111 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %112 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @nla_put_u64(%struct.sk_buff* %109, i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %283

117:                                              ; preds = %108
  store i32 1, i32* %20, align 4
  %118 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %119 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = load i32, i32* @NL80211_BSS_INFORMATION_ELEMENTS, align 4
  %125 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %126 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %129 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @nla_put(%struct.sk_buff* %123, i32 %124, i64 %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %283

134:                                              ; preds = %122, %117
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %137 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %138)
  store %struct.cfg80211_bss_ies* %139, %struct.cfg80211_bss_ies** %17, align 8
  %140 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %141 = icmp ne %struct.cfg80211_bss_ies* %140, null
  br i1 %141, label %142, label %172

142:                                              ; preds = %135
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %147 = load i32, i32* @NL80211_BSS_TSF, align 4
  %148 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %149 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @nla_put_u64(%struct.sk_buff* %146, i32 %147, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %283

154:                                              ; preds = %145, %142
  %155 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %156 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = load i32, i32* @NL80211_BSS_BEACON_IES, align 4
  %162 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %163 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %166 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @nla_put(%struct.sk_buff* %160, i32 %161, i64 %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %283

171:                                              ; preds = %159, %154
  br label %172

172:                                              ; preds = %171, %135
  %173 = call i32 (...) @rcu_read_unlock()
  %174 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %175 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %180 = load i32, i32* @NL80211_BSS_BEACON_INTERVAL, align 4
  %181 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %182 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @nla_put_u16(%struct.sk_buff* %179, i32 %180, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %285

187:                                              ; preds = %178, %172
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = load i32, i32* @NL80211_BSS_CAPABILITY, align 4
  %190 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %191 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @nla_put_u16(%struct.sk_buff* %188, i32 %189, i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %216, label %195

195:                                              ; preds = %187
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = load i32, i32* @NL80211_BSS_FREQUENCY, align 4
  %198 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %199 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @nla_put_u32(%struct.sk_buff* %196, i32 %197, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %216, label %205

205:                                              ; preds = %195
  %206 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %207 = load i32, i32* @NL80211_BSS_SEEN_MS_AGO, align 4
  %208 = load i64, i64* @jiffies, align 8
  %209 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %210 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %208, %211
  %213 = call i32 @jiffies_to_msecs(i64 %212)
  %214 = call i64 @nla_put_u32(%struct.sk_buff* %206, i32 %207, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %205, %195, %187
  br label %285

217:                                              ; preds = %205
  %218 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %219 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  switch i32 %221, label %242 [
    i32 132, label %222
    i32 131, label %232
  ]

222:                                              ; preds = %217
  %223 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %224 = load i32, i32* @NL80211_BSS_SIGNAL_MBM, align 4
  %225 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %226 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @nla_put_u32(%struct.sk_buff* %223, i32 %224, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %285

231:                                              ; preds = %222
  br label %243

232:                                              ; preds = %217
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = load i32, i32* @NL80211_BSS_SIGNAL_UNSPEC, align 4
  %235 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %236 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @nla_put_u8(%struct.sk_buff* %233, i32 %234, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %285

241:                                              ; preds = %232
  br label %243

242:                                              ; preds = %217
  br label %243

243:                                              ; preds = %242, %241, %231
  %244 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %245 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  switch i32 %246, label %275 [
    i32 129, label %247
    i32 128, label %247
    i32 130, label %261
  ]

247:                                              ; preds = %243, %243
  %248 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %249 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %250 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %249, i32 0, i32 1
  %251 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %250, align 8
  %252 = icmp eq %struct.cfg80211_internal_bss* %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %255 = load i32, i32* @NL80211_BSS_STATUS, align 4
  %256 = load i32, i32* @NL80211_BSS_STATUS_ASSOCIATED, align 4
  %257 = call i64 @nla_put_u32(%struct.sk_buff* %254, i32 %255, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  br label %285

260:                                              ; preds = %253, %247
  br label %276

261:                                              ; preds = %243
  %262 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %263 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %264 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %263, i32 0, i32 1
  %265 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %264, align 8
  %266 = icmp eq %struct.cfg80211_internal_bss* %262, %265
  br i1 %266, label %267, label %274

267:                                              ; preds = %261
  %268 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %269 = load i32, i32* @NL80211_BSS_STATUS, align 4
  %270 = load i32, i32* @NL80211_BSS_STATUS_IBSS_JOINED, align 4
  %271 = call i64 @nla_put_u32(%struct.sk_buff* %268, i32 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %285

274:                                              ; preds = %267, %261
  br label %276

275:                                              ; preds = %243
  br label %276

276:                                              ; preds = %275, %274, %260
  %277 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %278 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %279 = call i32 @nla_nest_end(%struct.sk_buff* %277, %struct.nlattr* %278)
  %280 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %281 = load i8*, i8** %18, align 8
  %282 = call i32 @genlmsg_end(%struct.sk_buff* %280, i8* %281)
  store i32 %282, i32* %8, align 4
  br label %291

283:                                              ; preds = %170, %153, %133, %116
  %284 = call i32 (...) @rcu_read_unlock()
  br label %285

285:                                              ; preds = %283, %273, %259, %240, %230, %216, %186, %99, %83, %76, %68, %52
  %286 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %287 = load i8*, i8** %18, align 8
  %288 = call i32 @genlmsg_cancel(%struct.sk_buff* %286, i8* %287)
  %289 = load i32, i32* @EMSGSIZE, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %8, align 4
  br label %291

291:                                              ; preds = %285, %276, %40
  %292 = load i32, i32* %8, align 4
  ret i32 %292
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*, i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
