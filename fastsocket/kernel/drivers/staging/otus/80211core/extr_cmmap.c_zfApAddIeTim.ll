; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddIeTim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddIeTim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i64*, i64*, i64, i64, i32, %struct.TYPE_4__*, i32** }
%struct.TYPE_4__ = type { i64 }

@ZM_UNI_ARRAY_SIZE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_TIM = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"aid=\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Send PS frame which STA no longer in PS mode\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Free garbage PS frame\00", align 1
@ZM_LV_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"bm=\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"highestByte=\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"timBcmcBit[]=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfApAddIeTim(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [9 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [3 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %22 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %19, align 8
  %25 = alloca i32*, i64 %23, align 16
  store i64 %23, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @zmw_get_wlan_dev(i32* %26)
  %28 = call i32 (...) @zmw_declare_for_critical_section()
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* @ZM_WLAN_EID_TIM, align 8
  %34 = call i32 @zmw_tx_buf_writeb(i32* %29, i32* %30, i64 %31, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  store i64 %35, i64* %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @zmw_tx_buf_writeb(i32* %52, i32* %53, i64 %54, i64 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @zmw_tx_buf_writeb(i32* %60, i32* %61, i64 %62, i64 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = call i32 @zmw_tx_buf_writeb(i32* %68, i32* %69, i64 %70, i64 0)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %51
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @zmw_enter_critical_section(i32* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %86, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @zmw_leave_critical_section(i32* %103)
  br label %112

105:                                              ; preds = %51
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %77
  store i64 0, i64* %11, align 8
  br label %113

113:                                              ; preds = %119, %112
  %114 = load i64, i64* %11, align 8
  %115 = icmp ult i64 %114, 9
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %11, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %11, align 8
  br label %113

122:                                              ; preds = %113
  store i64 0, i64* %10, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @zmw_enter_critical_section(i32* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %226, %122
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %130, %134
  br i1 %135, label %136, label %227

136:                                              ; preds = %129
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 7
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %18, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32*, i32** %18, align 8
  %146 = call i64 @zmw_tx_buf_readh(i32* %144, i32* %145, i32 0)
  %147 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %146, i64* %147, align 16
  %148 = load i32*, i32** %5, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = call i64 @zmw_tx_buf_readh(i32* %148, i32* %149, i32 2)
  %151 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %150, i64* %151, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = call i64 @zmw_tx_buf_readh(i32* %152, i32* %153, i32 4)
  %155 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %154, i64* %155, align 16
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %158 = call i64 @zfApFindSta(i32* %156, i64* %157)
  store i64 %158, i64* %15, align 8
  %159 = icmp ne i64 %158, 65535
  br i1 %159, label %160, label %216

160:                                              ; preds = %136
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %204

170:                                              ; preds = %160
  %171 = load i32, i32* @ZM_LV_0, align 4
  %172 = load i64, i64* %15, align 8
  %173 = call i32 @zm_msg1_mm(i32 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %172)
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %15, align 8
  %176 = load i64, i64* %15, align 8
  %177 = icmp ule i64 %176, 64
  %178 = zext i1 %177 to i32
  %179 = call i32 @zm_assert(i32 %178)
  %180 = load i64, i64* %15, align 8
  %181 = and i64 %180, 7
  %182 = trunc i64 %181 to i32
  %183 = shl i32 1, %182
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %16, align 8
  %185 = load i64, i64* %15, align 8
  %186 = lshr i64 %185, 3
  store i64 %186, i64* %17, align 8
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* %17, align 8
  %189 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = or i64 %190, %187
  store i64 %191, i64* %189, align 8
  %192 = load i64, i64* %17, align 8
  %193 = load i64, i64* %10, align 8
  %194 = icmp ugt i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %170
  %196 = load i64, i64* %17, align 8
  store i64 %196, i64* %10, align 8
  br label %197

197:                                              ; preds = %195, %170
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, 1
  %200 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = and i64 %199, %202
  store i64 %203, i64* %13, align 8
  br label %215

204:                                              ; preds = %160
  %205 = load i32, i32* @ZM_LV_0, align 4
  %206 = call i32 @zm_msg0_mm(i32 %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %207 = load i32*, i32** %5, align 8
  %208 = load i64, i64* %13, align 8
  %209 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %210 = call i32 @zfApRemoveFromPsQueue(i32* %207, i64 %208, i64* %209)
  %211 = load i32*, i32** %18, align 8
  %212 = load i64, i64* %21, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %21, align 8
  %214 = getelementptr inbounds i32*, i32** %25, i64 %212
  store i32* %211, i32** %214, align 8
  br label %215

215:                                              ; preds = %204, %197
  br label %226

216:                                              ; preds = %136
  %217 = load i32, i32* @ZM_LV_0, align 4
  %218 = call i32 @zm_msg0_mm(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32*, i32** %5, align 8
  %220 = load i64, i64* %13, align 8
  %221 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %222 = call i32 @zfApRemoveFromPsQueue(i32* %219, i64 %220, i64* %221)
  %223 = load i32*, i32** %5, align 8
  %224 = load i32*, i32** %18, align 8
  %225 = call i32 @zfwBufFree(i32* %223, i32* %224, i32 0)
  br label %226

226:                                              ; preds = %216, %215
  br label %129

227:                                              ; preds = %129
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @zmw_leave_critical_section(i32* %228)
  %230 = load i32*, i32** %5, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %236 = call i32 @zfQueueGenerateUapsdTim(i32* %230, i32 %234, i64* %235, i64* %10)
  %237 = load i32, i32* @ZM_LV_3, align 4
  %238 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %239 = load i64, i64* %238, align 16
  %240 = call i32 @zm_msg1_mm(i32 %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %239)
  %241 = load i32, i32* @ZM_LV_3, align 4
  %242 = load i64, i64* %10, align 8
  %243 = call i32 @zm_msg1_mm(i32 %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %242)
  %244 = load i32, i32* @ZM_LV_3, align 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = call i32 @zm_msg1_mm(i32 %244, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %252)
  %254 = load i32*, i32** %5, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = load i64, i64* %7, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %7, align 8
  %258 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %259 = load i64, i64* %258, align 16
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* %8, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = or i64 %259, %267
  %269 = call i32 @zmw_tx_buf_writeb(i32* %254, i32* %255, i64 %256, i64 %268)
  store i64 0, i64* %11, align 8
  br label %270

270:                                              ; preds = %284, %227
  %271 = load i64, i64* %11, align 8
  %272 = load i64, i64* %10, align 8
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %287

274:                                              ; preds = %270
  %275 = load i32*, i32** %5, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = load i64, i64* %7, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %7, align 8
  %279 = load i64, i64* %11, align 8
  %280 = add i64 %279, 1
  %281 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 %280
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @zmw_tx_buf_writeb(i32* %275, i32* %276, i64 %277, i64 %282)
  br label %284

284:                                              ; preds = %274
  %285 = load i64, i64* %11, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %11, align 8
  br label %270

287:                                              ; preds = %270
  %288 = load i32*, i32** %5, align 8
  %289 = load i32*, i32** %6, align 8
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* %10, align 8
  %292 = add i64 %291, 4
  %293 = call i32 @zmw_tx_buf_writeb(i32* %288, i32* %289, i64 %290, i64 %292)
  store i64 0, i64* %11, align 8
  br label %294

294:                                              ; preds = %304, %287
  %295 = load i64, i64* %11, align 8
  %296 = load i64, i64* %21, align 8
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32*, i32** %5, align 8
  %300 = load i64, i64* %11, align 8
  %301 = getelementptr inbounds i32*, i32** %25, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @zfPutVtxq(i32* %299, i32* %302)
  br label %304

304:                                              ; preds = %298
  %305 = load i64, i64* %11, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %11, align 8
  br label %294

307:                                              ; preds = %294
  %308 = load i32*, i32** %5, align 8
  %309 = call i32 @zfPushVtxq(i32* %308)
  %310 = load i64, i64* %7, align 8
  %311 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %311)
  ret i64 %310
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i64, i64) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i64 @zmw_tx_buf_readh(i32*, i32*, i32) #2

declare dso_local i64 @zfApFindSta(i32*, i64*) #2

declare dso_local i32 @zm_msg1_mm(i32, i8*, i64) #2

declare dso_local i32 @zm_assert(i32) #2

declare dso_local i32 @zm_msg0_mm(i32, i8*) #2

declare dso_local i32 @zfApRemoveFromPsQueue(i32*, i64, i64*) #2

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #2

declare dso_local i32 @zfQueueGenerateUapsdTim(i32*, i32, i64*, i64*) #2

declare dso_local i32 @zfPutVtxq(i32*, i32*) #2

declare dso_local i32 @zfPushVtxq(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
