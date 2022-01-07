; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_new_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_new_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32**, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vif_params = type { i32, i32 }
%struct.wireless_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@NL80211_ATTR_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@NL80211_ATTR_4ADDR = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@NL80211_ATTR_MNTR_FLAGS = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_new_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_new_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.vif_params, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 3
  %15 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %14, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, i64 0
  %17 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %16, align 8
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %6, align 8
  %18 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %18, i32* %11, align 4
  %19 = call i32 @memset(%struct.vif_params* %7, i32 0, i32 8)
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @NL80211_ATTR_IFNAME, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %284

30:                                               ; preds = %2
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 2
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @nla_get_u32(i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @NL80211_IFTYPE_MAX, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %284

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %62 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60, %53
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %284

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @nla_memcpy(i32 %85, i32* %91, i32 %92)
  %94 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @is_valid_ether_addr(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %83
  %99 = load i32, i32* @EADDRNOTAVAIL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %284

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %75, %72
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %133

110:                                              ; preds = %102
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @nla_get_u8(i32* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %124 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @nl80211_valid_4addr(%struct.cfg80211_registered_device* %123, i32* null, i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %110
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %284

132:                                              ; preds = %110
  br label %133

133:                                              ; preds = %132, %102
  %134 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.sk_buff* @nlmsg_new(i32 %134, i32 %135)
  store %struct.sk_buff* %136, %struct.sk_buff** %9, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = icmp ne %struct.sk_buff* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %284

142:                                              ; preds = %133
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %148 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %147, i32 0, i32 2
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* @NL80211_ATTR_MNTR_FLAGS, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  br label %154

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %153, %146
  %155 = phi i32* [ %152, %146 ], [ null, %153 ]
  %156 = call i32 @parse_monitor_flags(i32* %155, i32* %12)
  store i32 %156, i32* %10, align 4
  %157 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %158 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %159 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NL80211_ATTR_IFNAME, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @nla_data(i32* %163)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %154
  br label %170

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %168
  %171 = phi i32* [ null, %168 ], [ %12, %169 ]
  %172 = call %struct.wireless_dev* @rdev_add_virtual_intf(%struct.cfg80211_registered_device* %157, i32 %164, i32 %165, i32* %171, %struct.vif_params* %7)
  store %struct.wireless_dev* %172, %struct.wireless_dev** %8, align 8
  %173 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %174 = call i64 @IS_ERR(%struct.wireless_dev* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %178 = call i32 @nlmsg_free(%struct.sk_buff* %177)
  %179 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %180 = call i32 @PTR_ERR(%struct.wireless_dev* %179)
  store i32 %180, i32* %3, align 4
  br label %284

181:                                              ; preds = %170
  %182 = load i32, i32* %11, align 4
  switch i32 %182, label %262 [
    i32 129, label %183
    i32 128, label %225
  ]

183:                                              ; preds = %181
  %184 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %185 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %184, i32 0, i32 2
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %183
  br label %263

192:                                              ; preds = %183
  %193 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %194 = call i32 @wdev_lock(%struct.wireless_dev* %193)
  %195 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %196 = load i32, i32* @IEEE80211_MAX_MESH_ID_LEN, align 4
  %197 = icmp ne i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @BUILD_BUG_ON(i32 %198)
  %200 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %201 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %200, i32 0, i32 2
  %202 = load i32**, i32*** %201, align 8
  %203 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %204 = getelementptr inbounds i32*, i32** %202, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @nla_len(i32* %205)
  %207 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %208 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 4
  %209 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %210 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %213 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %212, i32 0, i32 2
  %214 = load i32**, i32*** %213, align 8
  %215 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %216 = getelementptr inbounds i32*, i32** %214, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @nla_data(i32* %217)
  %219 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %220 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @memcpy(i32 %211, i32 %218, i32 %221)
  %223 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %224 = call i32 @wdev_unlock(%struct.wireless_dev* %223)
  br label %263

225:                                              ; preds = %181
  %226 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %227 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %226, i32 0, i32 6
  %228 = call i32 @mutex_init(i32* %227)
  %229 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %230 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %229, i32 0, i32 5
  %231 = call i32 @INIT_LIST_HEAD(i32* %230)
  %232 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %233 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %232, i32 0, i32 4
  %234 = call i32 @spin_lock_init(i32* %233)
  %235 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %236 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %235, i32 0, i32 3
  %237 = call i32 @INIT_LIST_HEAD(i32* %236)
  %238 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %239 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %238, i32 0, i32 2
  %240 = call i32 @spin_lock_init(i32* %239)
  %241 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %242 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %241, i32 0, i32 0
  %243 = call i32 @mutex_lock(i32* %242)
  %244 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %245 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %249 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %251 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %250, i32 0, i32 0
  %252 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %253 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %252, i32 0, i32 2
  %254 = call i32 @list_add_rcu(i32* %251, i32* %253)
  %255 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %256 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  %259 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %260 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  br label %263

262:                                              ; preds = %181
  br label %263

263:                                              ; preds = %262, %225, %192, %191
  %264 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %265 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %266 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %269 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %272 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %273 = call i64 @nl80211_send_iface(%struct.sk_buff* %264, i32 %267, i32 %270, i32 0, %struct.cfg80211_registered_device* %271, %struct.wireless_dev* %272)
  %274 = icmp slt i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %263
  %276 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %277 = call i32 @nlmsg_free(%struct.sk_buff* %276)
  %278 = load i32, i32* @ENOBUFS, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %3, align 4
  br label %284

280:                                              ; preds = %263
  %281 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %282 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %283 = call i32 @genlmsg_reply(%struct.sk_buff* %281, %struct.genl_info* %282)
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %280, %275, %176, %139, %130, %98, %69, %49, %27
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @nla_get_u32(i32*) #1

declare dso_local i32 @nla_memcpy(i32, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_get_u8(i32*) #1

declare dso_local i32 @nl80211_valid_4addr(%struct.cfg80211_registered_device*, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @parse_monitor_flags(i32*, i32*) #1

declare dso_local %struct.wireless_dev* @rdev_add_virtual_intf(%struct.cfg80211_registered_device*, i32, i32, i32*, %struct.vif_params*) #1

declare dso_local i32 @nla_data(i32*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nla_len(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @nl80211_send_iface(%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
