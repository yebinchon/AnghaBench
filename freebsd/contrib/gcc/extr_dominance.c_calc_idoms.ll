; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_calc_idoms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_calc_idoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.dom_info = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }

@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_13__* null, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_13__* null, align 8
@last_basic_block = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_info*, i32)* @calc_idoms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_idoms(%struct.dom_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.dom_info* %0, %struct.dom_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @EXIT_BLOCK_PTR, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ENTRY_BLOCK_PTR, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %9, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %26 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %237, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %246

31:                                               ; preds = %28
  %32 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %33 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %32, i32 0, i32 8
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %34, i64 %36
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %12, align 8
  %39 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %40 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %31
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ei_start(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = bitcast %struct.TYPE_11__* %10 to i8*
  %56 = bitcast %struct.TYPE_11__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  br label %65

57:                                               ; preds = %31
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ei_start(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = bitcast %struct.TYPE_11__* %10 to i8*
  %64 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %70 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @bitmap_bit_p(i32 %71, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = bitcast %struct.TYPE_11__* %11 to i8*
  %79 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 8, i1 false)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %112

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %147, %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ei_end_p(i64 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %89, label %150

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.TYPE_12__* @ei_edge(i64 %91)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %13, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  br label %103

99:                                               ; preds = %89
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi %struct.TYPE_13__* [ %98, %95 ], [ %102, %99 ]
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %17, align 8
  %105 = bitcast %struct.TYPE_11__* %11 to i8*
  %106 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  %107 = call i32 @ei_next(%struct.TYPE_11__* %11)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %110 = icmp eq %struct.TYPE_13__* %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %77
  %113 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %114 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @last_basic_block, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %16, align 4
  br label %128

119:                                              ; preds = %103
  %120 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %121 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %16, align 4
  br label %128

128:                                              ; preds = %119, %112
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %134 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i64 @eval(%struct.dom_info* %136, i32 %137)
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %132, %128
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = bitcast %struct.TYPE_11__* %10 to i8*
  %149 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 8, i1 false)
  br label %83

150:                                              ; preds = %83
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %153 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @link_roots(%struct.dom_info* %158, i32 %159, i32 %160)
  %162 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %163 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %170 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %177 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %183 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %182, i32 0, i32 5
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %229, %150
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %237

192:                                              ; preds = %189
  %193 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i64 @eval(%struct.dom_info* %193, i32 %194)
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %7, align 4
  %197 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %198 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %205 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %203, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %192
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %215 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %213, i32* %219, align 4
  br label %228

220:                                              ; preds = %192
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %223 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %221, i32* %227, align 4
  br label %228

228:                                              ; preds = %220, %212
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %231 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %6, align 4
  br label %189

237:                                              ; preds = %189
  %238 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %239 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 0, i32* %243, align 4
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %5, align 4
  br label %28

246:                                              ; preds = %28
  %247 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %248 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %247, i32 0, i32 6
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 0, i32* %250, align 4
  store i32 2, i32* %5, align 4
  br label %251

251:                                              ; preds = %294, %246
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %254 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp sle i32 %252, %255
  br i1 %256, label %257, label %297

257:                                              ; preds = %251
  %258 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %259 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %258, i32 0, i32 6
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %266 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %264, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %257
  %274 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %275 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %278 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %277, i32 0, i32 6
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %276, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.dom_info*, %struct.dom_info** %3, align 8
  %288 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %287, i32 0, i32 6
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %286, i32* %292, align 4
  br label %293

293:                                              ; preds = %273, %257
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %5, align 4
  br label %251

297:                                              ; preds = %251
  ret void
}

declare dso_local i64 @ei_start(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bitmap_bit_p(i32, i64) #1

declare dso_local i32 @ei_end_p(i64) #1

declare dso_local %struct.TYPE_12__* @ei_edge(i64) #1

declare dso_local i32 @ei_next(%struct.TYPE_11__*) #1

declare dso_local i64 @eval(%struct.dom_info*, i32) #1

declare dso_local i32 @link_roots(%struct.dom_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
