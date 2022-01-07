; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfInfraFindAPToConnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfInfraFindAPToConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i64, i64, i64*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.zsBssInfo* }
%struct.zsBssInfo = type { i32*, i64*, i64, i64*, i32, i32, i32, i32, i64*, %struct.zsBssInfo*, i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_BIT_4 = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_WEP_ENABLED = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_WEP_DISABLED = common dso_local global i64 0, align 8
@ZM_SECURITY_TYPE_WPA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ANY BSS found\00", align 1
@ZM_AUTH_MODE_OPEN = common dso_local global i64 0, align 8
@ZM_AUTH_MODE_AUTO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Privacy policy is inconsistent\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"desired bssid not matched 1\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"desired bssid not matched 2\00", align 1
@ZM_All11N_AP = common dso_local global i32 0, align 4
@CHANNEL_A_HT = common dso_local global i32 0, align 4
@CHANNEL_HT40 = common dso_local global i32 0, align 4
@CHANNEL_A = common dso_local global i32 0, align 4
@CHANNEL_G_HT = common dso_local global i32 0, align 4
@CHANNEL_B = common dso_local global i32 0, align 4
@CHANNEL_G = common dso_local global i32 0, align 4
@ZM_BIT_0 = common dso_local global i32 0, align 4
@ZM_BIT_1 = common dso_local global i32 0, align 4
@ZM_BIT_2 = common dso_local global i32 0, align 4
@CHANNEL_HT20 = common dso_local global i32 0, align 4
@ZM_BIT_3 = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Candidate AP in blocking List, skip if there's stilla choice!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zsBssInfo* (i32*, %struct.zsBssInfo*)* @zfInfraFindAPToConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zsBssInfo* @zfInfraFindAPToConnect(i32* %0, %struct.zsBssInfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca %struct.zsBssInfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.zsBssInfo* %1, %struct.zsBssInfo** %4, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %6, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.zsBssInfo*, %struct.zsBssInfo** %20, align 8
  store %struct.zsBssInfo* %21, %struct.zsBssInfo** %5, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %350, %2
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %353

30:                                               ; preds = %22
  %31 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %32 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ZM_BIT_4, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* @ZM_ENCRYPTION_WEP_ENABLED, align 8
  store i64 %40, i64* %9, align 8
  br label %43

41:                                               ; preds = %30
  %42 = load i64, i64* @ZM_ENCRYPTION_WEP_DISABLED, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %45 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @zfMemoryIsEqual(i64* %47, i32 %51, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %43
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %64 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %88, label %69

69:                                               ; preds = %58, %43
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %346

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %346

82:                                               ; preds = %75
  %83 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %84 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ZM_SECURITY_TYPE_WPA, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %346

88:                                               ; preds = %82, %58
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZM_ENCRYPTION_WEP_DISABLED, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @ZM_ENCRYPTION_WEP_ENABLED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %124, label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ZM_ENCRYPTION_WEP_ENABLED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %107
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* @ZM_ENCRYPTION_WEP_DISABLED, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %114
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %143

124:                                              ; preds = %118, %103
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ZM_AUTH_MODE_OPEN, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %124
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ZM_AUTH_MODE_AUTO, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %141 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %140, i32 0, i32 9
  %142 = load %struct.zsBssInfo*, %struct.zsBssInfo** %141, align 8
  store %struct.zsBssInfo* %142, %struct.zsBssInfo** %5, align 8
  br label %350

143:                                              ; preds = %131, %124, %118, %114, %107
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %146 = call i32 @zfCheckAuthentication(i32* %144, %struct.zsBssInfo* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %150 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %149, i32 0, i32 9
  %151 = load %struct.zsBssInfo*, %struct.zsBssInfo** %150, align 8
  store %struct.zsBssInfo* %151, %struct.zsBssInfo** %5, align 8
  br label %350

152:                                              ; preds = %143
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %197

159:                                              ; preds = %152
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %184, %159
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %161, 6
  br i1 %162, label %163, label %187

163:                                              ; preds = %160
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 5
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %173 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %171, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %163
  %181 = load i32, i32* @ZM_LV_1, align 4
  %182 = call i32 @zm_msg0_mm(i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %187

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %160

187:                                              ; preds = %180, %160
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 6
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load i32, i32* @ZM_LV_1, align 4
  %192 = call i32 @zm_msg0_mm(i32 %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %193 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %194 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %193, i32 0, i32 9
  %195 = load %struct.zsBssInfo*, %struct.zsBssInfo** %194, align 8
  store %struct.zsBssInfo* %195, %struct.zsBssInfo** %5, align 8
  br label %350

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %152
  %198 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %199 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = icmp sgt i32 %200, 3000
  br i1 %201, label %202, label %228

202:                                              ; preds = %197
  %203 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %204 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %209 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @ZM_All11N_AP, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %207, %202
  %215 = load i32, i32* @CHANNEL_A_HT, align 4
  store i32 %215, i32* %11, align 4
  %216 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %217 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* @CHANNEL_HT40, align 4
  %222 = load i32, i32* %11, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %220, %214
  br label %227

225:                                              ; preds = %207
  %226 = load i32, i32* @CHANNEL_A, align 4
  store i32 %226, i32* %11, align 4
  br label %227

227:                                              ; preds = %225, %224
  br label %264

228:                                              ; preds = %197
  %229 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %230 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %240, label %233

233:                                              ; preds = %228
  %234 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %235 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ZM_All11N_AP, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %251

240:                                              ; preds = %233, %228
  %241 = load i32, i32* @CHANNEL_G_HT, align 4
  store i32 %241, i32* %11, align 4
  %242 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %243 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load i32, i32* @CHANNEL_HT40, align 4
  %248 = load i32, i32* %11, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %246, %240
  br label %263

251:                                              ; preds = %233
  %252 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %253 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %252, i32 0, i32 8
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @CHANNEL_B, align 4
  store i32 %259, i32* %11, align 4
  br label %262

260:                                              ; preds = %251
  %261 = load i32, i32* @CHANNEL_G, align 4
  store i32 %261, i32* %11, align 4
  br label %262

262:                                              ; preds = %260, %258
  br label %263

263:                                              ; preds = %262, %250
  br label %264

264:                                              ; preds = %263, %227
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @CHANNEL_B, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @ZM_BIT_0, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %309, label %275

275:                                              ; preds = %268, %264
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @CHANNEL_G, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @ZM_BIT_1, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %309, label %286

286:                                              ; preds = %279, %275
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @CHANNEL_A, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %286
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @ZM_BIT_2, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %309, label %297

297:                                              ; preds = %290, %286
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @CHANNEL_HT20, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %297
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @ZM_BIT_3, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %302, %290, %279, %268
  %310 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %311 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %310, i32 0, i32 9
  %312 = load %struct.zsBssInfo*, %struct.zsBssInfo** %311, align 8
  store %struct.zsBssInfo* %312, %struct.zsBssInfo** %5, align 8
  br label %350

313:                                              ; preds = %302, %297
  %314 = load i32*, i32** %3, align 8
  %315 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %316 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %315, i32 0, i32 3
  %317 = load i64*, i64** %316, align 8
  %318 = call i64 @zfStaIsApInBlockingList(i32* %314, i64* %317)
  store i64 %318, i64* %8, align 8
  %319 = load i64, i64* @TRUE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %313
  %322 = load i32, i32* @ZM_LV_0, align 4
  %323 = call i32 @zm_msg0_mm(i32 %322, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %324 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  store %struct.zsBssInfo* %324, %struct.zsBssInfo** %6, align 8
  %325 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %326 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %325, i32 0, i32 9
  %327 = load %struct.zsBssInfo*, %struct.zsBssInfo** %326, align 8
  store %struct.zsBssInfo* %327, %struct.zsBssInfo** %5, align 8
  br label %350

328:                                              ; preds = %313
  %329 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %330 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @ZM_BIT_0, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %328
  %338 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  store %struct.zsBssInfo* %338, %struct.zsBssInfo** %6, align 8
  %339 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %340 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %339, i32 0, i32 10
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 6
  store i32 %341, i32* %344, align 8
  br label %354

345:                                              ; preds = %328
  br label %346

346:                                              ; preds = %345, %82, %75, %69
  %347 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %348 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %347, i32 0, i32 9
  %349 = load %struct.zsBssInfo*, %struct.zsBssInfo** %348, align 8
  store %struct.zsBssInfo* %349, %struct.zsBssInfo** %5, align 8
  br label %350

350:                                              ; preds = %346, %321, %309, %190, %148, %138
  %351 = load i64, i64* %7, align 8
  %352 = add nsw i64 %351, 1
  store i64 %352, i64* %7, align 8
  br label %22

353:                                              ; preds = %22
  br label %354

354:                                              ; preds = %353, %337
  %355 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %356 = icmp ne %struct.zsBssInfo* %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %354
  %358 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %359 = bitcast %struct.zsBssInfo* %358 to i8*
  %360 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %361 = bitcast %struct.zsBssInfo* %360 to i8*
  %362 = call i32 @zfwMemoryCopy(i8* %359, i8* %361, i32 72)
  %363 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  store %struct.zsBssInfo* %363, %struct.zsBssInfo** %6, align 8
  br label %364

364:                                              ; preds = %357, %354
  %365 = load i32*, i32** %3, align 8
  %366 = call i32 @zmw_leave_critical_section(i32* %365)
  %367 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  ret %struct.zsBssInfo* %367
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zfMemoryIsEqual(i64*, i32, i64) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfCheckAuthentication(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i64 @zfStaIsApInBlockingList(i32*, i64*) #1

declare dso_local i32 @zfwMemoryCopy(i8*, i8*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
