; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_crypto_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_crypto_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.genl_info = type { i64* }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, i8**, i8*, i8*, i8**, i8*, i64 }

@NL80211_ATTR_CONTROL_PORT = common dso_local global i64 0, align 8
@NL80211_ATTR_CONTROL_PORT_ETHERTYPE = common dso_local global i64 0, align 8
@WIPHY_FLAG_CONTROL_PORT_PROTOCOL = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT = common dso_local global i64 0, align 8
@NL80211_ATTR_CIPHER_SUITES_PAIRWISE = common dso_local global i64 0, align 8
@NL80211_ATTR_CIPHER_SUITE_GROUP = common dso_local global i64 0, align 8
@NL80211_ATTR_WPA_VERSIONS = common dso_local global i64 0, align 8
@NL80211_ATTR_AKM_SUITES = common dso_local global i64 0, align 8
@NL80211_MAX_NR_AKM_SUITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.genl_info*, %struct.cfg80211_crypto_settings*, i32)* @nl80211_crypto_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_crypto_settings(%struct.cfg80211_registered_device* %0, %struct.genl_info* %1, %struct.cfg80211_crypto_settings* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_crypto_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.genl_info* %1, %struct.genl_info** %7, align 8
  store %struct.cfg80211_crypto_settings* %2, %struct.cfg80211_crypto_settings** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %17 = call i32 @memset(%struct.cfg80211_crypto_settings* %16, i32 0, i32 64)
  %18 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @NL80211_ATTR_CONTROL_PORT, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %25 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %24, i32 0, i32 8
  store i64 %23, i64* %25, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %4
  %34 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_ETHERTYPE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @nla_get_u16(i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i8* @cpu_to_be16(i64 %41)
  %43 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %44 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @WIPHY_FLAG_CONTROL_PORT_PROTOCOL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %33
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ETH_P_PAE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %263

59:                                               ; preds = %52, %33
  %60 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %69 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %59
  br label %76

71:                                               ; preds = %4
  %72 = load i64, i64* @ETH_P_PAE, align 8
  %73 = call i8* @cpu_to_be16(i64 %72)
  %74 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %75 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %70
  %77 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %154

84:                                               ; preds = %76
  %85 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %86 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @nla_data(i64 %90)
  store i8* %91, i8** %11, align 8
  %92 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %93 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @NL80211_ATTR_CIPHER_SUITES_PAIRWISE, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @nla_len(i64 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = udiv i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %104 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = urem i64 %106, 4
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %84
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %263

112:                                              ; preds = %84
  %113 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %114 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %263

121:                                              ; preds = %112
  %122 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %123 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %122, i32 0, i32 6
  %124 = load i8**, i8*** %123, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @memcpy(i8** %124, i8* %125, i32 %126)
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %150, %121
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %131 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %128
  %135 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %136 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %135, i32 0, i32 0
  %137 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %138 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %137, i32 0, i32 6
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_2__* %136, i8* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %134
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %263

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %128

153:                                              ; preds = %128
  br label %154

154:                                              ; preds = %153, %76
  %155 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %156 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @NL80211_ATTR_CIPHER_SUITE_GROUP, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %154
  %163 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %164 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @NL80211_ATTR_CIPHER_SUITE_GROUP, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @nla_get_u32(i64 %168)
  %170 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %171 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %173 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %172, i32 0, i32 0
  %174 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %175 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_2__* %173, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %162
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %263

182:                                              ; preds = %162
  br label %183

183:                                              ; preds = %182, %154
  %184 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %185 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* @NL80211_ATTR_WPA_VERSIONS, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %210

191:                                              ; preds = %183
  %192 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %193 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @NL80211_ATTR_WPA_VERSIONS, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @nla_get_u32(i64 %197)
  %199 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %200 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  %201 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %202 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %201, i32 0, i32 4
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @nl80211_valid_wpa_versions(i8* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %191
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %5, align 4
  br label %263

209:                                              ; preds = %191
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %212 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %262

218:                                              ; preds = %210
  %219 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %220 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = call i8* @nla_data(i64 %224)
  store i8* %225, i8** %14, align 8
  %226 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %227 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* @NL80211_ATTR_AKM_SUITES, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @nla_len(i64 %231)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = udiv i64 %234, 4
  %236 = trunc i64 %235 to i32
  %237 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %238 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = urem i64 %240, 4
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %218
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %5, align 4
  br label %263

246:                                              ; preds = %218
  %247 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %248 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @NL80211_MAX_NR_AKM_SUITES, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %5, align 4
  br label %263

255:                                              ; preds = %246
  %256 = load %struct.cfg80211_crypto_settings*, %struct.cfg80211_crypto_settings** %8, align 8
  %257 = getelementptr inbounds %struct.cfg80211_crypto_settings, %struct.cfg80211_crypto_settings* %256, i32 0, i32 3
  %258 = load i8**, i8*** %257, align 8
  %259 = load i8*, i8** %14, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @memcpy(i8** %258, i8* %259, i32 %260)
  br label %262

262:                                              ; preds = %255, %210
  store i32 0, i32* %5, align 4
  br label %263

263:                                              ; preds = %262, %252, %243, %206, %179, %146, %118, %109, %56
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @memset(%struct.cfg80211_crypto_settings*, i32, i32) #1

declare dso_local i64 @nla_get_u16(i64) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @cfg80211_supported_cipher_suite(%struct.TYPE_2__*, i8*) #1

declare dso_local i8* @nla_get_u32(i64) #1

declare dso_local i32 @nl80211_valid_wpa_versions(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
