; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanEnable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32 (i32*, i32, i32)*, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i8**, i64*, i32*, i64*, i32, i32*, i64*, i64*, i64*, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i64, i32, i32 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown Mode...Skip...\00", align 1
@ZM_MODE_AP = common dso_local global i32 0, align 4
@ZM_MAX_AP_SUPPORT = common dso_local global i32 0, align 4
@ZM_WLAN_TYPE_PURE_B = common dso_local global i64 0, align 8
@ZM_SCAN_MGR_SCAN_INTERNAL = common dso_local global i32 0, align 4
@ZM_SCAN_MGR_SCAN_EXTERNAL = common dso_local global i32 0, align 4
@ZM_ENCRYPTION_TKIP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"countermeasures disallow association\00", align 1
@ZM_AUTH_MODE_WPA2PSK = common dso_local global i32 0, align 4
@ZM_HAL_80211_MODE_IBSS_WPA2PSK = common dso_local global i32 0, align 4
@ZM_HAL_80211_MODE_IBSS_GENERAL = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ZM_MODE_IBSS\00", align 1
@ZM_HAL_80211_MODE_STA = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_CONNECT = common dso_local global i32 0, align 4
@ZM_STA_STATE_CONNECTED = common dso_local global i32 0, align 4
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@ZM_WLAN_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfWlanEnable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 24, i1 false)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZM_MODE_UNKNOWN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %511

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZM_MODE_AP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %328

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @zfwGetVapId(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %190

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @zfApInitStaTbl(i32* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 15, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 255, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i32 15, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 13
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 12
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 600, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 60, i32* %57, align 8
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %77, %30
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ZM_MAX_AP_SUPPORT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 11
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 11
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %62
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 12
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 12
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 12
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp sle i32 %102, 32
  br i1 %103, label %104, label %152

104:                                              ; preds = %80
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 12
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %152

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 12
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 11
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %114, i32* %119, align 4
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %145, %110
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %120
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 12
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 %135, i8* %144, align 1
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %120

148:                                              ; preds = %120
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 12
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %104, %80
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 1, i32* %165, align 4
  br label %172

166:                                              ; preds = %152
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 11
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 17, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 11
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 7
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ZM_WLAN_TYPE_PURE_B, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %172
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 11
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, 1024
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %181, %172
  br label %311

190:                                              ; preds = %25
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = or i32 1, %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 11
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 12
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp sle i32 %201, 32
  br i1 %202, label %203, label %257

203:                                              ; preds = %190
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 12
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %257

209:                                              ; preds = %203
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 12
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 11
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %213, i32* %221, align 4
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %250, %209
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 12
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %223, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %222
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 12
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 11
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 4
  %241 = load i8**, i8*** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8*, i8** %241, i64 %244
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  store i8 %237, i8* %249, align 1
  br label %250

250:                                              ; preds = %229
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %222

253:                                              ; preds = %222
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 12
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 0, i32* %256, align 8
  br label %257

257:                                              ; preds = %253, %203, %190
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 11
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 5
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %261, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %257
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 11
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 6
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  store i32 1025, i32* %276, align 4
  br label %286

277:                                              ; preds = %257
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 11
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 6
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 1041, i32* %285, align 4
  br label %286

286:                                              ; preds = %277, %268
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 12
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 11
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 9
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %290, i32* %298, align 4
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 12
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 11
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 5
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %306, i64 %309
  store i64 %302, i64* %310, align 8
  br label %311

311:                                              ; preds = %286, %189
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 11
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = load i32*, i32** %3, align 8
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 10
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @zfCoreSetFrequency(i32* %317, i32 %320)
  %322 = load i32*, i32** %3, align 8
  %323 = call i32 @zfInitMacApMode(i32* %322)
  %324 = load i32*, i32** %3, align 8
  %325 = call i32 @zfApSetProtectionMode(i32* %324, i32 0)
  %326 = load i32*, i32** %3, align 8
  %327 = call i32 @zfApSendBeacon(i32* %326)
  br label %430

328:                                              ; preds = %19
  %329 = load i32*, i32** %3, align 8
  %330 = load i32, i32* @ZM_SCAN_MGR_SCAN_INTERNAL, align 4
  %331 = call i32 @zfScanMgrScanStop(i32* %329, i32 %330)
  %332 = load i32*, i32** %3, align 8
  %333 = load i32, i32* @ZM_SCAN_MGR_SCAN_EXTERNAL, align 4
  %334 = call i32 @zfScanMgrScanStop(i32* %332, i32 %333)
  %335 = load i32*, i32** %3, align 8
  %336 = call i32 @zmw_enter_critical_section(i32* %335)
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 8
  store i64 0, i64* %339, align 8
  %340 = load i32*, i32** %3, align 8
  %341 = call i32 @zfStaInitOppositeInfo(i32* %340)
  %342 = load i32*, i32** %3, align 8
  %343 = call i32 @zmw_leave_critical_section(i32* %342)
  %344 = load i32*, i32** %3, align 8
  %345 = call i32 @zfStaResetStatus(i32* %344, i32 0)
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %385

351:                                              ; preds = %328
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp eq i64 %355, %359
  br i1 %360, label %361, label %385

361:                                              ; preds = %351
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 8
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i64 @zfMemoryIsEqual(i32 %365, i32 %369, i64 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %361
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ZM_ENCRYPTION_TKIP, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %376
  %384 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %429

385:                                              ; preds = %376, %361, %351, %328
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  switch i32 %388, label %427 [
    i32 130, label %389
    i32 129, label %409
    i32 128, label %415
  ]

389:                                              ; preds = %385
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @ZM_AUTH_MODE_WPA2PSK, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  %397 = load i32*, i32** %3, align 8
  %398 = load i32, i32* @ZM_HAL_80211_MODE_IBSS_WPA2PSK, align 4
  %399 = call i32 @zfHpSetApStaMode(i32* %397, i32 %398)
  br label %404

400:                                              ; preds = %389
  %401 = load i32*, i32** %3, align 8
  %402 = load i32, i32* @ZM_HAL_80211_MODE_IBSS_GENERAL, align 4
  %403 = call i32 @zfHpSetApStaMode(i32* %401, i32 %402)
  br label %404

404:                                              ; preds = %400, %396
  %405 = load i32, i32* @ZM_LV_0, align 4
  %406 = call i32 @zm_msg0_mm(i32 %405, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %407 = load i32*, i32** %3, align 8
  %408 = call i32 @zfIbssConnectNetwork(i32* %407)
  br label %428

409:                                              ; preds = %385
  %410 = load i32*, i32** %3, align 8
  %411 = load i32, i32* @ZM_HAL_80211_MODE_STA, align 4
  %412 = call i32 @zfHpSetApStaMode(i32* %410, i32 %411)
  %413 = load i32*, i32** %3, align 8
  %414 = call i32 @zfInfraConnectNetwork(i32* %413)
  br label %428

415:                                              ; preds = %385
  %416 = load i32*, i32** %3, align 8
  %417 = load i32, i32* @ZM_HAL_80211_MODE_STA, align 4
  %418 = call i32 @zfHpSetApStaMode(i32* %416, i32 %417)
  %419 = load i32*, i32** %3, align 8
  %420 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %421 = call i32 @zfUpdateBssid(i32* %419, i32* %420)
  %422 = load i32*, i32** %3, align 8
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 10
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @zfCoreSetFrequency(i32* %422, i32 %425)
  br label %428

427:                                              ; preds = %385
  br label %428

428:                                              ; preds = %427, %415, %409, %404
  br label %429

429:                                              ; preds = %428, %383
  br label %430

430:                                              ; preds = %429, %311
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = icmp eq i32 %433, 128
  br i1 %434, label %435, label %457

435:                                              ; preds = %430
  %436 = load i32*, i32** %3, align 8
  %437 = call i32 @zfWlanReset(i32* %436)
  %438 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 9
  %440 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %439, align 8
  %441 = icmp ne i32 (i32*, i32, i32)* %440, null
  br i1 %441, label %442, label %453

442:                                              ; preds = %435
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 9
  %445 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %444, align 8
  %446 = load i32*, i32** %3, align 8
  %447 = load i32, i32* @ZM_STATUS_MEDIA_CONNECT, align 4
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = call i32 %445(i32* %446, i32 %447, i32 %451)
  br label %453

453:                                              ; preds = %442, %435
  %454 = load i32*, i32** %3, align 8
  %455 = load i32, i32* @ZM_STA_STATE_CONNECTED, align 4
  %456 = call i32 @zfChangeAdapterState(i32* %454, i32 %455)
  br label %457

457:                                              ; preds = %453, %430
  %458 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @ZM_MODE_AP, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %480

463:                                              ; preds = %457
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 9
  %466 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %465, align 8
  %467 = icmp ne i32 (i32*, i32, i32)* %466, null
  br i1 %467, label %468, label %479

468:                                              ; preds = %463
  %469 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 9
  %471 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %470, align 8
  %472 = load i32*, i32** %3, align 8
  %473 = load i32, i32* @ZM_STATUS_MEDIA_CONNECT, align 4
  %474 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i32 0, i32 8
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = call i32 %471(i32* %472, i32 %473, i32 %477)
  br label %479

479:                                              ; preds = %468, %463
  br label %480

480:                                              ; preds = %479, %457
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 3
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %502

486:                                              ; preds = %480
  %487 = load i32*, i32** %3, align 8
  %488 = call i32 @zfHpCapability(i32* %487)
  %489 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %490 = and i32 %488, %489
  store i32 %490, i32* %7, align 4
  %491 = load i32, i32* %7, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 5
  store i32 135000, i32* %495, align 4
  br label %499

496:                                              ; preds = %486
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 5
  store i32 270000, i32* %498, align 4
  br label %499

499:                                              ; preds = %496, %493
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 6
  store i32 270000, i32* %501, align 8
  br label %507

502:                                              ; preds = %480
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 5
  store i32 54000, i32* %504, align 4
  %505 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 6
  store i32 54000, i32* %506, align 8
  br label %507

507:                                              ; preds = %502, %499
  %508 = load i32, i32* @ZM_WLAN_STATE_ENABLED, align 4
  %509 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i32 0, i32 7
  store i32 %508, i32* %510, align 4
  store i32 0, i32* %2, align 4
  br label %511

511:                                              ; preds = %507, %17
  %512 = load i32, i32* %2, align 4
  ret i32 %512
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zm_debug_msg0(i8*) #2

declare dso_local i32 @zfwGetVapId(i32*) #2

declare dso_local i32 @zfApInitStaTbl(i32*) #2

declare dso_local i32 @zfCoreSetFrequency(i32*, i32) #2

declare dso_local i32 @zfInitMacApMode(i32*) #2

declare dso_local i32 @zfApSetProtectionMode(i32*, i32) #2

declare dso_local i32 @zfApSendBeacon(i32*) #2

declare dso_local i32 @zfScanMgrScanStop(i32*, i32) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zfStaInitOppositeInfo(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i32 @zfStaResetStatus(i32*, i32) #2

declare dso_local i64 @zfMemoryIsEqual(i32, i32, i64) #2

declare dso_local i32 @zfHpSetApStaMode(i32*, i32) #2

declare dso_local i32 @zm_msg0_mm(i32, i8*) #2

declare dso_local i32 @zfIbssConnectNetwork(i32*) #2

declare dso_local i32 @zfInfraConnectNetwork(i32*) #2

declare dso_local i32 @zfUpdateBssid(i32*, i32*) #2

declare dso_local i32 @zfWlanReset(i32*) #2

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #2

declare dso_local i32 @zfHpCapability(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
