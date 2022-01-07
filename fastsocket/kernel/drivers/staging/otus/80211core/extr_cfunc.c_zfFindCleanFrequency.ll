; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfFindCleanFrequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfFindCleanFrequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.zsBssInfo* }
%struct.zsBssInfo = type { i64, i32, %struct.zsBssInfo* }

@wd = common dso_local global %struct.TYPE_10__* null, align 8
@ZM_ADHOCBAND_B = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_G = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_BG = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_ABG = common dso_local global i64 0, align 8
@ZM_ADHOCBAND_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfFindCleanFrequency(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [15 x i64], align 16
  %14 = alloca [17 x i64], align 16
  %15 = alloca [15 x i64], align 16
  %16 = alloca [31 x i64], align 16
  %17 = alloca [31 x i64], align 16
  %18 = alloca %struct.zsBssInfo*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = bitcast [15 x i64]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 120, i1 false)
  %20 = bitcast [17 x i64]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 136, i1 false)
  %21 = bitcast [15 x i64]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 120, i1 false)
  %22 = bitcast [31 x i64]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 248, i1 false)
  %23 = bitcast [31 x i64]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 248, i1 false)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @zmw_get_wlan_dev(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.zsBssInfo*, %struct.zsBssInfo** %29, align 8
  store %struct.zsBssInfo* %30, %struct.zsBssInfo** %18, align 8
  %31 = icmp eq %struct.zsBssInfo* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @ZM_ADHOCBAND_B, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @ZM_ADHOCBAND_G, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ZM_ADHOCBAND_BG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40, %36, %32
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @zfChGetFirst2GhzChannel(i32* %49)
  store i64 %50, i64* %8, align 8
  br label %54

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @zfChGetFirst5GhzChannel(i32* %52)
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %3, align 8
  br label %307

56:                                               ; preds = %2
  %57 = call i32 (...) @zmw_declare_for_critical_section()
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @zmw_enter_critical_section(i32* %58)
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %106, %56
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 3000
  br i1 %76, label %77, label %91

77:                                               ; preds = %67
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds [15 x i64], [15 x i64]* %15, i64 0, i64 %87
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  br label %105

91:                                               ; preds = %67
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds [31 x i64], [31 x i64]* %17, i64 0, i64 %103
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %91, %77
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %6, align 8
  br label %60

109:                                              ; preds = %60
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @zmw_leave_critical_section(i32* %110)
  br label %112

112:                                              ; preds = %190, %109
  %113 = load %struct.zsBssInfo*, %struct.zsBssInfo** %18, align 8
  %114 = icmp ne %struct.zsBssInfo* %113, null
  br i1 %114, label %115, label %194

115:                                              ; preds = %112
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @ZM_ADHOCBAND_B, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @ZM_ADHOCBAND_G, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @ZM_ADHOCBAND_BG, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %159

131:                                              ; preds = %127, %123, %119, %115
  store i64 0, i64* %6, align 8
  br label %132

132:                                              ; preds = %155, %131
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 3
  %136 = icmp ule i64 %133, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load %struct.zsBssInfo*, %struct.zsBssInfo** %18, align 8
  %139 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = getelementptr inbounds [15 x i64], [15 x i64]* %15, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = load %struct.zsBssInfo*, %struct.zsBssInfo** %18, align 8
  %147 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %145, %137
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %6, align 8
  br label %132

158:                                              ; preds = %132
  br label %159

159:                                              ; preds = %158, %127
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @ZM_ADHOCBAND_A, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %163, %159
  store i64 0, i64* %6, align 8
  br label %168

168:                                              ; preds = %186, %167
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* %11, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load %struct.zsBssInfo*, %struct.zsBssInfo** %18, align 8
  %174 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds [31 x i64], [31 x i64]* %17, i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds [31 x i64], [31 x i64]* %16, i64 0, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %180, %172
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %6, align 8
  br label %168

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189, %163
  %191 = load %struct.zsBssInfo*, %struct.zsBssInfo** %18, align 8
  %192 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %191, i32 0, i32 2
  %193 = load %struct.zsBssInfo*, %struct.zsBssInfo** %192, align 8
  store %struct.zsBssInfo* %193, %struct.zsBssInfo** %18, align 8
  br label %112

194:                                              ; preds = %112
  %195 = load i64, i64* %5, align 8
  %196 = load i64, i64* @ZM_ADHOCBAND_B, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %210, label %198

198:                                              ; preds = %194
  %199 = load i64, i64* %5, align 8
  %200 = load i64, i64* @ZM_ADHOCBAND_G, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load i64, i64* %5, align 8
  %204 = load i64, i64* @ZM_ADHOCBAND_BG, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %5, align 8
  %208 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %249

210:                                              ; preds = %206, %202, %198, %194
  store i64 0, i64* %7, align 8
  br label %211

211:                                              ; preds = %241, %210
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* %9, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %244

215:                                              ; preds = %211
  %216 = load i64, i64* %7, align 8
  %217 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %7, align 8
  %220 = add i64 %219, 1
  %221 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %218, %222
  %224 = load i64, i64* %7, align 8
  %225 = add i64 %224, 2
  %226 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %223, %227
  %229 = load i64, i64* %7, align 8
  %230 = add i64 %229, 3
  %231 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %228, %232
  %234 = load i64, i64* %7, align 8
  %235 = add i64 %234, 4
  %236 = getelementptr inbounds [17 x i64], [17 x i64]* %14, i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %233, %237
  %239 = load i64, i64* %7, align 8
  %240 = getelementptr inbounds [15 x i64], [15 x i64]* %13, i64 0, i64 %239
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %215
  %242 = load i64, i64* %7, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %7, align 8
  br label %211

244:                                              ; preds = %211
  %245 = load i32*, i32** %4, align 8
  %246 = getelementptr inbounds [15 x i64], [15 x i64]* %13, i64 0, i64 0
  %247 = load i64, i64* %9, align 8
  %248 = call i64 @zfFindMinimumUtilizationChannelIndex(i32* %245, i64* %246, i64 %247)
  store i64 %248, i64* %10, align 8
  br label %249

249:                                              ; preds = %244, %206
  %250 = load i64, i64* %5, align 8
  %251 = load i64, i64* @ZM_ADHOCBAND_A, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load i64, i64* %5, align 8
  %255 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %253, %249
  %258 = load i32*, i32** %4, align 8
  %259 = getelementptr inbounds [31 x i64], [31 x i64]* %16, i64 0, i64 0
  %260 = load i64, i64* %11, align 8
  %261 = call i64 @zfFindMinimumUtilizationChannelIndex(i32* %258, i64* %259, i64 %260)
  store i64 %261, i64* %12, align 8
  br label %262

262:                                              ; preds = %257, %253
  %263 = load i64, i64* %5, align 8
  %264 = load i64, i64* @ZM_ADHOCBAND_B, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %274, label %266

266:                                              ; preds = %262
  %267 = load i64, i64* %5, align 8
  %268 = load i64, i64* @ZM_ADHOCBAND_G, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = load i64, i64* %5, align 8
  %272 = load i64, i64* @ZM_ADHOCBAND_BG, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %270, %266, %262
  %275 = load i64, i64* %10, align 8
  %276 = getelementptr inbounds [15 x i64], [15 x i64]* %15, i64 0, i64 %275
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %3, align 8
  br label %307

278:                                              ; preds = %270
  %279 = load i64, i64* %5, align 8
  %280 = load i64, i64* @ZM_ADHOCBAND_A, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = load i64, i64* %12, align 8
  %284 = getelementptr inbounds [31 x i64], [31 x i64]* %17, i64 0, i64 %283
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %3, align 8
  br label %307

286:                                              ; preds = %278
  %287 = load i64, i64* %5, align 8
  %288 = load i64, i64* @ZM_ADHOCBAND_ABG, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %286
  %291 = load i64, i64* %10, align 8
  %292 = getelementptr inbounds [15 x i64], [15 x i64]* %13, i64 0, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %12, align 8
  %295 = getelementptr inbounds [31 x i64], [31 x i64]* %16, i64 0, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = icmp ule i64 %293, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %290
  %299 = load i64, i64* %10, align 8
  %300 = getelementptr inbounds [15 x i64], [15 x i64]* %15, i64 0, i64 %299
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %3, align 8
  br label %307

302:                                              ; preds = %290
  %303 = load i64, i64* %12, align 8
  %304 = getelementptr inbounds [31 x i64], [31 x i64]* %17, i64 0, i64 %303
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %3, align 8
  br label %307

306:                                              ; preds = %286
  store i64 2412, i64* %3, align 8
  br label %307

307:                                              ; preds = %306, %302, %298, %282, %274, %54
  %308 = load i64, i64* %3, align 8
  ret i64 %308
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i64 @zfChGetFirst2GhzChannel(i32*) #2

declare dso_local i64 @zfChGetFirst5GhzChannel(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i64 @zfFindMinimumUtilizationChannelIndex(i32*, i64*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
