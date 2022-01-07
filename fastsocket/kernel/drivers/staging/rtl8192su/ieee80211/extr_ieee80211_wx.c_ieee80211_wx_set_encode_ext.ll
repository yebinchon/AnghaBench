; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_wx.c_ieee80211_wx_set_encode_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i64, i64 (%struct.net_device*)*, i64, %struct.net_device*, i32 (%struct.net_device*, %struct.ieee80211_security*)*, %struct.ieee80211_crypt_data** }
%struct.net_device = type { i32 }
%struct.ieee80211_security = type { i32, i32, i32, i64*, i32 }
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
@.str.4 = private unnamed_addr constant [13 x i8] c"alg name:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"========>unknown crypto alg %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: key setting failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"%s: reset_port failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_wx_set_encode_ext(%struct.ieee80211_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.iw_point*, align 8
  %13 = alloca %struct.iw_encode_ext*, align 8
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
  store i32 0, i32* %10, align 4
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 4
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %11, align 8
  %25 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.iw_point*
  store %struct.iw_point* %26, %struct.iw_point** %12, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %28, %struct.iw_encode_ext** %13, align 8
  store i32 0, i32* %16, align 4
  %29 = bitcast %struct.ieee80211_security* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  %30 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @WEP_KEYS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %424

47:                                               ; preds = %40
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %15, align 4
  br label %54

50:                                               ; preds = %4
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
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
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %64, i64 %66
  store %struct.ieee80211_crypt_data** %67, %struct.ieee80211_crypt_data*** %19, align 8
  store i32 1, i32* %16, align 4
  br label %96

68:                                               ; preds = %54
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %73 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %424

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
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %88, i64 %90
  store %struct.ieee80211_crypt_data** %91, %struct.ieee80211_crypt_data*** %19, align 8
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %424

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %61
  %97 = load i32, i32* @SEC_ENABLED, align 4
  %98 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 8
  %101 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %102 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %96
  %108 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
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
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %137, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @WEP_KEYS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %127, i32 0, i32 6
  %129 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %128, align 8
  %130 = load i32, i32* %14, align 4
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
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %122

140:                                              ; preds = %135, %122
  %141 = load i32, i32* %14, align 4
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
  br label %379

153:                                              ; preds = %107
  %154 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
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
  %162 = load %struct.net_device*, %struct.net_device** %11, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %166 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %10, align 4
  br label %379

171:                                              ; preds = %160, %159, %158
  %172 = load i8*, i8** %17, align 8
  %173 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  %174 = load i8*, i8** %17, align 8
  %175 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %174)
  store %struct.ieee80211_crypto_ops* %175, %struct.ieee80211_crypto_ops** %18, align 8
  %176 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %177 = icmp eq %struct.ieee80211_crypto_ops* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i8*, i8** %17, align 8
  %180 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %179)
  store %struct.ieee80211_crypto_ops* %180, %struct.ieee80211_crypto_ops** %18, align 8
  br label %181

181:                                              ; preds = %178, %171
  %182 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %183 = icmp eq %struct.ieee80211_crypto_ops* %182, null
  br i1 %183, label %184, label %198

184:                                              ; preds = %181
  %185 = load %struct.net_device*, %struct.net_device** %11, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %189 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %190)
  %192 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %193 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %10, align 4
  br label %379

198:                                              ; preds = %181
  %199 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %200 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %199, align 8
  %201 = icmp eq %struct.ieee80211_crypt_data* %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %198
  %203 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %204 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %203, align 8
  %205 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %204, i32 0, i32 1
  %206 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %205, align 8
  %207 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %208 = icmp ne %struct.ieee80211_crypto_ops* %206, %207
  br i1 %208, label %209, label %251

209:                                              ; preds = %202, %198
  %210 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %211 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %212 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %210, %struct.ieee80211_crypt_data** %211)
  %213 = load i32, i32* @GFP_KERNEL, align 4
  %214 = call %struct.ieee80211_crypt_data* @kzalloc(i32 16, i32 %213)
  store %struct.ieee80211_crypt_data* %214, %struct.ieee80211_crypt_data** %21, align 8
  %215 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %216 = icmp eq %struct.ieee80211_crypt_data* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %10, align 4
  br label %379

220:                                              ; preds = %209
  %221 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %18, align 8
  %222 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %223 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %222, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %221, %struct.ieee80211_crypto_ops** %223, align 8
  %224 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %225 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %224, i32 0, i32 1
  %226 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %225, align 8
  %227 = icmp ne %struct.ieee80211_crypto_ops* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %220
  %229 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %230 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %229, i32 0, i32 1
  %231 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %230, align 8
  %232 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %231, i32 0, i32 1
  %233 = load i32* (i32)*, i32* (i32)** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = call i32* %233(i32 %234)
  %236 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %237 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %236, i32 0, i32 0
  store i32* %235, i32** %237, align 8
  br label %238

238:                                              ; preds = %228, %220
  %239 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %240 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %245 = call i32 @kfree(%struct.ieee80211_crypt_data* %244)
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %10, align 4
  br label %379

248:                                              ; preds = %238
  %249 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %21, align 8
  %250 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  store %struct.ieee80211_crypt_data* %249, %struct.ieee80211_crypt_data** %250, align 8
  br label %251

251:                                              ; preds = %248, %202
  %252 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %253 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %294

256:                                              ; preds = %251
  %257 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %258 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %257, align 8
  %259 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %258, i32 0, i32 1
  %260 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %259, align 8
  %261 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %260, i32 0, i32 0
  %262 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %261, align 8
  %263 = icmp ne i64 (i32, i64, i32, i32*)* %262, null
  br i1 %263, label %264, label %294

264:                                              ; preds = %256
  %265 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %266 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %265, align 8
  %267 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %266, i32 0, i32 1
  %268 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %267, align 8
  %269 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %268, i32 0, i32 0
  %270 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %269, align 8
  %271 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %272 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %275 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %278 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %19, align 8
  %281 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %280, align 8
  %282 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = call i64 %270(i32 %273, i64 %276, i32 %279, i32* %283)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %264
  %287 = load %struct.net_device*, %struct.net_device** %11, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %289)
  %291 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %10, align 4
  br label %379

294:                                              ; preds = %264, %256, %251
  %295 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %296 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %311

301:                                              ; preds = %294
  %302 = load i32, i32* %15, align 4
  %303 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %304 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load i32, i32* %15, align 4
  %306 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 2
  store i32 %305, i32* %306, align 8
  %307 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %308 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %307
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %301, %294
  %312 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %313 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %378

317:                                              ; preds = %311
  %318 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %319 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 3
  %322 = load i64*, i64** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  store i64 %320, i64* %325, align 8
  %326 = load i32, i32* %15, align 4
  %327 = shl i32 1, %326
  %328 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %327
  store i32 %330, i32* %328, align 8
  %331 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %332 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 128
  br i1 %334, label %335, label %342

335:                                              ; preds = %317
  %336 = load i32, i32* @SEC_LEVEL, align 4
  %337 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %336
  store i32 %339, i32* %337, align 8
  %340 = load i32, i32* @SEC_LEVEL_1, align 4
  %341 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %340, i32* %341, align 8
  br label %368

342:                                              ; preds = %317
  %343 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %344 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 129
  br i1 %346, label %347, label %354

347:                                              ; preds = %342
  %348 = load i32, i32* @SEC_LEVEL, align 4
  %349 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %348
  store i32 %351, i32* %349, align 8
  %352 = load i32, i32* @SEC_LEVEL_2, align 4
  %353 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %352, i32* %353, align 8
  br label %367

354:                                              ; preds = %342
  %355 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %356 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 130
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = load i32, i32* @SEC_LEVEL, align 4
  %361 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = or i32 %362, %360
  store i32 %363, i32* %361, align 8
  %364 = load i32, i32* @SEC_LEVEL_3, align 4
  %365 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 4
  store i32 %364, i32* %365, align 8
  br label %366

366:                                              ; preds = %359, %354
  br label %367

367:                                              ; preds = %366, %347
  br label %368

368:                                              ; preds = %367, %335
  %369 = load i32, i32* %16, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %368
  %372 = load i32, i32* @SEC_LEVEL, align 4
  %373 = xor i32 %372, -1
  %374 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %20, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = and i32 %375, %373
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %371, %368
  br label %378

378:                                              ; preds = %377, %311
  br label %379

379:                                              ; preds = %378, %286, %243, %217, %184, %161, %152
  %380 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %381 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %380, i32 0, i32 5
  %382 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %381, align 8
  %383 = icmp ne i32 (%struct.net_device*, %struct.ieee80211_security*)* %382, null
  br i1 %383, label %384, label %392

384:                                              ; preds = %379
  %385 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %386 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %385, i32 0, i32 5
  %387 = load i32 (%struct.net_device*, %struct.ieee80211_security*)*, i32 (%struct.net_device*, %struct.ieee80211_security*)** %386, align 8
  %388 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %389 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %388, i32 0, i32 4
  %390 = load %struct.net_device*, %struct.net_device** %389, align 8
  %391 = call i32 %387(%struct.net_device* %390, %struct.ieee80211_security* %20)
  br label %392

392:                                              ; preds = %384, %379
  %393 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %394 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %422

397:                                              ; preds = %392
  %398 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %399 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* @IW_MODE_INFRA, align 8
  %402 = icmp ne i64 %400, %401
  br i1 %402, label %403, label %422

403:                                              ; preds = %397
  %404 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %405 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %404, i32 0, i32 2
  %406 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %405, align 8
  %407 = icmp ne i64 (%struct.net_device*)* %406, null
  br i1 %407, label %408, label %422

408:                                              ; preds = %403
  %409 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %410 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %409, i32 0, i32 2
  %411 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %410, align 8
  %412 = load %struct.net_device*, %struct.net_device** %11, align 8
  %413 = call i64 %411(%struct.net_device* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %408
  %416 = load %struct.net_device*, %struct.net_device** %11, align 8
  %417 = getelementptr inbounds %struct.net_device, %struct.net_device* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (i8*, i32, ...) @IEEE80211_DEBUG_WX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %418)
  %420 = load i32, i32* @EINVAL, align 4
  %421 = sub nsw i32 0, %420
  store i32 %421, i32* %5, align 4
  br label %424

422:                                              ; preds = %408, %403, %397, %392
  %423 = load i32, i32* %10, align 4
  store i32 %423, i32* %5, align 4
  br label %424

424:                                              ; preds = %422, %415, %92, %76, %44
  %425 = load i32, i32* %5, align 4
  ret i32 %425
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device*, %struct.ieee80211_crypt_data**) #2

declare dso_local i32 @IEEE80211_DEBUG_WX(i8*, i32, ...) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8*) #2

declare dso_local %struct.ieee80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
