; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_encryption.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i64, i32, i64 (i32)*, i64, i32 (i32, %struct.ieee80211_security*)*, i64, i64, %struct.ieee80211_crypt_data** }
%struct.ieee80211_security = type { i32, i32, i64, i32, i32*, i32* }
%struct.ieee80211_crypt_data = type { i32*, %struct.ieee80211_crypto_ops* }
%struct.ieee80211_crypto_ops = type { i64 (i64, i32, i32, i32*)*, i32* (i64)* }
%struct.ieee_param = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i64, i32, i64, i64, i32 }

@IEEE_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Len mismatch %d, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"unknown crypto alg '%s'\0A\00", align 1
@IEEE_CRYPT_ERR_UNKNOWN_ALG = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE_CRYPT_ERR_CRYPT_INIT_FAILED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"key setting failed\0A\00", align 1
@IEEE_CRYPT_ERR_KEY_SET_FAILED = common dso_local global i64 0, align 8
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"reset_port failed\0A\00", align 1
@IEEE_CRYPT_ERR_CARD_CONF_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.ieee_param*, i32)* @ieee80211_wpa_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_encryption(%struct.ieee80211_device* %0, %struct.ieee_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_crypto_ops*, align 8
  %10 = alloca %struct.ieee80211_crypt_data**, align 8
  %11 = alloca %struct.ieee80211_security, align 8
  %12 = alloca %struct.ieee80211_crypt_data*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = bitcast %struct.ieee80211_security* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %15 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %19 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @IEEE_CRYPT_ALG_NAME_LEN, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %29 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %35 = bitcast %struct.ieee_param* %34 to i8*
  %36 = ptrtoint i8* %33 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %41 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %39, %44
  %46 = icmp ne i32 %27, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %50 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %553

57:                                               ; preds = %3
  %58 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %59 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 255
  br i1 %63, label %64, label %121

64:                                               ; preds = %57
  %65 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %66 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 255
  br i1 %70, label %71, label %121

71:                                               ; preds = %64
  %72 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %73 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %121

78:                                               ; preds = %71
  %79 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %80 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 255
  br i1 %84, label %85, label %121

85:                                               ; preds = %78
  %86 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %87 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %94 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 255
  br i1 %98, label %99, label %121

99:                                               ; preds = %92
  %100 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %101 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @WEP_KEYS, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %553

110:                                              ; preds = %99
  %111 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %111, i32 0, i32 8
  %113 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %112, align 8
  %114 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %115 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %113, i64 %119
  store %struct.ieee80211_crypt_data** %120, %struct.ieee80211_crypt_data*** %10, align 8
  br label %124

121:                                              ; preds = %92, %85, %78, %71, %64, %57
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %553

124:                                              ; preds = %110
  %125 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %126 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %124
  %133 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %134 = icmp ne %struct.ieee80211_crypt_data** %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 1
  store i32 0, i32* %136, align 4
  %137 = load i32, i32* @SEC_LEVEL_0, align 4
  %138 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 3
  store i32 %137, i32* %138, align 8
  %139 = load i32, i32* @SEC_ENABLED, align 4
  %140 = load i32, i32* @SEC_LEVEL, align 4
  %141 = or i32 %139, %140
  %142 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 8
  %145 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %146 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %147 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %145, %struct.ieee80211_crypt_data** %146)
  br label %148

148:                                              ; preds = %135, %132
  br label %504

149:                                              ; preds = %124
  %150 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 1
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* @SEC_ENABLED, align 4
  %152 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 8
  %155 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %156 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %149
  %160 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %161 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %159
  %165 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %166 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %371

173:                                              ; preds = %164, %159, %149
  %174 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %175 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %178)
  store %struct.ieee80211_crypto_ops* %179, %struct.ieee80211_crypto_ops** %9, align 8
  %180 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %181 = icmp eq %struct.ieee80211_crypto_ops* %180, null
  br i1 %181, label %182, label %197

182:                                              ; preds = %173
  %183 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %184 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %192 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %195)
  store %struct.ieee80211_crypto_ops* %196, %struct.ieee80211_crypto_ops** %9, align 8
  br label %235

197:                                              ; preds = %182, %173
  %198 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %199 = icmp eq %struct.ieee80211_crypto_ops* %198, null
  br i1 %199, label %200, label %215

200:                                              ; preds = %197
  %201 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %202 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %200
  %209 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %210 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %213)
  store %struct.ieee80211_crypto_ops* %214, %struct.ieee80211_crypto_ops** %9, align 8
  br label %234

215:                                              ; preds = %200, %197
  %216 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %217 = icmp eq %struct.ieee80211_crypto_ops* %216, null
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %220 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @strcmp(i8* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %218
  %227 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %228 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8* %231)
  store %struct.ieee80211_crypto_ops* %232, %struct.ieee80211_crypto_ops** %9, align 8
  br label %233

233:                                              ; preds = %226, %218, %215
  br label %234

234:                                              ; preds = %233, %208
  br label %235

235:                                              ; preds = %234, %190
  %236 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %237 = icmp eq %struct.ieee80211_crypto_ops* %236, null
  br i1 %237, label %238, label %252

238:                                              ; preds = %235
  %239 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %240 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %243)
  %245 = load i64, i64* @IEEE_CRYPT_ERR_UNKNOWN_ALG, align 8
  %246 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %247 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 2
  store i64 %245, i64* %249, align 8
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %8, align 4
  br label %504

252:                                              ; preds = %235
  %253 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %254 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %253, align 8
  %255 = icmp eq %struct.ieee80211_crypt_data* %254, null
  br i1 %255, label %263, label %256

256:                                              ; preds = %252
  %257 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %258 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %257, align 8
  %259 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %258, i32 0, i32 1
  %260 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %259, align 8
  %261 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %262 = icmp ne %struct.ieee80211_crypto_ops* %260, %261
  br i1 %262, label %263, label %318

263:                                              ; preds = %256, %252
  %264 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %265 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %266 = call i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device* %264, %struct.ieee80211_crypt_data** %265)
  %267 = load i32, i32* @GFP_KERNEL, align 4
  %268 = call i64 @kmalloc(i32 16, i32 %267)
  %269 = inttoptr i64 %268 to %struct.ieee80211_crypt_data*
  store %struct.ieee80211_crypt_data* %269, %struct.ieee80211_crypt_data** %12, align 8
  %270 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %271 = icmp eq %struct.ieee80211_crypt_data* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load i32, i32* @ENOMEM, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %8, align 4
  br label %504

275:                                              ; preds = %263
  %276 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %277 = call i32 @memset(%struct.ieee80211_crypt_data* %276, i32 0, i32 16)
  %278 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %9, align 8
  %279 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %280 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %279, i32 0, i32 1
  store %struct.ieee80211_crypto_ops* %278, %struct.ieee80211_crypto_ops** %280, align 8
  %281 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %282 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %281, i32 0, i32 1
  %283 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %282, align 8
  %284 = icmp ne %struct.ieee80211_crypto_ops* %283, null
  br i1 %284, label %285, label %300

285:                                              ; preds = %275
  %286 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %287 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %286, i32 0, i32 1
  %288 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %287, align 8
  %289 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %288, i32 0, i32 1
  %290 = load i32* (i64)*, i32* (i64)** %289, align 8
  %291 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %292 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = call i32* %290(i64 %296)
  %298 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %299 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %298, i32 0, i32 0
  store i32* %297, i32** %299, align 8
  br label %300

300:                                              ; preds = %285, %275
  %301 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %302 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = icmp eq i32* %303, null
  br i1 %304, label %305, label %315

305:                                              ; preds = %300
  %306 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %307 = call i32 @kfree(%struct.ieee80211_crypt_data* %306)
  %308 = load i64, i64* @IEEE_CRYPT_ERR_CRYPT_INIT_FAILED, align 8
  %309 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %310 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 2
  store i64 %308, i64* %312, align 8
  %313 = load i32, i32* @EINVAL, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %8, align 4
  br label %504

315:                                              ; preds = %300
  %316 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %12, align 8
  %317 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  store %struct.ieee80211_crypt_data* %316, %struct.ieee80211_crypt_data** %317, align 8
  br label %318

318:                                              ; preds = %315, %256
  %319 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %320 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 8
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %370

325:                                              ; preds = %318
  %326 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %327 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %326, align 8
  %328 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %327, i32 0, i32 1
  %329 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %328, align 8
  %330 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %329, i32 0, i32 0
  %331 = load i64 (i64, i32, i32, i32*)*, i64 (i64, i32, i32, i32*)** %330, align 8
  %332 = icmp ne i64 (i64, i32, i32, i32*)* %331, null
  br i1 %332, label %333, label %370

333:                                              ; preds = %325
  %334 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %335 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %334, align 8
  %336 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %335, i32 0, i32 1
  %337 = load %struct.ieee80211_crypto_ops*, %struct.ieee80211_crypto_ops** %336, align 8
  %338 = getelementptr inbounds %struct.ieee80211_crypto_ops, %struct.ieee80211_crypto_ops* %337, i32 0, i32 0
  %339 = load i64 (i64, i32, i32, i32*)*, i64 (i64, i32, i32, i32*)** %338, align 8
  %340 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %341 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %346 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %351 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.ieee80211_crypt_data**, %struct.ieee80211_crypt_data*** %10, align 8
  %356 = load %struct.ieee80211_crypt_data*, %struct.ieee80211_crypt_data** %355, align 8
  %357 = getelementptr inbounds %struct.ieee80211_crypt_data, %struct.ieee80211_crypt_data* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = call i64 %339(i64 %344, i32 %349, i32 %354, i32* %358)
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %333
  %362 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %363 = load i64, i64* @IEEE_CRYPT_ERR_KEY_SET_FAILED, align 8
  %364 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %365 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 2
  store i64 %363, i64* %367, align 8
  %368 = load i32, i32* @EINVAL, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %8, align 4
  br label %504

370:                                              ; preds = %333, %325, %318
  br label %371

371:                                              ; preds = %370, %172
  %372 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %373 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 5
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %398

378:                                              ; preds = %371
  %379 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %380 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %386 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %385, i32 0, i32 0
  store i64 %384, i64* %386, align 8
  %387 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %388 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 2
  store i64 %392, i64* %393, align 8
  %394 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %395 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = or i32 %396, %394
  store i32 %397, i32* %395, align 8
  br label %404

398:                                              ; preds = %371
  %399 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %400 = xor i32 %399, -1
  %401 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, %400
  store i32 %403, i32* %401, align 8
  br label %404

404:                                              ; preds = %398, %378
  %405 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %406 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %411, label %503

411:                                              ; preds = %404
  %412 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 5
  %413 = load i32*, i32** %412, align 8
  %414 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %415 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %413, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %423 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %428 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @memcpy(i32 %421, i64 %426, i32 %431)
  %433 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %434 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 4
  %439 = load i32*, i32** %438, align 8
  %440 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %441 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %439, i64 %445
  store i32 %437, i32* %446, align 4
  %447 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %448 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = shl i32 1, %451
  %453 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = or i32 %454, %452
  store i32 %455, i32* %453, align 8
  %456 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %457 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 0
  %460 = load i8*, i8** %459, align 8
  %461 = call i64 @strcmp(i8* %460, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %463, label %470

463:                                              ; preds = %411
  %464 = load i32, i32* @SEC_LEVEL, align 4
  %465 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = or i32 %466, %464
  store i32 %467, i32* %465, align 8
  %468 = load i32, i32* @SEC_LEVEL_1, align 4
  %469 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 3
  store i32 %468, i32* %469, align 8
  br label %502

470:                                              ; preds = %411
  %471 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %472 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = call i64 @strcmp(i8* %475, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %470
  %479 = load i32, i32* @SEC_LEVEL, align 4
  %480 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = or i32 %481, %479
  store i32 %482, i32* %480, align 8
  %483 = load i32, i32* @SEC_LEVEL_2, align 4
  %484 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 3
  store i32 %483, i32* %484, align 8
  br label %501

485:                                              ; preds = %470
  %486 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %487 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %488, i32 0, i32 0
  %490 = load i8*, i8** %489, align 8
  %491 = call i64 @strcmp(i8* %490, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %493, label %500

493:                                              ; preds = %485
  %494 = load i32, i32* @SEC_LEVEL, align 4
  %495 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = or i32 %496, %494
  store i32 %497, i32* %495, align 8
  %498 = load i32, i32* @SEC_LEVEL_3, align 4
  %499 = getelementptr inbounds %struct.ieee80211_security, %struct.ieee80211_security* %11, i32 0, i32 3
  store i32 %498, i32* %499, align 8
  br label %500

500:                                              ; preds = %493, %485
  br label %501

501:                                              ; preds = %500, %478
  br label %502

502:                                              ; preds = %501, %463
  br label %503

503:                                              ; preds = %502, %404
  br label %504

504:                                              ; preds = %503, %361, %305, %272, %238, %148
  %505 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %506 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %505, i32 0, i32 5
  %507 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %506, align 8
  %508 = icmp ne i32 (i32, %struct.ieee80211_security*)* %507, null
  br i1 %508, label %509, label %517

509:                                              ; preds = %504
  %510 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %511 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %510, i32 0, i32 5
  %512 = load i32 (i32, %struct.ieee80211_security*)*, i32 (i32, %struct.ieee80211_security*)** %511, align 8
  %513 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %514 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = call i32 %512(i32 %515, %struct.ieee80211_security* %11)
  br label %517

517:                                              ; preds = %509, %504
  %518 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %519 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %518, i32 0, i32 4
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %551

522:                                              ; preds = %517
  %523 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %524 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %523, i32 0, i32 1
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @IW_MODE_INFRA, align 8
  %527 = icmp ne i64 %525, %526
  br i1 %527, label %528, label %551

528:                                              ; preds = %522
  %529 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %530 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %529, i32 0, i32 3
  %531 = load i64 (i32)*, i64 (i32)** %530, align 8
  %532 = icmp ne i64 (i32)* %531, null
  br i1 %532, label %533, label %551

533:                                              ; preds = %528
  %534 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %535 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %534, i32 0, i32 3
  %536 = load i64 (i32)*, i64 (i32)** %535, align 8
  %537 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %538 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = call i64 %536(i32 %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %551

542:                                              ; preds = %533
  %543 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %544 = load i64, i64* @IEEE_CRYPT_ERR_CARD_CONF_FAILED, align 8
  %545 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %546 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 2
  store i64 %544, i64* %548, align 8
  %549 = load i32, i32* @EINVAL, align 4
  %550 = sub nsw i32 0, %549
  store i32 %550, i32* %4, align 4
  br label %553

551:                                              ; preds = %533, %528, %522, %517
  %552 = load i32, i32* %8, align 4
  store i32 %552, i32* %4, align 4
  br label %553

553:                                              ; preds = %551, %542, %121, %107, %47
  %554 = load i32, i32* %4, align 4
  ret i32 %554
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ieee80211_crypt_delayed_deinit(%struct.ieee80211_device*, %struct.ieee80211_crypt_data**) #2

declare dso_local %struct.ieee80211_crypto_ops* @ieee80211_get_crypto_ops(i8*) #2

declare dso_local i64 @kmalloc(i32, i32) #2

declare dso_local i32 @memset(%struct.ieee80211_crypt_data*, i32, i32) #2

declare dso_local i32 @kfree(%struct.ieee80211_crypt_data*) #2

declare dso_local i32 @memcpy(i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
