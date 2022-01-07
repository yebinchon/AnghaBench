; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddSta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddSta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32 (i32*, i8**, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i8*, i32, i32, i8*, i8*, i8* }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"STA type=\00", align 1
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@ZM_STATE_AUTH = common dso_local global i32 0, align 4
@ZM_STATE_PREAUTH = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_STATE_ASOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Not found\00", align 1
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"new STA index=\00", align 1
@ZM_NO_WEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfApAddSta(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @zmw_get_wlan_dev(i32* %17)
  %19 = call i32 (...) @zmw_declare_for_critical_section()
  %20 = load i32, i32* @ZM_LV_0, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @zm_msg1_mm(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @zmw_enter_critical_section(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @zfApFindSta(i32* %25, i32* %26)
  store i32 %27, i32* %15, align 4
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %193

29:                                               ; preds = %7
  %30 = load i32, i32* @ZM_LV_2, align 4
  %31 = call i32 @zm_msg0_mm(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ZM_STATE_AUTH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ZM_STATE_PREAUTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %40, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %51, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i8* %62, i8** %70, align 8
  br label %192

71:                                               ; preds = %35
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ZM_STATE_ASOC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %191

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ZM_STATE_AUTH, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %189

87:                                               ; preds = %75
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %88, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  store i32 %99, i32* %107, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 9
  store i8* %108, i8** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 4
  store i8* %119, i8** %127, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 8
  store i8* %128, i8** %136, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 7
  store i8* %137, i8** %145, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 3000
  br i1 %149, label %150, label %162

150:                                              ; preds = %87
  %151 = load i32*, i32** %8, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 6
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @zfRateCtrlInitCell(i32* %151, i32* %159, i8* %160, i32 1, i32 1)
  br label %174

162:                                              ; preds = %87
  %163 = load i32*, i32** %8, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 6
  %172 = load i8*, i8** %12, align 8
  %173 = call i32 @zfRateCtrlInitCell(i32* %163, i32* %171, i8* %172, i32 0, i32 1)
  br label %174

174:                                              ; preds = %162, %150
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i32 (i32*, i8**, i32)*, i32 (i32*, i8**, i32)** %176, align 8
  %178 = icmp ne i32 (i32*, i8**, i32)* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  %182 = load i32 (i32*, i8**, i32)*, i32 (i32*, i8**, i32)** %181, align 8
  %183 = load i32*, i32** %8, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = bitcast i32* %184 to i8**
  %186 = load i32, i32* %11, align 4
  %187 = call i32 %182(i32* %183, i8** %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %174
  br label %190

189:                                              ; preds = %75
  store i32 65535, i32* %15, align 4
  br label %190

190:                                              ; preds = %189, %188
  br label %191

191:                                              ; preds = %190, %71
  br label %192

192:                                              ; preds = %191, %39
  br label %287

193:                                              ; preds = %7
  %194 = load i32, i32* @ZM_LV_2, align 4
  %195 = call i32 @zm_msg0_mm(i32 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @ZM_STATE_AUTH, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @ZM_STATE_PREAUTH, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %286

203:                                              ; preds = %199, %193
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @zfApGetNewSta(i32* %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* @ZM_LV_1, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @zm_msg2_mm(i32 %206, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 65535
  br i1 %210, label %211, label %285

211:                                              ; preds = %203
  store i32 0, i32* %16, align 4
  br label %212

212:                                              ; preds = %233, %211
  %213 = load i32, i32* %16, align 4
  %214 = icmp slt i32 %213, 3
  br i1 %214, label %215, label %236

215:                                              ; preds = %212
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %220, i32* %232, align 4
  br label %233

233:                                              ; preds = %215
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %212

236:                                              ; preds = %212
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  store i32 %237, i32* %245, align 8
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  store i32 1, i32* %253, align 8
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 5
  store i32 %256, i32* %264, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 4
  store i8* %267, i8** %275, align 8
  %276 = load i32, i32* @ZM_NO_WEP, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 3
  store i32 %276, i32* %284, align 4
  br label %285

285:                                              ; preds = %236, %203
  br label %286

286:                                              ; preds = %285, %199
  br label %287

287:                                              ; preds = %286, %192
  %288 = load i32*, i32** %8, align 8
  %289 = call i32 @zmw_leave_critical_section(i32* %288)
  %290 = load i32, i32* %15, align 4
  ret i32 %290
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfRateCtrlInitCell(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @zfApGetNewSta(i32*) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
