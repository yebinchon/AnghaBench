; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_push_secondary_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_push_secondary_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i64, i32, i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@NO_REGS = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@RELOAD_FOR_INPUT_ADDRESS = common dso_local global i32 0, align 4
@RELOAD_FOR_OUTPUT_ADDRESS = common dso_local global i32 0, align 4
@RELOAD_FOR_INPADDR_ADDRESS = common dso_local global i32 0, align 4
@RELOAD_FOR_OUTADDR_ADDRESS = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_equiv_mem = common dso_local global i64* null, align 8
@targetm = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@insn_data = common dso_local global %struct.TYPE_12__* null, align 8
@GENERAL_REGS = common dso_local global i32 0, align 4
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_11__* null, align 8
@SMALL_REGISTER_CLASSES = common dso_local global i64 0, align 8
@RELOAD_OTHER = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32, i32, i32, i32, i32*, %struct.TYPE_9__*)* @push_secondary_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_secondary_reload(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, %struct.TYPE_9__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8, align 1
  %30 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %19, align 8
  %31 = load i32, i32* @NO_REGS, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* @CODE_FOR_nothing, align 4
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* @CODE_FOR_nothing, align 4
  store i32 %34, i32* %24, align 4
  store i32 -1, i32* %27, align 4
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @RELOAD_FOR_INPUT_ADDRESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %9
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @RELOAD_FOR_OUTPUT_ADDRESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @RELOAD_FOR_INPADDR_ADDRESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @RELOAD_FOR_OUTADDR_ADDRESS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42, %38, %9
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %25, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @RELOAD_FOR_INPUT_ADDRESS, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @RELOAD_FOR_OUTPUT_ADDRESS, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %25, align 4
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* @CODE_FOR_nothing, align 4
  %63 = load i32*, i32** %18, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @GET_CODE(i64 %64)
  %66 = load i64, i64* @SUBREG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @GET_MODE(i64 %69)
  %71 = call i64 @GET_MODE_SIZE(i32 %70)
  %72 = load i64, i64* %12, align 8
  %73 = call i64 @SUBREG_REG(i64 %72)
  %74 = call i32 @GET_MODE(i64 %73)
  %75 = call i64 @GET_MODE_SIZE(i32 %74)
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i64, i64* %12, align 8
  %79 = call i64 @SUBREG_REG(i64 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @GET_MODE(i64 %80)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %77, %68, %61
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @REG_P(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @REGNO(i64 %87)
  %89 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i64*, i64** @reg_equiv_mem, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @REGNO(i64 %93)
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i64*, i64** @reg_equiv_mem, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @REGNO(i64 %100)
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %98, %91, %86, %82
  %105 = load i32, i32* @CODE_FOR_nothing, align 4
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %108, align 8
  %109 = load i32 (i32, i64, i32, i32, %struct.TYPE_9__*)*, i32 (i32, i64, i32, i32, %struct.TYPE_9__*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @targetm, i32 0, i32 0), align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 %109(i32 %110, i64 %111, i32 %112, i32 %113, %struct.TYPE_9__* %30)
  store i32 %114, i32* %20, align 4
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* @NO_REGS, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* @CODE_FOR_nothing, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 -1, i32* %10, align 4
  br label %595

125:                                              ; preds = %120, %104
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @NO_REGS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i64, i64* %12, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @push_secondary_reload(i32 %130, i64 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32* %24, %struct.TYPE_9__* %30)
  store i32 %137, i32* %27, align 4
  br label %138

138:                                              ; preds = %129, %125
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* @CODE_FOR_nothing, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %205

142:                                              ; preds = %138
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** @insn_data, align 8
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 3
  %150 = zext i1 %149 to i32
  %151 = call i32 @gcc_assert(i32 %150)
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* @NO_REGS, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @gcc_assert(i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** @insn_data, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 2
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %28, align 8
  %166 = load i8*, i8** %28, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 61
  %170 = zext i1 %169 to i32
  %171 = call i32 @gcc_assert(i32 %170)
  %172 = load i8*, i8** %28, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %28, align 8
  %174 = load i8*, i8** %28, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 38
  br i1 %177, label %178, label %181

178:                                              ; preds = %142
  %179 = load i8*, i8** %28, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %28, align 8
  br label %181

181:                                              ; preds = %178, %142
  %182 = load i8*, i8** %28, align 8
  %183 = load i8, i8* %182, align 1
  store i8 %183, i8* %29, align 1
  %184 = load i8, i8* %29, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 114
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @GENERAL_REGS, align 4
  br label %193

189:                                              ; preds = %181
  %190 = load i8, i8* %29, align 1
  %191 = load i8*, i8** %28, align 8
  %192 = call i32 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext %190, i8* %191)
  br label %193

193:                                              ; preds = %189, %187
  %194 = phi i32 [ %188, %187 ], [ %192, %189 ]
  store i32 %194, i32* %21, align 4
  %195 = load i32, i32* %21, align 4
  store i32 %195, i32* %20, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** @insn_data, align 8
  %197 = load i32, i32* %23, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %22, align 4
  br label %205

205:                                              ; preds = %193, %138
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* @CODE_FOR_nothing, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %24, align 4
  %218 = load i32, i32* @CODE_FOR_nothing, align 4
  %219 = icmp ne i32 %217, %218
  br label %220

220:                                              ; preds = %216, %212, %208, %205
  %221 = phi i1 [ true, %212 ], [ true, %208 ], [ true, %205 ], [ %219, %216 ]
  %222 = zext i1 %221 to i32
  %223 = call i32 @gcc_assert(i32 %222)
  store i32 0, i32* %26, align 4
  br label %224

224:                                              ; preds = %441, %220
  %225 = load i32, i32* %26, align 4
  %226 = load i32, i32* @n_reloads, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %444

228:                                              ; preds = %224
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %440

236:                                              ; preds = %228
  %237 = load i32, i32* %20, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @reg_class_subset_p(i32 %237, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %236
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %248 = load i32, i32* %26, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %20, align 4
  %254 = call i64 @reg_class_subset_p(i32 %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %440

256:                                              ; preds = %246, %236
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %256
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %261 = load i32, i32* %26, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %22, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %280, label %268

268:                                              ; preds = %259, %256
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %440, label %271

271:                                              ; preds = %268
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %273 = load i32, i32* %26, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %22, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %440

280:                                              ; preds = %271, %259
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %285 = load i32, i32* %26, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %27, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %304, label %292

292:                                              ; preds = %283, %280
  %293 = load i32, i32* %11, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %440, label %295

295:                                              ; preds = %292
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %297 = load i32, i32* %26, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %27, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %440

304:                                              ; preds = %295, %283
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %304
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %309 = load i32, i32* %26, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %24, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %328, label %316

316:                                              ; preds = %307, %304
  %317 = load i32, i32* %11, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %440, label %319

319:                                              ; preds = %316
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %321 = load i32, i32* %26, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %24, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %440

328:                                              ; preds = %319, %307
  %329 = load i32, i32* %20, align 4
  %330 = call i64 @SMALL_REGISTER_CLASS_P(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = load i64, i64* @SMALL_REGISTER_CLASSES, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %440

335:                                              ; preds = %332, %328
  %336 = load i32, i32* %25, align 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %338 = load i32, i32* %26, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* %13, align 4
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %345 = load i32, i32* %26, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 9
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @MERGABLE_RELOADS(i32 %336, i32 %342, i32 %343, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %440

352:                                              ; preds = %335
  %353 = load i32, i32* %11, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %352
  %356 = load i32, i32* %22, align 4
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %358 = load i32, i32* %26, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 2
  store i32 %356, i32* %361, align 8
  br label %362

362:                                              ; preds = %355, %352
  %363 = load i32, i32* %11, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %362
  %366 = load i32, i32* %22, align 4
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %368 = load i32, i32* %26, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 3
  store i32 %366, i32* %371, align 4
  br label %372

372:                                              ; preds = %365, %362
  %373 = load i32, i32* %20, align 4
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %375 = load i32, i32* %26, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i64 @reg_class_subset_p(i32 %373, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %372
  %383 = load i32, i32* %20, align 4
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %385 = load i32, i32* %26, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 1
  store i32 %383, i32* %388, align 4
  br label %389

389:                                              ; preds = %382, %372
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %391 = load i32, i32* %26, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 9
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %13, align 4
  %397 = call i32 @MIN(i32 %395, i32 %396)
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %399 = load i32, i32* %26, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 9
  store i32 %397, i32* %402, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %405 = load i32, i32* %26, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 10
  %409 = load i32, i32* %408, align 8
  %410 = and i32 %409, %403
  store i32 %410, i32* %408, align 8
  %411 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %412 = load i32, i32* %26, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  store i32 1, i32* %415, align 8
  %416 = load i32, i32* %25, align 4
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %418 = load i32, i32* %26, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 8
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %13, align 4
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %425 = load i32, i32* %26, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 9
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @MERGE_TO_OTHER(i32 %416, i32 %422, i32 %423, i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %439

432:                                              ; preds = %389
  %433 = load i32, i32* @RELOAD_OTHER, align 4
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %435 = load i32, i32* %26, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 8
  store i32 %433, i32* %438, align 8
  br label %439

439:                                              ; preds = %432, %389
  br label %440

440:                                              ; preds = %439, %335, %332, %319, %316, %295, %292, %271, %268, %246, %228
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %26, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %26, align 4
  br label %224

444:                                              ; preds = %224
  %445 = load i32, i32* %26, align 4
  %446 = load i32, i32* @n_reloads, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %591

448:                                              ; preds = %444
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %450 = load i32, i32* %26, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 16
  store i64 0, i64* %453, align 8
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %455 = load i32, i32* %26, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 17
  store i64 0, i64* %458, align 8
  %459 = load i32, i32* %20, align 4
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %461 = load i32, i32* %26, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %463, i32 0, i32 1
  store i32 %459, i32* %464, align 4
  %465 = load i32, i32* %11, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %448
  %468 = load i32, i32* %22, align 4
  br label %471

469:                                              ; preds = %448
  %470 = load i32, i32* @VOIDmode, align 4
  br label %471

471:                                              ; preds = %469, %467
  %472 = phi i32 [ %468, %467 ], [ %470, %469 ]
  %473 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %474 = load i32, i32* %26, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %476, i32 0, i32 2
  store i32 %472, i32* %477, align 8
  %478 = load i32, i32* %11, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %482, label %480

480:                                              ; preds = %471
  %481 = load i32, i32* %22, align 4
  br label %484

482:                                              ; preds = %471
  %483 = load i32, i32* @VOIDmode, align 4
  br label %484

484:                                              ; preds = %482, %480
  %485 = phi i32 [ %481, %480 ], [ %483, %482 ]
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %487 = load i32, i32* %26, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 3
  store i32 %485, i32* %490, align 4
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %492 = load i32, i32* %26, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 15
  store i64 0, i64* %495, align 8
  %496 = load i32, i32* %14, align 4
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %498 = load i32, i32* %26, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 10
  store i32 %496, i32* %501, align 8
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %503 = load i32, i32* %26, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %502, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 14
  store i64 0, i64* %506, align 8
  %507 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %508 = load i32, i32* %26, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %510, i32 0, i32 11
  store i32 1, i32* %511, align 4
  %512 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %513 = load i32, i32* %26, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 13
  store i64 0, i64* %516, align 8
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %518 = load i32, i32* %26, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 12
  store i64 0, i64* %521, align 8
  %522 = load i32, i32* %13, align 4
  %523 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %524 = load i32, i32* %26, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 9
  store i32 %522, i32* %527, align 4
  %528 = load i32, i32* %25, align 4
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %530 = load i32, i32* %26, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %532, i32 0, i32 8
  store i32 %528, i32* %533, align 8
  %534 = load i32, i32* %11, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %484
  %537 = load i32, i32* %27, align 4
  br label %539

538:                                              ; preds = %484
  br label %539

539:                                              ; preds = %538, %536
  %540 = phi i32 [ %537, %536 ], [ -1, %538 ]
  %541 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %542 = load i32, i32* %26, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i32 0, i32 4
  store i32 %540, i32* %545, align 8
  %546 = load i32, i32* %11, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %539
  %549 = load i32, i32* %27, align 4
  br label %551

550:                                              ; preds = %539
  br label %551

551:                                              ; preds = %550, %548
  %552 = phi i32 [ %549, %548 ], [ -1, %550 ]
  %553 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %554 = load i32, i32* %26, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %556, i32 0, i32 5
  store i32 %552, i32* %557, align 4
  %558 = load i32, i32* %11, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %551
  %561 = load i32, i32* %24, align 4
  br label %564

562:                                              ; preds = %551
  %563 = load i32, i32* @CODE_FOR_nothing, align 4
  br label %564

564:                                              ; preds = %562, %560
  %565 = phi i32 [ %561, %560 ], [ %563, %562 ]
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %567 = load i32, i32* %26, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 6
  store i32 %565, i32* %570, align 8
  %571 = load i32, i32* %11, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %575, label %573

573:                                              ; preds = %564
  %574 = load i32, i32* %24, align 4
  br label %577

575:                                              ; preds = %564
  %576 = load i32, i32* @CODE_FOR_nothing, align 4
  br label %577

577:                                              ; preds = %575, %573
  %578 = phi i32 [ %574, %573 ], [ %576, %575 ]
  %579 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %580 = load i32, i32* %26, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %579, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %582, i32 0, i32 7
  store i32 %578, i32* %583, align 4
  %584 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rld, align 8
  %585 = load i32, i32* %26, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %584, i64 %586
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 0
  store i32 1, i32* %588, align 8
  %589 = load i32, i32* @n_reloads, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* @n_reloads, align 4
  br label %591

591:                                              ; preds = %577, %444
  %592 = load i32, i32* %23, align 4
  %593 = load i32*, i32** %18, align 8
  store i32 %592, i32* %593, align 4
  %594 = load i32, i32* %26, align 4
  store i32 %594, i32* %10, align 4
  br label %595

595:                                              ; preds = %591, %124
  %596 = load i32, i32* %10, align 4
  ret i32 %596
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REG_CLASS_FROM_CONSTRAINT(i8 zeroext, i8*) #1

declare dso_local i64 @reg_class_subset_p(i32, i32) #1

declare dso_local i64 @SMALL_REGISTER_CLASS_P(i32) #1

declare dso_local i64 @MERGABLE_RELOADS(i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @MERGE_TO_OTHER(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
