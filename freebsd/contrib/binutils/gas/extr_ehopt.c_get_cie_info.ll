; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_ehopt.c_get_cie_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_ehopt.c_get_cie_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie_info = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }

@now_seg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cie_info*)* @get_cie_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cie_info(%struct.cie_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cie_info*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cie_info* %0, %struct.cie_info** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @now_seg, align 4
  %12 = call %struct.TYPE_8__* @seg_info(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %4, align 8
  %17 = load i32, i32* @now_seg, align 4
  %18 = call %struct.TYPE_8__* @seg_info(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* @now_seg, align 4
  %24 = call i8* @segment_name(i32 %23)
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i8 -1, i8* %7, align 1
  br label %29

28:                                               ; preds = %1
  store i8 0, i8* %7, align 1
  br label %29

29:                                               ; preds = %28, %27
  store i32 4, i32* %6, align 4
  br label %30

30:                                               ; preds = %41, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %4, align 8
  br label %30

50:                                               ; preds = %39
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, null
  br i1 %52, label %111, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %111, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %111, label %72

72:                                               ; preds = %60
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* %7, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %111, label %85

85:                                               ; preds = %72
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* %7, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %111, label %98

98:                                               ; preds = %85
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* %7, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %98, %85, %72, %60, %53, %50
  store i32 0, i32* %2, align 4
  br label %368

112:                                              ; preds = %98
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %126, %112
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = icmp ne %struct.TYPE_6__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ false, %115 ], [ %123, %118 ]
  br i1 %125, label %126, label %135

126:                                              ; preds = %124
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %4, align 8
  br label %115

135:                                              ; preds = %124
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = icmp eq %struct.TYPE_6__* %136, null
  br i1 %137, label %155, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %141, %142
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %155, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %145, %138, %135
  store i32 0, i32* %2, align 4
  br label %368

156:                                              ; preds = %145
  store i32 0, i32* %9, align 4
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %156, %230
  br label %160

160:                                              ; preds = %171, %159
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = icmp ne %struct.TYPE_6__* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %164, %167
  br label %169

169:                                              ; preds = %163, %160
  %170 = phi i1 [ false, %160 ], [ %168, %163 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %175, %174
  store i32 %176, i32* %6, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  store %struct.TYPE_6__* %179, %struct.TYPE_6__** %4, align 8
  br label %160

180:                                              ; preds = %169
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = icmp eq %struct.TYPE_6__* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %368

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %220, %184
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br label %201

201:                                              ; preds = %191, %185
  %202 = phi i1 [ false, %185 ], [ %200, %191 ]
  br i1 %202, label %203, label %223

203:                                              ; preds = %201
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = icmp ult i64 %205, 9
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %216
  store i8 %214, i8* %217, align 1
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %220

220:                                              ; preds = %207, %203
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %185

223:                                              ; preds = %201
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %231

230:                                              ; preds = %223
  br label %159

231:                                              ; preds = %229
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %245, %231
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = icmp ne %struct.TYPE_6__* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp sge i32 %238, %241
  br label %243

243:                                              ; preds = %237, %234
  %244 = phi i1 [ false, %234 ], [ %242, %237 ]
  br i1 %244, label %245, label %254

245:                                              ; preds = %243
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sub nsw i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  store %struct.TYPE_6__* %253, %struct.TYPE_6__** %4, align 8
  br label %234

254:                                              ; preds = %243
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = icmp eq %struct.TYPE_6__* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 0, i32* %2, align 4
  br label %368

258:                                              ; preds = %254
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %260
  store i8 0, i8* %261, align 1
  %262 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %258
  br label %343

267:                                              ; preds = %258
  %268 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %269 = call i64 @strcmp(i8* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %335

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %291, %271
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %274 = icmp ne %struct.TYPE_7__* %273, null
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 3
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = icmp ne %struct.TYPE_6__* %278, %279
  br i1 %280, label %287, label %281

281:                                              ; preds = %275
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %284, %285
  br label %287

287:                                              ; preds = %281, %275
  %288 = phi i1 [ true, %275 ], [ %286, %281 ]
  br label %289

289:                                              ; preds = %287, %272
  %290 = phi i1 [ false, %272 ], [ %288, %287 ]
  br i1 %290, label %291, label %295

291:                                              ; preds = %289
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  store %struct.TYPE_7__* %294, %struct.TYPE_7__** %5, align 8
  br label %272

295:                                              ; preds = %289
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %297 = icmp eq %struct.TYPE_7__* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 4
  store i32 %300, i32* %6, align 4
  br label %309

301:                                              ; preds = %295
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %304
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %6, align 4
  br label %309

309:                                              ; preds = %301, %298
  br label %310

310:                                              ; preds = %321, %309
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = icmp ne %struct.TYPE_6__* %311, null
  br i1 %312, label %313, label %319

313:                                              ; preds = %310
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp sge i32 %314, %317
  br label %319

319:                                              ; preds = %313, %310
  %320 = phi i1 [ false, %310 ], [ %318, %313 ]
  br i1 %320, label %321, label %330

321:                                              ; preds = %319
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sub nsw i32 %325, %324
  store i32 %326, i32* %6, align 4
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  store %struct.TYPE_6__* %329, %struct.TYPE_6__** %4, align 8
  br label %310

330:                                              ; preds = %319
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %332 = icmp eq %struct.TYPE_6__* %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  store i32 0, i32* %2, align 4
  br label %368

334:                                              ; preds = %330
  br label %342

335:                                              ; preds = %267
  %336 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 122
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  store i32 0, i32* %2, align 4
  br label %368

341:                                              ; preds = %335
  br label %342

342:                                              ; preds = %341, %334
  br label %343

343:                                              ; preds = %342, %266
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = and i32 %351, 255
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %10, align 4
  %354 = and i32 %353, 128
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %343
  store i32 0, i32* %10, align 4
  br label %357

357:                                              ; preds = %356, %343
  %358 = load i32, i32* %10, align 4
  %359 = load %struct.cie_info*, %struct.cie_info** %3, align 8
  %360 = getelementptr inbounds %struct.cie_info, %struct.cie_info* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  %361 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 122
  %365 = zext i1 %364 to i32
  %366 = load %struct.cie_info*, %struct.cie_info** %3, align 8
  %367 = getelementptr inbounds %struct.cie_info, %struct.cie_info* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 4
  store i32 1, i32* %2, align 4
  br label %368

368:                                              ; preds = %357, %340, %333, %257, %183, %155, %111
  %369 = load i32, i32* %2, align 4
  ret i32 %369
}

declare dso_local %struct.TYPE_8__* @seg_info(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @segment_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
