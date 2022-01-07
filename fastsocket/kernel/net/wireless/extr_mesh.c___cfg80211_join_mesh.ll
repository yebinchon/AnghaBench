; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c___cfg80211_join_mesh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mesh.c___cfg80211_join_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.ieee80211_channel*, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel*, i32, i32 }
%struct.mesh_setup = type { %struct.TYPE_6__, i64, i32, i64 }
%struct.mesh_config = type { i32 }

@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIPHY_FLAG_MESH_AUTH = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_join_mesh(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.mesh_setup* %2, %struct.mesh_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mesh_setup*, align 8
  %9 = alloca %struct.mesh_config*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.mesh_setup* %2, %struct.mesh_setup** %8, align 8
  store %struct.mesh_config* %3, %struct.mesh_config** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %20 = load i64, i64* @IEEE80211_MAX_MESH_ID_LEN, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %25 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %24)
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %27, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %238

36:                                               ; preds = %4
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WIPHY_FLAG_MESH_AUTH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %46 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %238

52:                                               ; preds = %44, %36
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EALREADY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %238

60:                                               ; preds = %52
  %61 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %62 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %238

68:                                               ; preds = %60
  %69 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %70 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %238

78:                                               ; preds = %68
  %79 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %80 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %81, align 8
  %83 = icmp ne %struct.ieee80211_channel* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %86 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %85, i32 0, i32 0
  %87 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %88 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %87, i32 0, i32 4
  %89 = bitcast %struct.TYPE_6__* %86 to i8*
  %90 = bitcast %struct.TYPE_6__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %93 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %94, align 8
  %96 = icmp ne %struct.ieee80211_channel* %95, null
  br i1 %96, label %183, label %97

97:                                               ; preds = %91
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %157, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %160

102:                                              ; preds = %98
  %103 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %104 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %106, i64 %108
  %110 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %109, align 8
  store %struct.ieee80211_supported_band* %110, %struct.ieee80211_supported_band** %13, align 8
  %111 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %112 = icmp ne %struct.ieee80211_supported_band* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %157

114:                                              ; preds = %102
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %146, %114
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %118 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %115
  %122 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %123 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %122, i32 0, i32 1
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %124, i64 %126
  store %struct.ieee80211_channel* %127, %struct.ieee80211_channel** %14, align 8
  %128 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %129 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %132 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %130, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  br label %146

141:                                              ; preds = %121
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %143 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %144 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store %struct.ieee80211_channel* %142, %struct.ieee80211_channel** %145, align 8
  br label %149

146:                                              ; preds = %140
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %115

149:                                              ; preds = %141, %115
  %150 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %151 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %152, align 8
  %154 = icmp ne %struct.ieee80211_channel* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %160

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %113
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %98

160:                                              ; preds = %155, %98
  %161 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %162 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %163, align 8
  %165 = icmp ne %struct.ieee80211_channel* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %238

169:                                              ; preds = %160
  %170 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %171 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %172 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 4
  %174 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %175 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %176, align 8
  %178 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %181 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  br label %183

183:                                              ; preds = %169, %91
  %184 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %185 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %184, i32 0, i32 0
  %186 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %187 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %186, i32 0, i32 0
  %188 = call i32 @cfg80211_reg_can_beacon(%struct.TYPE_5__* %185, %struct.TYPE_6__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %183
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %5, align 4
  br label %238

193:                                              ; preds = %183
  %194 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %195 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %196 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %197 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %198, align 8
  %200 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %201 = call i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device* %194, %struct.wireless_dev* %195, %struct.ieee80211_channel* %199, i32 %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %193
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %5, align 4
  br label %238

206:                                              ; preds = %193
  %207 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %208 = load %struct.net_device*, %struct.net_device** %7, align 8
  %209 = load %struct.mesh_config*, %struct.mesh_config** %9, align 8
  %210 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %211 = call i32 @rdev_join_mesh(%struct.cfg80211_registered_device* %207, %struct.net_device* %208, %struct.mesh_config* %209, %struct.mesh_setup* %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %236, label %214

214:                                              ; preds = %206
  %215 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %216 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %219 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %222 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @memcpy(i32 %217, i32 %220, i64 %223)
  %225 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %226 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %229 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %228, i32 0, i32 2
  store i64 %227, i64* %229, align 8
  %230 = load %struct.mesh_setup*, %struct.mesh_setup** %8, align 8
  %231 = getelementptr inbounds %struct.mesh_setup, %struct.mesh_setup* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %232, align 8
  %234 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %235 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %234, i32 0, i32 1
  store %struct.ieee80211_channel* %233, %struct.ieee80211_channel** %235, align 8
  br label %236

236:                                              ; preds = %214, %206
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %204, %190, %166, %75, %65, %57, %49, %33
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_reg_can_beacon(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @rdev_join_mesh(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.mesh_config*, %struct.mesh_setup*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
