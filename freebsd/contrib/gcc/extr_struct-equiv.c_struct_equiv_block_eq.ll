; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_block_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_struct-equiv.c_struct_equiv_block_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.equiv_info = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@STRUCT_EQUIV_START = common dso_local global i32 0, align 4
@STRUCT_EQUIV_MATCH_JUMPS = common dso_local global i32 0, align 4
@STRUCT_EQUIV_FINAL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@STRUCT_EQUIV_NEED_FULL_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @struct_equiv_block_eq(i32 %0, %struct.equiv_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.equiv_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.equiv_info* %1, %struct.equiv_info** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @STRUCT_EQUIV_START, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %19 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @BB_HEAD(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %23 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @BB_HEAD(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %17
  store i32 0, i32* %3, align 4
  br label %579

32:                                               ; preds = %28
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %35 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %39 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %33, %32
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %45 = call i32 @struct_equiv_init(i32 %43, %struct.equiv_info* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (...) @gcc_unreachable()
  br label %49

49:                                               ; preds = %47, %42
  %50 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %51 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @BB_END(i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @onlyjump_p(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @returnjump_p(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @PATTERN(i64 %62)
  %64 = call i32 @side_effects_p(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61, %49
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %69 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @PREV_INSN(i64 %71)
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %66, %61, %57
  %74 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %75 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %74, i32 0, i32 14
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @BB_END(i32 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @onlyjump_p(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @returnjump_p(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %81
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @PATTERN(i64 %86)
  %88 = call i32 @side_effects_p(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %85, %73
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %93 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @simplejump_p(i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @returnjump_p(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %104 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %110 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %102, %98, %90
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @PREV_INSN(i64 %115)
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %114, %85, %81
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @STRUCT_EQUIV_MATCH_JUMPS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %229

122:                                              ; preds = %117
  %123 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %124 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %131 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = icmp eq i32 %129, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @gcc_assert(i32 %138)
  %140 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %141 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %122
  %146 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %147 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @any_condjump_p(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %154 = call i32 @condjump_equiv_p(%struct.equiv_info* %153, i32 0)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %170, label %168

156:                                              ; preds = %145
  %157 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %158 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %162 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %166 = call i32 @insns_match_p(i64 %160, i64 %164, %struct.equiv_info* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %156, %152
  %169 = call i32 (...) @gcc_unreachable()
  br label %170

170:                                              ; preds = %168, %156, %152
  br label %204

171:                                              ; preds = %122
  %172 = load i64, i64* %8, align 8
  %173 = call i64 @any_condjump_p(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %203

175:                                              ; preds = %171
  %176 = load i64, i64* %9, align 8
  %177 = call i64 @any_condjump_p(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %175
  %180 = load i64, i64* %8, align 8
  %181 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %182 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  %184 = load i64, i64* %9, align 8
  %185 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %186 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  store i64 %184, i64* %187, align 8
  %188 = load i64, i64* %8, align 8
  %189 = call i64 @PREV_INSN(i64 %188)
  store i64 %189, i64* %8, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i64 @PREV_INSN(i64 %190)
  store i64 %191, i64* %9, align 8
  %192 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %193 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %198 = call i32 @condjump_equiv_p(%struct.equiv_info* %197, i32 0)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %179
  %201 = call i32 (...) @gcc_unreachable()
  br label %202

202:                                              ; preds = %200, %179
  br label %203

203:                                              ; preds = %202, %175, %171
  br label %204

204:                                              ; preds = %203, %170
  %205 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %206 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %204
  %211 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %212 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @STRUCT_EQUIV_FINAL, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %210
  %218 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %219 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %223 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %227 = call i32 @struct_equiv_merge(i64 %221, i64 %225, %struct.equiv_info* %226)
  br label %228

228:                                              ; preds = %217, %210, %204
  br label %229

229:                                              ; preds = %228, %117
  %230 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %231 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %230, i32 0, i32 13
  %232 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %233 = call i32 @struct_equiv_improve_checkpoint(%struct.TYPE_5__* %231, %struct.equiv_info* %232)
  %234 = load i64, i64* %8, align 8
  %235 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %236 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %235, i32 0, i32 17
  store i64 %234, i64* %236, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %239 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %238, i32 0, i32 16
  store i64 %237, i64* %239, align 8
  %240 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %241 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %6, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %382

246:                                              ; preds = %229
  br label %247

247:                                              ; preds = %376, %246
  br label %248

248:                                              ; preds = %258, %247
  %249 = load i64, i64* %8, align 8
  %250 = call i64 @INSN_P(i64 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %6, align 8
  %255 = icmp ne i64 %253, %254
  br label %256

256:                                              ; preds = %252, %248
  %257 = phi i1 [ false, %248 ], [ %255, %252 ]
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = load i64, i64* %8, align 8
  %260 = call i64 @PREV_INSN(i64 %259)
  store i64 %260, i64* %8, align 8
  br label %248

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %272, %261
  %263 = load i64, i64* %9, align 8
  %264 = call i64 @INSN_P(i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = load i64, i64* %9, align 8
  %268 = load i64, i64* %7, align 8
  %269 = icmp ne i64 %267, %268
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi i1 [ false, %262 ], [ %269, %266 ]
  br i1 %271, label %272, label %275

272:                                              ; preds = %270
  %273 = load i64, i64* %9, align 8
  %274 = call i64 @PREV_INSN(i64 %273)
  store i64 %274, i64* %9, align 8
  br label %262

275:                                              ; preds = %270
  %276 = load i64, i64* %8, align 8
  %277 = load i64, i64* %9, align 8
  %278 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %279 = call i32 @insns_match_p(i64 %276, i64 %277, %struct.equiv_info* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %275
  br label %381

282:                                              ; preds = %275
  %283 = load i64, i64* %8, align 8
  %284 = call i64 @INSN_P(i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %308

286:                                              ; preds = %282
  %287 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %288 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @STRUCT_EQUIV_FINAL, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load i64, i64* %8, align 8
  %295 = load i64, i64* %9, align 8
  %296 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %297 = call i32 @struct_equiv_merge(i64 %294, i64 %295, %struct.equiv_info* %296)
  br label %298

298:                                              ; preds = %293, %286
  %299 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %300 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  %304 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %305 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %304, i32 0, i32 13
  %306 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %307 = call i32 @struct_equiv_improve_checkpoint(%struct.TYPE_5__* %305, %struct.equiv_info* %306)
  br label %308

308:                                              ; preds = %298, %282
  %309 = load i64, i64* %8, align 8
  %310 = load i64, i64* %6, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %9, align 8
  %314 = load i64, i64* %7, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %376

316:                                              ; preds = %312, %308
  %317 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %318 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %317, i32 0, i32 13
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %322 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %321, i32 0, i32 5
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %320, %324
  br i1 %325, label %326, label %375

326:                                              ; preds = %316
  %327 = load i64, i64* %8, align 8
  %328 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %329 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %328, i32 0, i32 15
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @BB_HEAD(i32 %330)
  %332 = icmp eq i64 %327, %331
  br i1 %332, label %340, label %333

333:                                              ; preds = %326
  %334 = load i64, i64* %9, align 8
  %335 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %336 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %335, i32 0, i32 14
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @BB_HEAD(i32 %337)
  %339 = icmp eq i64 %334, %338
  br i1 %339, label %340, label %375

340:                                              ; preds = %333, %326
  %341 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %342 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 8
  %346 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %347 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %346, i32 0, i32 13
  %348 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %349 = call i32 @struct_equiv_improve_checkpoint(%struct.TYPE_5__* %347, %struct.equiv_info* %348)
  %350 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %351 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = add nsw i32 %353, -1
  store i32 %354, i32* %352, align 8
  %355 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %356 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %355, i32 0, i32 13
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %360 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %359, i32 0, i32 5
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = icmp sgt i64 %358, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %340
  %366 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %367 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %372 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %371, i32 0, i32 13
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 1
  store i64 %370, i64* %373, align 8
  br label %374

374:                                              ; preds = %365, %340
  br label %375

375:                                              ; preds = %374, %333, %316
  br label %381

376:                                              ; preds = %312
  %377 = load i64, i64* %8, align 8
  %378 = call i64 @PREV_INSN(i64 %377)
  store i64 %378, i64* %8, align 8
  %379 = load i64, i64* %9, align 8
  %380 = call i64 @PREV_INSN(i64 %379)
  store i64 %380, i64* %9, align 8
  br label %247

381:                                              ; preds = %375, %281
  br label %382

382:                                              ; preds = %381, %229
  %383 = call i32 @cancel_changes(i32 0)
  %384 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %385 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %384, i32 0, i32 13
  %386 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %387 = call i32 @struct_equiv_restore_checkpoint(%struct.TYPE_5__* %385, %struct.equiv_info* %386)
  %388 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %389 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %442

393:                                              ; preds = %382
  %394 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %395 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %8, align 8
  %398 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %399 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %9, align 8
  br label %402

402:                                              ; preds = %414, %393
  %403 = load i64, i64* %8, align 8
  %404 = load i64, i64* %6, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load i64, i64* %8, align 8
  %408 = call i64 @PREV_INSN(i64 %407)
  %409 = call i64 @INSN_P(i64 %408)
  %410 = icmp ne i64 %409, 0
  %411 = xor i1 %410, true
  br label %412

412:                                              ; preds = %406, %402
  %413 = phi i1 [ false, %402 ], [ %411, %406 ]
  br i1 %413, label %414, label %417

414:                                              ; preds = %412
  %415 = load i64, i64* %8, align 8
  %416 = call i64 @PREV_INSN(i64 %415)
  store i64 %416, i64* %8, align 8
  br label %402

417:                                              ; preds = %412
  br label %418

418:                                              ; preds = %430, %417
  %419 = load i64, i64* %9, align 8
  %420 = load i64, i64* %7, align 8
  %421 = icmp ne i64 %419, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %418
  %423 = load i64, i64* %9, align 8
  %424 = call i64 @PREV_INSN(i64 %423)
  %425 = call i64 @INSN_P(i64 %424)
  %426 = icmp ne i64 %425, 0
  %427 = xor i1 %426, true
  br label %428

428:                                              ; preds = %422, %418
  %429 = phi i1 [ false, %418 ], [ %427, %422 ]
  br i1 %429, label %430, label %433

430:                                              ; preds = %428
  %431 = load i64, i64* %9, align 8
  %432 = call i64 @PREV_INSN(i64 %431)
  store i64 %432, i64* %9, align 8
  br label %418

433:                                              ; preds = %428
  %434 = load i64, i64* %8, align 8
  %435 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %436 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %435, i32 0, i32 5
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  store i64 %434, i64* %437, align 8
  %438 = load i64, i64* %9, align 8
  %439 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %440 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 1
  store i64 %438, i64* %441, align 8
  br label %442

442:                                              ; preds = %433, %382
  %443 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %444 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %443, i32 0, i32 5
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %456, label %448

448:                                              ; preds = %442
  %449 = load i32, i32* @NULL_RTX, align 4
  %450 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %451 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %450, i32 0, i32 10
  store i32 %449, i32* %451, align 8
  %452 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %453 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %452, i32 0, i32 11
  store i32 %449, i32* %453, align 4
  %454 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %455 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %454, i32 0, i32 12
  store i32 %449, i32* %455, align 8
  br label %456

456:                                              ; preds = %448, %442
  %457 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %458 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %552, label %461

461:                                              ; preds = %456
  %462 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %463 = call i32 @find_dying_inputs(%struct.equiv_info* %462)
  %464 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %465 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @STRUCT_EQUIV_FINAL, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %482

470:                                              ; preds = %461
  %471 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %472 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %470
  %476 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %477 = call i32 @resolve_input_conflict(%struct.equiv_info* %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %475
  %480 = call i32 (...) @gcc_unreachable()
  br label %481

481:                                              ; preds = %479, %475, %470
  br label %551

482:                                              ; preds = %461
  %483 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %484 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  store i32 %485, i32* %11, align 4
  %486 = load i32, i32* %11, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %536, label %488

488:                                              ; preds = %482
  %489 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %490 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %489, i32 0, i32 4
  %491 = load i32, i32* %490, align 8
  %492 = icmp sgt i32 %491, 1
  br i1 %492, label %493, label %536

493:                                              ; preds = %488
  %494 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %495 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %494, i32 0, i32 9
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %498 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %497, i32 0, i32 8
  %499 = load i32, i32* %498, align 8
  %500 = call i64 @bitmap_intersect_p(i32 %496, i32 %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %536

502:                                              ; preds = %493
  %503 = call i32 @INIT_REG_SET(i32* %12)
  store i32 0, i32* %10, align 4
  br label %504

504:                                              ; preds = %531, %502
  %505 = load i32, i32* %10, align 4
  %506 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %507 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %506, i32 0, i32 5
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %505, %509
  br i1 %510, label %511, label %534

511:                                              ; preds = %504
  %512 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %513 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %512, i32 0, i32 7
  %514 = load i32*, i32** %513, align 8
  %515 = load i32, i32* %10, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = call i64 @assign_reg_reg_set(i32* %12, i32 %518, i32 0)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %511
  store i32 1, i32* %11, align 4
  br label %534

522:                                              ; preds = %511
  %523 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %524 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %523, i32 0, i32 6
  %525 = load i32*, i32** %524, align 8
  %526 = load i32, i32* %10, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i32, i32* %525, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = call i64 @assign_reg_reg_set(i32* %12, i32 %529, i32 1)
  br label %531

531:                                              ; preds = %522
  %532 = load i32, i32* %10, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %10, align 4
  br label %504

534:                                              ; preds = %521, %504
  %535 = call i32 @CLEAR_REG_SET(i32* %12)
  br label %536

536:                                              ; preds = %534, %493, %488, %482
  %537 = load i32, i32* %11, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %547

539:                                              ; preds = %536
  %540 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %541 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %547, label %544

544:                                              ; preds = %539
  %545 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %546 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %545, i32 0, i32 1
  store i32 1, i32* %546, align 4
  br label %547

547:                                              ; preds = %544, %539, %536
  %548 = load i32, i32* %11, align 4
  %549 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %550 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 8
  br label %551

551:                                              ; preds = %547, %481
  br label %552

552:                                              ; preds = %551, %456
  %553 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %554 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @STRUCT_EQUIV_NEED_FULL_BLOCK, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %574

559:                                              ; preds = %552
  %560 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %561 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %560, i32 0, i32 5
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* %6, align 8
  %565 = icmp ne i64 %563, %564
  br i1 %565, label %573, label %566

566:                                              ; preds = %559
  %567 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %568 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 1
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* %7, align 8
  %572 = icmp ne i64 %570, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %566, %559
  store i32 0, i32* %3, align 4
  br label %579

574:                                              ; preds = %566, %552
  %575 = load %struct.equiv_info*, %struct.equiv_info** %5, align 8
  %576 = getelementptr inbounds %struct.equiv_info, %struct.equiv_info* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  store i32 %578, i32* %3, align 4
  br label %579

579:                                              ; preds = %574, %573, %31
  %580 = load i32, i32* %3, align 4
  ret i32 %580
}

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i32 @struct_equiv_init(i32, %struct.equiv_info*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @onlyjump_p(i64) #1

declare dso_local i64 @returnjump_p(i64) #1

declare dso_local i32 @side_effects_p(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @simplejump_p(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @any_condjump_p(i64) #1

declare dso_local i32 @condjump_equiv_p(%struct.equiv_info*, i32) #1

declare dso_local i32 @insns_match_p(i64, i64, %struct.equiv_info*) #1

declare dso_local i32 @struct_equiv_merge(i64, i64, %struct.equiv_info*) #1

declare dso_local i32 @struct_equiv_improve_checkpoint(%struct.TYPE_5__*, %struct.equiv_info*) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @cancel_changes(i32) #1

declare dso_local i32 @struct_equiv_restore_checkpoint(%struct.TYPE_5__*, %struct.equiv_info*) #1

declare dso_local i32 @find_dying_inputs(%struct.equiv_info*) #1

declare dso_local i32 @resolve_input_conflict(%struct.equiv_info*) #1

declare dso_local i64 @bitmap_intersect_p(i32, i32) #1

declare dso_local i32 @INIT_REG_SET(i32*) #1

declare dso_local i64 @assign_reg_reg_set(i32*, i32, i32) #1

declare dso_local i32 @CLEAR_REG_SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
