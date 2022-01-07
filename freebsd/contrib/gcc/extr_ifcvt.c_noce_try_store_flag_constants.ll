; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag_constants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i32, i32, i64, i32, i32, i32 }

@no_new_pseudos = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i64 0, align 8
@STORE_FLAG_VALUE = common dso_local global i64 0, align 8
@BRANCH_COST = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_store_flag_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_store_flag_constants(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  %14 = load i32, i32* @no_new_pseudos, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %313, label %16

16:                                               ; preds = %1
  %17 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %18 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @CONST_INT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %313

23:                                               ; preds = %16
  %24 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @CONST_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %313

30:                                               ; preds = %23
  %31 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %32 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @GET_MODE(i64 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %36 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @INTVAL(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %40 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @INTVAL(i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %30
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %56, 0
  %58 = zext i1 %57 to i32
  br label %64

59:                                               ; preds = %30
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp slt i64 %60, %61
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %58, %55 ], [ %63, %59 ]
  %66 = icmp ne i32 %47, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %315

69:                                               ; preds = %64
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @trunc_int_for_mode(i64 %72, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %76 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %79 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @reversed_comparison_code(i32 %77, i32 %80)
  %82 = load i64, i64* @UNKNOWN, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %12, align 4
  store i32 0, i32* %6, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %69
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %91 = sub nsw i64 0, %90
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %69
  store i32 0, i32* %11, align 4
  br label %165

94:                                               ; preds = %88
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = call i64 @exact_log2(i64 %98)
  %100 = icmp sge i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @BRANCH_COST, align 4
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %101
  store i32 1, i32* %11, align 4
  br label %164

108:                                              ; preds = %104, %97, %94
  %109 = load i64, i64* %7, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @exact_log2(i64 %112)
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @BRANCH_COST, align 4
  %123 = icmp sge i32 %122, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118
  store i32 1, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %163

125:                                              ; preds = %121, %115, %111, %108
  %126 = load i64, i64* %7, align 8
  %127 = icmp eq i64 %126, -1
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %130 = icmp eq i64 %129, -1
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @BRANCH_COST, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %134, label %135

134:                                              ; preds = %131, %128
  store i32 -1, i32* %11, align 4
  br label %162

135:                                              ; preds = %131, %125
  %136 = load i64, i64* %8, align 8
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @BRANCH_COST, align 4
  %146 = icmp sge i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %141
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %6, align 4
  br label %161

148:                                              ; preds = %144, %138, %135
  %149 = load i32, i32* @BRANCH_COST, align 4
  %150 = icmp sge i32 %149, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %153 = icmp eq i64 %152, -1
  br i1 %153, label %157, label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* @BRANCH_COST, align 4
  %156 = icmp sge i32 %155, 3
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %151
  store i32 -1, i32* %11, align 4
  br label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %2, align 4
  br label %315

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %147
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %124
  br label %164

164:                                              ; preds = %163, %107
  br label %165

165:                                              ; preds = %164, %93
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i64, i64* %7, align 8
  store i64 %169, i64* %10, align 8
  %170 = load i64, i64* %8, align 8
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* %10, align 8
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = sub nsw i64 0, %172
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @trunc_int_for_mode(i64 %173, i32 %174)
  store i64 %175, i64* %9, align 8
  br label %176

176:                                              ; preds = %168, %165
  %177 = call i32 (...) @start_sequence()
  %178 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %179 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %180 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @noce_emit_store_flag(%struct.noce_if_info* %178, i64 %181, i32 %182, i32 %183)
  store i64 %184, i64* %4, align 8
  %185 = load i64, i64* %4, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %176
  %188 = call i32 (...) @end_sequence()
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %2, align 4
  br label %315

190:                                              ; preds = %176
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %197 = sub nsw i64 0, %196
  %198 = icmp eq i64 %195, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %194, %190
  %200 = load i32, i32* %13, align 4
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* @STORE_FLAG_VALUE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32, i32* @PLUS, align 4
  br label %208

206:                                              ; preds = %199
  %207 = load i32, i32* @MINUS, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load i64, i64* %8, align 8
  %211 = call i64 @GEN_INT(i64 %210)
  %212 = load i64, i64* %4, align 8
  %213 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %214 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @OPTAB_WIDEN, align 4
  %217 = call i64 @expand_simple_binop(i32 %200, i32 %209, i64 %211, i64 %212, i64 %215, i32 0, i32 %216)
  store i64 %217, i64* %4, align 8
  br label %277

218:                                              ; preds = %194
  %219 = load i64, i64* %8, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  %222 = load i64, i64* %7, align 8
  %223 = call i64 @exact_log2(i64 %222)
  store i64 %223, i64* %10, align 8
  %224 = icmp sge i64 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @ASHIFT, align 4
  %228 = load i64, i64* %4, align 8
  %229 = load i64, i64* %10, align 8
  %230 = call i64 @GEN_INT(i64 %229)
  %231 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %232 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* @OPTAB_WIDEN, align 4
  %235 = call i64 @expand_simple_binop(i32 %226, i32 %227, i64 %228, i64 %230, i64 %233, i32 0, i32 %234)
  store i64 %235, i64* %4, align 8
  br label %276

236:                                              ; preds = %221, %218
  %237 = load i64, i64* %7, align 8
  %238 = icmp eq i64 %237, -1
  br i1 %238, label %239, label %250

239:                                              ; preds = %236
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @IOR, align 4
  %242 = load i64, i64* %4, align 8
  %243 = load i64, i64* %8, align 8
  %244 = call i64 @GEN_INT(i64 %243)
  %245 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %246 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @OPTAB_WIDEN, align 4
  %249 = call i64 @expand_simple_binop(i32 %240, i32 %241, i64 %242, i64 %244, i64 %247, i32 0, i32 %248)
  store i64 %249, i64* %4, align 8
  br label %275

250:                                              ; preds = %236
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* @AND, align 4
  %253 = load i64, i64* %4, align 8
  %254 = load i64, i64* %9, align 8
  %255 = call i64 @GEN_INT(i64 %254)
  %256 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %257 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* @OPTAB_WIDEN, align 4
  %260 = call i64 @expand_simple_binop(i32 %251, i32 %252, i64 %253, i64 %255, i64 %258, i32 0, i32 %259)
  store i64 %260, i64* %4, align 8
  %261 = load i64, i64* %4, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %250
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* @PLUS, align 4
  %266 = load i64, i64* %4, align 8
  %267 = load i64, i64* %8, align 8
  %268 = call i64 @GEN_INT(i64 %267)
  %269 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %270 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load i32, i32* @OPTAB_WIDEN, align 4
  %273 = call i64 @expand_simple_binop(i32 %264, i32 %265, i64 %266, i64 %268, i64 %271, i32 0, i32 %272)
  store i64 %273, i64* %4, align 8
  br label %274

274:                                              ; preds = %263, %250
  br label %275

275:                                              ; preds = %274, %239
  br label %276

276:                                              ; preds = %275, %225
  br label %277

277:                                              ; preds = %276, %208
  %278 = load i64, i64* %4, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = call i32 (...) @end_sequence()
  %282 = load i32, i32* @FALSE, align 4
  store i32 %282, i32* %2, align 4
  br label %315

283:                                              ; preds = %277
  %284 = load i64, i64* %4, align 8
  %285 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %286 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %284, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %283
  %290 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %291 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %4, align 8
  %294 = call i32 @noce_emit_move_insn(i64 %292, i64 %293)
  br label %295

295:                                              ; preds = %289, %283
  %296 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %297 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %296)
  store i64 %297, i64* %5, align 8
  %298 = load i64, i64* %5, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %295
  %301 = load i32, i32* @FALSE, align 4
  store i32 %301, i32* %2, align 4
  br label %315

302:                                              ; preds = %295
  %303 = load i64, i64* %5, align 8
  %304 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %305 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %308 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @INSN_LOCATOR(i32 %309)
  %311 = call i32 @emit_insn_before_setloc(i64 %303, i32 %306, i32 %310)
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %2, align 4
  br label %315

313:                                              ; preds = %23, %16, %1
  %314 = load i32, i32* @FALSE, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %313, %302, %300, %280, %187, %158, %67
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @trunc_int_for_mode(i64, i32) #1

declare dso_local i64 @reversed_comparison_code(i32, i32) #1

declare dso_local i64 @exact_log2(i64) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @noce_emit_store_flag(%struct.noce_if_info*, i64, i32, i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @GEN_INT(i64) #1

declare dso_local i32 @noce_emit_move_insn(i64, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
