; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i64 (%struct.net_device*)*, i64, %struct.net_device*, i32 (%struct.net_device*, %struct.ieee80211_security*)*, %struct.ieee80211_crypt_data** }
%struct.net_device = type { i32 }
%struct.ieee80211_security = type { i32, i32, i32, i64*, i32, i32* }
%struct.ieee80211_crypt_data = type { i32*, %struct.ieee80211_crypto_ops* }
%struct.ieee80211_crypto_ops = type { i64 (i32, i64, i32, i32*)*, i32* (i32)* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: unknown crypto alg %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"========>unknown crypto alg %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: key setting failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: reset_port failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ieee80211_crypto_ops*, align 8
  %19 = alloca %struct.ieee80211_crypt_data**, align 8
  %20 = alloca %struct.ieee80211_security, align 8
  %21 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 4
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %10, align 8
  %25 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.iw_point*
  store %struct.iw_point* %26, %struct.iw_point** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %28, %struct.iw_encode_ext** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = bitcast %struct.ieee80211_security* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 40, i1 false)
  %30 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @WEP_KEYS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %435

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %14, align 4
  br label %54

50:                                               ; preds = %4
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %56 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 6
  %64 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %64, i64 %66
  store %struct.ieee80211_crypt_data** %67, %struct.ieee80211_crypt_data*** %19, align 8
  store i32 1, i32* %16, align 4
  br label %96

68:                                               ; preds = %54
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %73 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %435

79:                                               ; preds = %71, %68
  %80 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IW_MODE_INFRA, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %86, i32 0, i32 6
  %88 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %88, i64 %90
  store %struct.ieee80211_crypt_data** %91, %struct.ieee80211_crypt_data*** %19, align 8
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %435

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* @SEC_ENABLED, align 4
  %98 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 8
  %101 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %102 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %96
  %108 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %109 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %153

113:                                              ; preds = %107, %96
  %114 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %115 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %114, align 8
  %116 = icmp ne %struct.ieee80211_crypt_data* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %119 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %120 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %118, %struct.ieee80211_crypt_data** %119)
  br label %121

121:                                              ; preds = %117, %113
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %137, %121
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @WEP_KEYS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %127, i32 0, i32 6
  %129 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %129, i64 %131
  %133 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %132, align 8
  %134 = icmp ne %struct.ieee80211_crypt_data* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %140

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %122

140:                                              ; preds = %135, %122
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* @WEP_KEYS, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* @SEC_LEVEL_0, align 4
  %147 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* @SEC_LEVEL, align 4
  %149 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %144, %140
  br label %390

153:                                              ; preds = %107
  %154 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %156 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %161 [
    i32 128, label %158
    i32 129, label %159
    i32 130, label %160
  ]

158:                                              ; preds = %153
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %171

159:                                              ; preds = %153
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %171

160:                                              ; preds = %153
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %171

161:                                              ; preds = %153
  %162 = load %struct.net_device*, %struct.net_device** %10, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %166 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %15, align 4
  br label %390

171:                                              ; preds = %160, %159, %158
  %172 = load i8*, i8** %17, align 8
  %173 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %172)
  store %struct.ieee80211_crypto_ops* %173, %struct.ieee80211_crypto_ops** %18, align 8
  %174 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %175 = icmp eq %struct.ieee80211_crypto_ops* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i8*, i8** %17, align 8
  %178 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %177)
  store %struct.ieee80211_crypto_ops* %178, %struct.ieee80211_crypto_ops** %18, align 8
  br label %179

179:                                              ; preds = %176, %171
  %180 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %181 = icmp eq %struct.ieee80211_crypto_ops* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load %struct.net_device*, %struct.net_device** %10, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %187 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %188)
  %190 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %191 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %15, align 4
  br label %390

196:                                              ; preds = %179
  %197 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %198 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %197, align 8
  %199 = icmp eq %struct.ieee80211_crypt_data* %198, null
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %202 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %201, align 8
  %203 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %202, i32 0, i32 1
  %204 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %203, align 8
  %205 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %206 = icmp ne %struct.ieee80211_crypto_ops* %204, %205
  br i1 %206, label %207, label %249

207:                                              ; preds = %200, %196
  %208 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %209 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %210 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %208, %struct.ieee80211_crypt_data** %209)
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call %struct.ieee80211_crypt_data* @kzalloc(i32 16, i32 %211)
  store %struct.ieee80211_crypt_data* %212, %struct.ieee80211_crypt_data** %21, align 8
  %213 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %214 = icmp eq %struct.ieee80211_crypt_data* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %15, align 4
  br label %390

218:                                              ; preds = %207
  %219 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %220 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %221 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %220, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %219, %struct.ieee80211_crypto_ops** %221, align 8
  %222 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %223 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %222, i32 0, i32 1
  %224 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %223, align 8
  %225 = icmp ne %struct.ieee80211_crypto_ops* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %218
  %227 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %228 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %227, i32 0, i32 1
  %229 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %228, align 8
  %230 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %229, i32 0, i32 1
  %231 = load i32* (i32)*, i32* (i32)** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = call i32* %231(i32 %232)
  %234 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %235 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %234, i32 0, i32 0
  store i32* %233, i32** %235, align 8
  br label %236

236:                                              ; preds = %226, %218
  %237 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %238 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = icmp eq i32* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %243 = call i32 @kfree(%struct.ieee80211_crypt_data* %242)
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %15, align 4
  br label %390

246:                                              ; preds = %236
  %247 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %248 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  store %struct.ieee80211_crypt_data* %247, %struct.ieee80211_crypt_data** %248, align 8
  br label %249

249:                                              ; preds = %246, %200
  %250 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %251 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %252, 0
  br i1 %253, label %254, label %292

254:                                              ; preds = %249
  %255 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %256 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %255, align 8
  %257 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %256, i32 0, i32 1
  %258 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %257, align 8
  %259 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %258, i32 0, i32 0
  %260 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %259, align 8
  %261 = icmp ne i64 (i32, i64, i32, i32*)* %260, null
  br i1 %261, label %262, label %292

262:                                              ; preds = %254
  %263 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %264 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %263, align 8
  %265 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %264, i32 0, i32 1
  %266 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %265, align 8
  %267 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %266, i32 0, i32 0
  %268 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %267, align 8
  %269 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %270 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %273 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %276 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %279 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %278, align 8
  %280 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = call i64 %268(i32 %271, i64 %274, i32 %277, i32* %281)
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %262
  %285 = load %struct.net_device*, %struct.net_device** %10, align 8
  %286 = getelementptr inbounds %struct.net_device, %struct.net_device* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  %289 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %15, align 4
  br label %390

292:                                              ; preds = %262, %254, %249
  %293 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %294 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %292
  %300 = load i32, i32* %14, align 4
  %301 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %302 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %14, align 4
  %304 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 2
  store i32 %303, i32* %304, align 8
  %305 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %306 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %305
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %299, %292
  %310 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %311 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %389

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 5
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %14, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %323 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %326 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @memcpy(i32 %321, i32 %324, i64 %327)
  %329 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %330 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 3
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %14, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  store i64 %331, i64* %336, align 8
  %337 = load i32, i32* %14, align 4
  %338 = shl i32 1, %337
  %339 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %338
  store i32 %341, i32* %339, align 8
  %342 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %343 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %344, 128
  br i1 %345, label %346, label %353

346:                                              ; preds = %315
  %347 = load i32, i32* @SEC_LEVEL, align 4
  %348 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %347
  store i32 %350, i32* %348, align 8
  %351 = load i32, i32* @SEC_LEVEL_1, align 4
  %352 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %351, i32* %352, align 8
  br label %379

353:                                              ; preds = %315
  %354 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %355 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 129
  br i1 %357, label %358, label %365

358:                                              ; preds = %353
  %359 = load i32, i32* @SEC_LEVEL, align 4
  %360 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %359
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* @SEC_LEVEL_2, align 4
  %364 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %363, i32* %364, align 8
  br label %378

365:                                              ; preds = %353
  %366 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %367 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 130
  br i1 %369, label %370, label %377

370:                                              ; preds = %365
  %371 = load i32, i32* @SEC_LEVEL, align 4
  %372 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %371
  store i32 %374, i32* %372, align 8
  %375 = load i32, i32* @SEC_LEVEL_3, align 4
  %376 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %375, i32* %376, align 8
  br label %377

377:                                              ; preds = %370, %365
  br label %378

378:                                              ; preds = %377, %358
  br label %379

379:                                              ; preds = %378, %346
  %380 = load i32, i32* %16, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %379
  %383 = load i32, i32* @SEC_LEVEL, align 4
  %384 = xor i32 %383, -1
  %385 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = and i32 %386, %384
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %382, %379
  br label %389

389:                                              ; preds = %388, %309
  br label %390

390:                                              ; preds = %389, %284, %241, %215, %182, %161, %152
  %391 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %392 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %391, i32 0, i32 5
  %393 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %392, align 8
  %394 = icmp ne i32 (%struct.net_device*, %struct.ieee80211_security*)* %393, null
  br i1 %394, label %395, label %403

395:                                              ; preds = %390
  %396 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %397 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %396, i32 0, i32 5
  %398 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %397, align 8
  %399 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %400 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %399, i32 0, i32 4
  %401 = load %struct.net_device*, %struct.net_device** %400, align 8
  %402 = call i32 %398(%struct.net_device* %401, %struct.ieee80211_security* %20)
  br label %403

403:                                              ; preds = %395, %390
  %404 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %405 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %433

408:                                              ; preds = %403
  %409 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %410 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @IW_MODE_INFRA, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %433

414:                                              ; preds = %408
  %415 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %416 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %415, i32 0, i32 2
  %417 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %416, align 8
  %418 = icmp ne i64 (%struct.net_device*)* %417, null
  br i1 %418, label %419, label %433

419:                                              ; preds = %414
  %420 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %421 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %420, i32 0, i32 2
  %422 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %421, align 8
  %423 = load %struct.net_device*, %struct.net_device** %10, align 8
  %424 = call i64 %422(%struct.net_device* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %419
  %427 = load %struct.net_device*, %struct.net_device** %10, align 8
  %428 = getelementptr inbounds %struct.net_device, %struct.net_device* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %429)
  %431 = load i32, i32* @EINVAL, align 4
  %432 = sub nsw i32 0, %431
  store i32 %432, i32* %5, align 4
  br label %435

433:                                              ; preds = %419, %414, %408, %403
  %434 = load i32, i32* %15, align 4
  store i32 %434, i32* %5, align 4
  br label %435

435:                                              ; preds = %433, %426, %92, %76, %44
  %436 = load i32, i32* %5, align 4
  ret i32 %436
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device*, %struct.ieee80211_crypt_data**) #2

declare dso_local i32 @IEEE80211_DEBUG_WX(i8*, i32, ...) #2

declare dso_local %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local %struct.ieee80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
