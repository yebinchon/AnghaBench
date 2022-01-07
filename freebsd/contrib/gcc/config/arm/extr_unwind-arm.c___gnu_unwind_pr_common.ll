; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c___gnu_unwind_pr_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c___gnu_unwind_pr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_15__ = type { i32, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@_US_FORCE_UNWIND = common dso_local global i32 0, align 4
@_US_ACTION_MASK = common dso_local global i32 0, align 4
@_US_UNWIND_FRAME_RESUME = common dso_local global i32 0, align 4
@R_PC = common dso_local global i32 0, align 4
@_US_VIRTUAL_UNWIND_FRAME = common dso_local global i32 0, align 4
@_URC_FAILURE = common dso_local global i32 0, align 4
@_URC_INSTALL_CONTEXT = common dso_local global i32 0, align 4
@R_SP = common dso_local global i32 0, align 4
@_URC_HANDLER_FOUND = common dso_local global i32 0, align 4
@uint32_highbit = common dso_local global i32 0, align 4
@_URC_OK = common dso_local global i64 0, align 8
@R_LR = common dso_local global i32 0, align 4
@__cxa_call_unexpected = common dso_local global i32 0, align 4
@_URC_CONTINUE_UNWIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_16__*, i32*, i32)* @__gnu_unwind_pr_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gnu_unwind_pr_common(i32 %0, %struct.TYPE_16__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @_US_FORCE_UNWIND, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* @_US_ACTION_MASK, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %39, align 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32* %43, i32** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 8
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 3, i32* %52, align 4
  br label %68

53:                                               ; preds = %4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 16
  store i32 %61, i32* %59, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 2, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %53, %47
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @_US_UNWIND_FRAME_RESUME, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %11, align 8
  br label %81

81:                                               ; preds = %72, %68
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %442

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %440, %88
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %441

93:                                               ; preds = %89
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load i32*, i32** %11, align 8
  %98 = bitcast i32* %97 to %struct.TYPE_17__*
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = bitcast i32* %101 to %struct.TYPE_17__*
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %11, align 8
  br label %118

107:                                              ; preds = %93
  %108 = load i32*, i32** %11, align 8
  %109 = bitcast i32* %108 to %struct.TYPE_18__*
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = bitcast i32* %112 to %struct.TYPE_18__*
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  br label %118

118:                                              ; preds = %107, %96
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, -2
  %125 = add nsw i32 %122, %124
  store i32 %125, i32* %19, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* @R_PC, align 4
  %128 = call i32 @_Unwind_GetGR(i32* %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %118
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, -2
  %137 = add nsw i32 %134, %136
  %138 = icmp slt i32 %133, %137
  br label %139

139:                                              ; preds = %132, %118
  %140 = phi i1 [ false, %118 ], [ %138, %132 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, 1
  %144 = shl i32 %143, 1
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, 1
  %147 = or i32 %144, %146
  switch i32 %147, label %438 [
    i32 0, label %148
    i32 1, label %181
    i32 2, label %278
  ]

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @_US_VIRTUAL_UNWIND_FRAME, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %152
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @selfrel_offset31(i32* %156)
  store i32 %157, i32* %20, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %11, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = ptrtoint i32* %160 to i32
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %161, i32* %166, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = call i32 @__cxa_begin_cleanup(%struct.TYPE_16__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %155
  %171 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %171, i32* %5, align 4
  br label %465

172:                                              ; preds = %155
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @R_PC, align 4
  %175 = load i32, i32* %20, align 4
  %176 = call i32 @_Unwind_SetGR(i32* %173, i32 %174, i32 %175)
  %177 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  store i32 %177, i32* %5, align 4
  br label %465

178:                                              ; preds = %152, %148
  %179 = load i32*, i32** %11, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %11, align 8
  br label %440

181:                                              ; preds = %139
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @_US_VIRTUAL_UNWIND_FRAME, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %243

185:                                              ; preds = %181
  %186 = load i32, i32* %16, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %242

188:                                              ; preds = %185
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, -2
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %194, i32* %5, align 4
  br label %465

195:                                              ; preds = %188
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i64 1
  %198 = bitcast %struct.TYPE_16__* %197 to i8*
  store i8* %198, i8** %22, align 8
  %199 = load i32*, i32** %11, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, -1
  br i1 %202, label %203, label %216

203:                                              ; preds = %195
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = ptrtoint i32* %205 to i32
  %207 = call i32 @_Unwind_decode_target2(i32 %206)
  store i32 %207, i32* %21, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i32*
  %212 = call i32 @__cxa_type_match(%struct.TYPE_16__* %208, i32* %211, i8** %22)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %203
  store i8* null, i8** %22, align 8
  br label %215

215:                                              ; preds = %214, %203
  br label %216

216:                                              ; preds = %215, %195
  %217 = load i8*, i8** %22, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %241

219:                                              ; preds = %216
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* @R_SP, align 4
  %222 = call i32 @_Unwind_GetGR(i32* %220, i32 %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = load i8*, i8** %22, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %227, i32* %232, align 4
  %233 = load i32*, i32** %11, align 8
  %234 = ptrtoint i32* %233 to i32
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %234, i32* %239, align 4
  %240 = load i32, i32* @_URC_HANDLER_FOUND, align 4
  store i32 %240, i32* %5, align 4
  br label %465

241:                                              ; preds = %216
  br label %242

242:                                              ; preds = %241, %185
  br label %275

243:                                              ; preds = %181
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %8, align 8
  %249 = load i32, i32* @R_SP, align 4
  %250 = call i32 @_Unwind_GetGR(i32* %248, i32 %249)
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %274

252:                                              ; preds = %243
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %11, align 8
  %260 = ptrtoint i32* %259 to i32
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %252
  %263 = load i32*, i32** %11, align 8
  %264 = call i32 @selfrel_offset31(i32* %263)
  store i32 %264, i32* %23, align 4
  %265 = load i32*, i32** %8, align 8
  %266 = load i32, i32* @R_PC, align 4
  %267 = load i32, i32* %23, align 4
  %268 = call i32 @_Unwind_SetGR(i32* %265, i32 %266, i32 %267)
  %269 = load i32*, i32** %8, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %271 = ptrtoint %struct.TYPE_16__* %270 to i32
  %272 = call i32 @_Unwind_SetGR(i32* %269, i32 0, i32 %271)
  %273 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  store i32 %273, i32* %5, align 4
  br label %465

274:                                              ; preds = %252, %243
  br label %275

275:                                              ; preds = %274, %242
  %276 = load i32*, i32** %11, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  store i32* %277, i32** %11, align 8
  br label %440

278:                                              ; preds = %139
  %279 = load i32*, i32** %11, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 2147483647
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @_US_VIRTUAL_UNWIND_FRAME, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %350

286:                                              ; preds = %278
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %349

289:                                              ; preds = %286
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %349, label %295

295:                                              ; preds = %292, %289
  store i32 0, i32* %24, align 4
  br label %296

296:                                              ; preds = %319, %295
  %297 = load i32, i32* %24, align 4
  %298 = load i32, i32* %14, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %322

300:                                              ; preds = %296
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i64 1
  %303 = bitcast %struct.TYPE_16__* %302 to i8*
  store i8* %303, i8** %26, align 8
  %304 = load i32*, i32** %11, align 8
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = ptrtoint i32* %308 to i32
  %310 = call i32 @_Unwind_decode_target2(i32 %309)
  store i32 %310, i32* %25, align 4
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %312 = load i32, i32* %25, align 4
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i32*
  %315 = call i32 @__cxa_type_match(%struct.TYPE_16__* %311, i32* %314, i8** %26)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %300
  br label %322

318:                                              ; preds = %300
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %24, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %24, align 4
  br label %296

322:                                              ; preds = %317, %296
  %323 = load i32, i32* %24, align 4
  %324 = load i32, i32* %14, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %348

326:                                              ; preds = %322
  %327 = load i32*, i32** %8, align 8
  %328 = load i32, i32* @R_SP, align 4
  %329 = call i32 @_Unwind_GetGR(i32* %327, i32 %328)
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  store i32 %329, i32* %332, align 8
  %333 = load i8*, i8** %26, align 8
  %334 = ptrtoint i8* %333 to i32
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  store i32 %334, i32* %339, align 4
  %340 = load i32*, i32** %11, align 8
  %341 = ptrtoint i32* %340 to i32
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  store i32 %341, i32* %346, align 4
  %347 = load i32, i32* @_URC_HANDLER_FOUND, align 4
  store i32 %347, i32* %5, align 4
  br label %465

348:                                              ; preds = %322
  br label %349

349:                                              ; preds = %348, %292, %286
  br label %422

350:                                              ; preds = %278
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32*, i32** %8, align 8
  %356 = load i32, i32* @R_SP, align 4
  %357 = call i32 @_Unwind_GetGR(i32* %355, i32 %356)
  %358 = icmp eq i32 %354, %357
  br i1 %358, label %359, label %421

359:                                              ; preds = %350
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %11, align 8
  %367 = ptrtoint i32* %366 to i32
  %368 = icmp eq i32 %365, %367
  br i1 %368, label %369, label %421

369:                                              ; preds = %359
  %370 = load i32, i32* %14, align 4
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  store i32 %370, i32* %375, align 4
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 2
  store i32 0, i32* %380, align 4
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 3
  store i32 4, i32* %385, align 4
  %386 = load i32*, i32** %11, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  %388 = ptrtoint i32* %387 to i32
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 4
  store i32 %388, i32* %393, align 4
  %394 = load i32*, i32** %11, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @uint32_highbit, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %369
  store i32 1, i32* %15, align 4
  br label %420

401:                                              ; preds = %369
  %402 = load i32, i32* %14, align 4
  %403 = add nsw i32 %402, 1
  %404 = load i32*, i32** %11, align 8
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i32, i32* %404, i64 %405
  store i32* %406, i32** %11, align 8
  %407 = load i32*, i32** %11, align 8
  %408 = call i32 @selfrel_offset31(i32* %407)
  store i32 %408, i32* %27, align 4
  %409 = load i32*, i32** %11, align 8
  %410 = getelementptr inbounds i32, i32* %409, i32 1
  store i32* %410, i32** %11, align 8
  %411 = load i32*, i32** %8, align 8
  %412 = load i32, i32* @R_PC, align 4
  %413 = load i32, i32* %27, align 4
  %414 = call i32 @_Unwind_SetGR(i32* %411, i32 %412, i32 %413)
  %415 = load i32*, i32** %8, align 8
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %417 = ptrtoint %struct.TYPE_16__* %416 to i32
  %418 = call i32 @_Unwind_SetGR(i32* %415, i32 0, i32 %417)
  %419 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  store i32 %419, i32* %5, align 4
  br label %465

420:                                              ; preds = %400
  br label %421

421:                                              ; preds = %420, %359, %350
  br label %422

422:                                              ; preds = %421, %349
  %423 = load i32*, i32** %11, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @uint32_highbit, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %422
  %430 = load i32*, i32** %11, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 1
  store i32* %431, i32** %11, align 8
  br label %432

432:                                              ; preds = %429, %422
  %433 = load i32, i32* %14, align 4
  %434 = add nsw i32 %433, 1
  %435 = load i32*, i32** %11, align 8
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  store i32* %437, i32** %11, align 8
  br label %440

438:                                              ; preds = %139
  %439 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %439, i32* %5, align 4
  br label %465

440:                                              ; preds = %432, %275, %178
  br label %89

441:                                              ; preds = %89
  br label %442

442:                                              ; preds = %441, %81
  %443 = load i32*, i32** %8, align 8
  %444 = call i64 @__gnu_unwind_execute(i32* %443, %struct.TYPE_15__* %10)
  %445 = load i64, i64* @_URC_OK, align 8
  %446 = icmp ne i64 %444, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = load i32, i32* @_URC_FAILURE, align 4
  store i32 %448, i32* %5, align 4
  br label %465

449:                                              ; preds = %442
  %450 = load i32, i32* %15, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %449
  %453 = load i32*, i32** %8, align 8
  %454 = load i32, i32* @R_LR, align 4
  %455 = load i32*, i32** %8, align 8
  %456 = load i32, i32* @R_PC, align 4
  %457 = call i32 @_Unwind_GetGR(i32* %455, i32 %456)
  %458 = call i32 @_Unwind_SetGR(i32* %453, i32 %454, i32 %457)
  %459 = load i32*, i32** %8, align 8
  %460 = load i32, i32* @R_PC, align 4
  %461 = call i32 @_Unwind_SetGR(i32* %459, i32 %460, i32 ptrtoint (i32* @__cxa_call_unexpected to i32))
  %462 = load i32, i32* @_URC_INSTALL_CONTEXT, align 4
  store i32 %462, i32* %5, align 4
  br label %465

463:                                              ; preds = %449
  %464 = load i32, i32* @_URC_CONTINUE_UNWIND, align 4
  store i32 %464, i32* %5, align 4
  br label %465

465:                                              ; preds = %463, %452, %447, %438, %401, %326, %262, %219, %193, %172, %170
  %466 = load i32, i32* %5, align 4
  ret i32 %466
}

declare dso_local i32 @_Unwind_GetGR(i32*, i32) #1

declare dso_local i32 @selfrel_offset31(i32*) #1

declare dso_local i32 @__cxa_begin_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @_Unwind_SetGR(i32*, i32, i32) #1

declare dso_local i32 @_Unwind_decode_target2(i32) #1

declare dso_local i32 @__cxa_type_match(%struct.TYPE_16__*, i32*, i8**) #1

declare dso_local i64 @__gnu_unwind_execute(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
