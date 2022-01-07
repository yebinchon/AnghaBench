; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c___cfg80211_set_encryption.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c___cfg80211_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32*, %struct.key_params* }
%struct.TYPE_8__ = type { i32 }
%struct.key_params = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@ENOLINK = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*)* @__cfg80211_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cfg80211_set_encryption(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.key_params* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_registered_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.key_params*, align 8
  %18 = alloca %struct.wireless_dev*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %10, align 8
  store %struct.net_device* %1, %struct.net_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.key_params* %7, %struct.key_params** %17, align 8
  %22 = load %struct.net_device*, %struct.net_device** %11, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %23, align 8
  store %struct.wireless_dev* %24, %struct.wireless_dev** %18, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %460

33:                                               ; preds = %27, %8
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %82, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_10__* @kzalloc(i32 16, i32 %40)
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %44, align 8
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %46 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %460

53:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %55, 6
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.key_params*, %struct.key_params** %72, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.key_params, %struct.key_params* %73, i64 %75
  %77 = getelementptr inbounds %struct.key_params, %struct.key_params* %76, i32 0, i32 1
  store i32 %67, i32* %77, align 8
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %54

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81, %33
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %460

97:                                               ; preds = %88, %82
  %98 = load %struct.key_params*, %struct.key_params** %17, align 8
  %99 = getelementptr inbounds %struct.key_params, %struct.key_params* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %97
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOLINK, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %9, align 4
  br label %460

111:                                              ; preds = %103
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %113 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* @EOPNOTSUPP, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %460

121:                                              ; preds = %111
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %16, align 4
  %126 = icmp sgt i32 %125, 5
  br i1 %126, label %127, label %130

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %460

130:                                              ; preds = %124
  br label %141

131:                                              ; preds = %97
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %16, align 4
  %136 = icmp sgt i32 %135, 3
  br i1 %136, label %137, label %140

137:                                              ; preds = %134, %131
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  br label %460

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %130
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %266

144:                                              ; preds = %141
  store i32 0, i32* %19, align 4
  %145 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %146 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %193

149:                                              ; preds = %144
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %152 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %150, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %149
  %157 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %158 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %164 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %165 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %163, i32 %166, i32 1)
  store i32 1, i32* %21, align 4
  br label %168

168:                                              ; preds = %162, %156, %149
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %168
  %172 = load i32*, i32** %13, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %176 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* @ENOENT, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %19, align 4
  br label %192

185:                                              ; preds = %174, %171, %168
  %186 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %187 = load %struct.net_device*, %struct.net_device** %11, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = call i32 @rdev_del_key(%struct.cfg80211_registered_device* %186, %struct.net_device* %187, i32 %188, i32 %189, i32* %190)
  store i32 %191, i32* %19, align 4
  br label %192

192:                                              ; preds = %185, %182
  br label %193

193:                                              ; preds = %192, %144
  %194 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %195 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* @ENOENT, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  store i32 0, i32* %19, align 4
  br label %203

203:                                              ; preds = %202, %193
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %254, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %13, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %230, label %209

209:                                              ; preds = %206
  %210 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %211 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load %struct.key_params*, %struct.key_params** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.key_params, %struct.key_params* %215, i64 %217
  %219 = getelementptr inbounds %struct.key_params, %struct.key_params* %218, i32 0, i32 2
  store i64 0, i64* %219, align 8
  %220 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %221 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load %struct.key_params*, %struct.key_params** %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.key_params, %struct.key_params* %225, i64 %227
  %229 = getelementptr inbounds %struct.key_params, %struct.key_params* %228, i32 0, i32 0
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %209, %206
  %231 = load i32, i32* %16, align 4
  %232 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %233 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %231, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %239 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 -1, i32* %240, align 8
  br label %253

241:                                              ; preds = %230
  %242 = load i32, i32* %16, align 4
  %243 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %244 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %242, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %250 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  store i32 -1, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %241
  br label %253

253:                                              ; preds = %252, %237
  br label %254

254:                                              ; preds = %253, %203
  %255 = load i32, i32* %19, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %21, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %262 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %263 = call i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device* %261, %struct.wireless_dev* %262)
  store i32 %263, i32* %19, align 4
  br label %264

264:                                              ; preds = %260, %257, %254
  %265 = load i32, i32* %19, align 4
  store i32 %265, i32* %9, align 4
  br label %460

266:                                              ; preds = %141
  %267 = load i32*, i32** %13, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %270

269:                                              ; preds = %266
  store i32 0, i32* %15, align 4
  br label %270

270:                                              ; preds = %269, %266
  %271 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %272 = load %struct.key_params*, %struct.key_params** %17, align 8
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load i32*, i32** %13, align 8
  %276 = call i64 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device* %271, %struct.key_params* %272, i32 %273, i32 %274, i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %270
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %9, align 4
  br label %460

281:                                              ; preds = %270
  store i32 0, i32* %19, align 4
  %282 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %283 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %281
  %287 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %288 = load %struct.net_device*, %struct.net_device** %11, align 8
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32*, i32** %13, align 8
  %292 = load %struct.key_params*, %struct.key_params** %17, align 8
  %293 = call i32 @rdev_add_key(%struct.cfg80211_registered_device* %287, %struct.net_device* %288, i32 %289, i32 %290, i32* %291, %struct.key_params* %292)
  store i32 %293, i32* %19, align 4
  br label %294

294:                                              ; preds = %286, %281
  %295 = load i32, i32* %19, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, i32* %19, align 4
  store i32 %298, i32* %9, align 4
  br label %460

299:                                              ; preds = %294
  %300 = load i32*, i32** %13, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %352, label %302

302:                                              ; preds = %299
  %303 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %304 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load %struct.key_params*, %struct.key_params** %307, align 8
  %309 = load i32, i32* %16, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.key_params, %struct.key_params* %308, i64 %310
  %312 = load %struct.key_params*, %struct.key_params** %17, align 8
  %313 = bitcast %struct.key_params* %311 to i8*
  %314 = bitcast %struct.key_params* %312 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %313, i8* align 8 %314, i64 24, i1 false)
  %315 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %316 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %16, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.key_params*, %struct.key_params** %17, align 8
  %326 = getelementptr inbounds %struct.key_params, %struct.key_params* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.key_params*, %struct.key_params** %17, align 8
  %329 = getelementptr inbounds %struct.key_params, %struct.key_params* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @memcpy(i32 %324, i32 %327, i64 %330)
  %332 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %333 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %343 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = load %struct.key_params*, %struct.key_params** %346, align 8
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.key_params, %struct.key_params* %347, i64 %349
  %351 = getelementptr inbounds %struct.key_params, %struct.key_params* %350, i32 0, i32 1
  store i32 %341, i32* %351, align 8
  br label %352

352:                                              ; preds = %302, %299
  %353 = load %struct.key_params*, %struct.key_params** %17, align 8
  %354 = getelementptr inbounds %struct.key_params, %struct.key_params* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %364, label %358

358:                                              ; preds = %352
  %359 = load %struct.key_params*, %struct.key_params** %17, align 8
  %360 = getelementptr inbounds %struct.key_params, %struct.key_params* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %421

364:                                              ; preds = %358, %352
  %365 = load i32, i32* %15, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %376, label %367

367:                                              ; preds = %364
  %368 = load i32*, i32** %13, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %421, label %370

370:                                              ; preds = %367
  %371 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %372 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %376, label %421

376:                                              ; preds = %370, %364
  %377 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %378 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %404

381:                                              ; preds = %376
  %382 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %383 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %399

387:                                              ; preds = %381
  %388 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %389 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %399

393:                                              ; preds = %387
  %394 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %395 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %396 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %394, i32 %397, i32 1)
  store i32 1, i32* %21, align 4
  br label %399

399:                                              ; preds = %393, %387, %381
  %400 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %401 = load %struct.net_device*, %struct.net_device** %11, align 8
  %402 = load i32, i32* %16, align 4
  %403 = call i32 @rdev_set_default_key(%struct.cfg80211_registered_device* %400, %struct.net_device* %401, i32 %402, i32 1, i32 1)
  store i32 %403, i32* %19, align 4
  br label %404

404:                                              ; preds = %399, %376
  %405 = load i32, i32* %19, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %419, label %407

407:                                              ; preds = %404
  %408 = load i32, i32* %16, align 4
  %409 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %410 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  store i32 %408, i32* %411, align 8
  %412 = load i32, i32* %21, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %407
  %415 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %416 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %417 = call i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device* %415, %struct.wireless_dev* %416)
  store i32 %417, i32* %19, align 4
  br label %418

418:                                              ; preds = %414, %407
  br label %419

419:                                              ; preds = %418, %404
  %420 = load i32, i32* %19, align 4
  store i32 %420, i32* %9, align 4
  br label %460

421:                                              ; preds = %370, %367, %358
  %422 = load %struct.key_params*, %struct.key_params** %17, align 8
  %423 = getelementptr inbounds %struct.key_params, %struct.key_params* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %459

427:                                              ; preds = %421
  %428 = load i32, i32* %15, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %439, label %430

430:                                              ; preds = %427
  %431 = load i32*, i32** %13, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %459, label %433

433:                                              ; preds = %430
  %434 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %435 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %439, label %459

439:                                              ; preds = %433, %427
  %440 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %441 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %440, i32 0, i32 2
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %10, align 8
  %446 = load %struct.net_device*, %struct.net_device** %11, align 8
  %447 = load i32, i32* %16, align 4
  %448 = call i32 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device* %445, %struct.net_device* %446, i32 %447)
  store i32 %448, i32* %19, align 4
  br label %449

449:                                              ; preds = %444, %439
  %450 = load i32, i32* %19, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %457, label %452

452:                                              ; preds = %449
  %453 = load i32, i32* %16, align 4
  %454 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %455 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 1
  store i32 %453, i32* %456, align 4
  br label %457

457:                                              ; preds = %452, %449
  %458 = load i32, i32* %19, align 4
  store i32 %458, i32* %9, align 4
  br label %460

459:                                              ; preds = %433, %430, %421
  store i32 0, i32* %9, align 4
  br label %460

460:                                              ; preds = %459, %457, %419, %297, %278, %264, %137, %127, %118, %108, %94, %50, %30
  %461 = load i32, i32* %9, align 4
  ret i32 %461
}

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device*, i32, i32) #1

declare dso_local i32 @rdev_del_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @cfg80211_ibss_wext_join(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i64 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device*, %struct.key_params*, i32, i32, i32*) #1

declare dso_local i32 @rdev_add_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*, %struct.key_params*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @rdev_set_default_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
