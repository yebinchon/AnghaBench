; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_zlib_deflate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deflate.c_zlib_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 (%struct.TYPE_14__*, i32)* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32*, i32* }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@FINISH_STATE = common dso_local global i64 0, align 8
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@INIT_STATE = common dso_local global i64 0, align 8
@Z_DEFLATED = common dso_local global i32 0, align 4
@PRESET_DICT = common dso_local global i32 0, align 4
@BUSY_STATE = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@configuration_table = common dso_local global %struct.TYPE_12__* null, align 8
@finish_started = common dso_local global i64 0, align 8
@finish_done = common dso_local global i64 0, align 8
@need_more = common dso_local global i64 0, align 8
@block_done = common dso_local global i64 0, align 8
@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@Z_PACKET_FLUSH = common dso_local global i32 0, align 4
@Z_FULL_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bug2\00", align 1
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_deflate(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @Z_FINISH, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %18, %13, %2
  %26 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %332

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FINISH_STATE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @Z_FINISH, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %36
  %52 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %332

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %332

60:                                               ; preds = %53
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INIT_STATE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %137

75:                                               ; preds = %60
  %76 = load i32, i32* @Z_DEFLATED, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 8
  %81 = shl i32 %80, 4
  %82 = add nsw i32 %76, %81
  %83 = shl i32 %82, 8
  store i32 %83, i32* %8, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 3
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i32 3, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 6
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @PRESET_DICT, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %92
  %106 = load i32, i32* %8, align 4
  %107 = srem i32 %106, 31
  %108 = sub nsw i32 31, %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i64, i64* @BUSY_STATE, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @putShortMSB(%struct.TYPE_14__* %114, i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %105
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 16
  %127 = call i32 @putShortMSB(%struct.TYPE_14__* %122, i32 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 65535
  %133 = call i32 @putShortMSB(%struct.TYPE_14__* %128, i32 %132)
  br label %134

134:                                              ; preds = %121, %105
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %60
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = call i32 @flush_pending(%struct.TYPE_13__* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  store i32 -1, i32* %151, align 8
  %152 = load i32, i32* @Z_OK, align 4
  store i32 %152, i32* %3, align 4
  br label %332

153:                                              ; preds = %142
  br label %170

154:                                              ; preds = %137
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @Z_FINISH, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %168, i32* %3, align 4
  br label %332

169:                                              ; preds = %163, %159, %154
  br label %170

170:                                              ; preds = %169, %153
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @FINISH_STATE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %182, i32* %3, align 4
  br label %332

183:                                              ; preds = %176, %170
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @Z_NO_FLUSH, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %286

197:                                              ; preds = %193
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @FINISH_STATE, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %286

203:                                              ; preds = %197, %188, %183
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** @configuration_table, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i64 (%struct.TYPE_14__*, i32)*, i64 (%struct.TYPE_14__*, i32)** %210, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = load i32, i32* %5, align 4
  %214 = call i64 %211(%struct.TYPE_14__* %212, i32 %213)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @finish_started, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %203
  %219 = load i64, i64* %10, align 8
  %220 = load i64, i64* @finish_done, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %218, %203
  %223 = load i64, i64* @FINISH_STATE, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %222, %218
  %227 = load i64, i64* %10, align 8
  %228 = load i64, i64* @need_more, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* @finish_started, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230, %226
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  store i32 -1, i32* %241, align 8
  br label %242

242:                                              ; preds = %239, %234
  %243 = load i32, i32* @Z_OK, align 4
  store i32 %243, i32* %3, align 4
  br label %332

244:                                              ; preds = %230
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @block_done, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %285

248:                                              ; preds = %244
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = call i32 @zlib_tr_align(%struct.TYPE_14__* %253)
  br label %273

255:                                              ; preds = %248
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @Z_PACKET_FLUSH, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = call i32 @zlib_tr_stored_type_only(%struct.TYPE_14__* %260)
  br label %272

262:                                              ; preds = %255
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %264 = call i32 @zlib_tr_stored_block(%struct.TYPE_14__* %263, i8* null, i64 0, i32 0)
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* @Z_FULL_FLUSH, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %270 = call i32 @CLEAR_HASH(%struct.TYPE_14__* %269)
  br label %271

271:                                              ; preds = %268, %262
  br label %272

272:                                              ; preds = %271, %259
  br label %273

273:                                              ; preds = %272, %252
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %275 = call i32 @flush_pending(%struct.TYPE_13__* %274)
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  store i32 -1, i32* %282, align 8
  %283 = load i32, i32* @Z_OK, align 4
  store i32 %283, i32* %3, align 4
  br label %332

284:                                              ; preds = %273
  br label %285

285:                                              ; preds = %284, %244
  br label %286

286:                                              ; preds = %285, %197, %193
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp sgt i64 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @Assert(i32 %291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* @Z_FINISH, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %286
  %297 = load i32, i32* @Z_OK, align 4
  store i32 %297, i32* %3, align 4
  br label %332

298:                                              ; preds = %286
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* @Z_STREAM_END, align 4
  store i32 %304, i32* %3, align 4
  br label %332

305:                                              ; preds = %298
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = ashr i32 %309, 16
  %311 = call i32 @putShortMSB(%struct.TYPE_14__* %306, i32 %310)
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, 65535
  %317 = call i32 @putShortMSB(%struct.TYPE_14__* %312, i32 %316)
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %319 = call i32 @flush_pending(%struct.TYPE_13__* %318)
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 7
  store i32 -1, i32* %321, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 5
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %305
  %327 = load i32, i32* @Z_OK, align 4
  br label %330

328:                                              ; preds = %305
  %329 = load i32, i32* @Z_STREAM_END, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  store i32 %331, i32* %3, align 4
  br label %332

332:                                              ; preds = %330, %303, %296, %280, %242, %181, %167, %149, %58, %51, %25
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @putShortMSB(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @flush_pending(%struct.TYPE_13__*) #1

declare dso_local i32 @zlib_tr_align(%struct.TYPE_14__*) #1

declare dso_local i32 @zlib_tr_stored_type_only(%struct.TYPE_14__*) #1

declare dso_local i32 @zlib_tr_stored_block(%struct.TYPE_14__*, i8*, i64, i32) #1

declare dso_local i32 @CLEAR_HASH(%struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
