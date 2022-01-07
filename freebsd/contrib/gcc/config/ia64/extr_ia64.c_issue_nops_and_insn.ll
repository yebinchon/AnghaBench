; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_issue_nops_and_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_issue_nops_and_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle_state = type { i32, i32, i32, i32, i32, i32, %struct.bundle_state*, i32, %struct.bundle_state*, i64 }

@dfa_state_size = common dso_local global i32 0, align 4
@CODE_FOR_insn_group_barrier = common dso_local global i64 0, align 8
@TImode = common dso_local global i64 0, align 8
@temp_dfa_state = common dso_local global i32 0, align 4
@dfa_pre_cycle_insn = common dso_local global i32* null, align 8
@ASM_INPUT = common dso_local global i64 0, align 8
@TYPE_L = common dso_local global i64 0, align 8
@FIRST_INSN_YES = common dso_local global i64 0, align 8
@TYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bundle_state*, i32, i32, i32, i32)* @issue_nops_and_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_nops_and_insn(%struct.bundle_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bundle_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bundle_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bundle_state*, align 8
  %14 = alloca %struct.bundle_state*, align 8
  store %struct.bundle_state* %0, %struct.bundle_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = call %struct.bundle_state* (...) @get_free_bundle_state()
  store %struct.bundle_state* %15, %struct.bundle_state** %11, align 8
  %16 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %17 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %20 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @dfa_state_size, align 4
  %23 = call i32 @memcpy(i32 %18, i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %26 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %28 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %32 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %34 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %37 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %39 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %40 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %39, i32 0, i32 8
  store %struct.bundle_state* %38, %struct.bundle_state** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %43 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %45 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %47 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %52 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bundle_state*, %struct.bundle_state** %6, align 8
  %54 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %57 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @gcc_assert(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @INSN_CODE(i32 %60)
  %62 = load i64, i64* @CODE_FOR_insn_group_barrier, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %103

64:                                               ; preds = %5
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @GET_MODE(i32 %65)
  %67 = load i64, i64* @TImode, align 8
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @gcc_assert(i32 %69)
  %71 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @try_issue_nops(%struct.bundle_state* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %324

76:                                               ; preds = %64
  %77 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @try_issue_insn(%struct.bundle_state* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %324

82:                                               ; preds = %76
  %83 = load i32, i32* @temp_dfa_state, align 4
  %84 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %85 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @dfa_state_size, align 4
  %88 = call i32 @memcpy(i32 %83, i32 %86, i32 %87)
  %89 = load i32, i32* @temp_dfa_state, align 4
  %90 = load i32*, i32** @dfa_pre_cycle_insn, align 8
  %91 = call i32 @state_transition(i32 %89, i32* %90)
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %95 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = srem i32 %96, 3
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %101 = call i32 @free_bundle_state(%struct.bundle_state* %100)
  br label %324

102:                                              ; preds = %93, %82
  br label %230

103:                                              ; preds = %5
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @GET_MODE(i32 %104)
  %106 = load i64, i64* @TImode, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %103
  %109 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @try_issue_nops(%struct.bundle_state* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %324

114:                                              ; preds = %108
  %115 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @try_issue_insn(%struct.bundle_state* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %324

120:                                              ; preds = %114
  %121 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %122 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @PATTERN(i32 %125)
  %127 = call i64 @GET_CODE(i32 %126)
  %128 = load i64, i64* @ASM_INPUT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @PATTERN(i32 %131)
  %133 = call i64 @asm_noperands(i32 %132)
  %134 = icmp slt i64 %133, 0
  br label %135

135:                                              ; preds = %130, %120
  %136 = phi i1 [ false, %120 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @gcc_assert(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @ia64_safe_type(i32 %139)
  %141 = load i64, i64* @TYPE_L, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %145 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %135
  br label %229

149:                                              ; preds = %103
  %150 = load i32, i32* %7, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = call i64 @get_attr_first_insn(i32 %153)
  %155 = load i64, i64* @FIRST_INSN_YES, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %159 = call i32 @free_bundle_state(%struct.bundle_state* %158)
  br label %324

160:                                              ; preds = %152, %149
  %161 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %162 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @dfa_pre_cycle_insn, align 8
  %165 = call i32 @state_transition(i32 %163, i32* %164)
  %166 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %167 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @state_transition(i32 %168, i32* null)
  %170 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %171 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @try_issue_nops(%struct.bundle_state* %174, i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %160
  br label %324

179:                                              ; preds = %160
  %180 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @try_issue_insn(%struct.bundle_state* %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  br label %324

185:                                              ; preds = %179
  %186 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %187 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @PATTERN(i32 %190)
  %192 = call i64 @GET_CODE(i32 %191)
  %193 = load i64, i64* @ASM_INPUT, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %185
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @PATTERN(i32 %196)
  %198 = call i64 @asm_noperands(i32 %197)
  %199 = icmp sge i64 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %195, %185
  %201 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %202 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = srem i32 %203, 3
  %205 = sub nsw i32 3, %204
  %206 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %207 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %209 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = srem i32 %210, 3
  %212 = sub nsw i32 3, %211
  %213 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %214 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %228

217:                                              ; preds = %195
  %218 = load i32, i32* %8, align 4
  %219 = call i64 @ia64_safe_type(i32 %218)
  %220 = load i64, i64* @TYPE_L, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %224 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %222, %217
  br label %228

228:                                              ; preds = %227, %200
  br label %229

229:                                              ; preds = %228, %148
  br label %230

230:                                              ; preds = %229, %102
  %231 = load i32, i32* %8, align 4
  %232 = call i64 @ia64_safe_type(i32 %231)
  %233 = load i64, i64* @TYPE_B, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %230
  %236 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %237 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %238, 1
  %240 = srem i32 %239, 3
  %241 = sub nsw i32 2, %240
  %242 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %243 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %235, %230
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %316

249:                                              ; preds = %246
  %250 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %251 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = srem i32 %252, 3
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %316

255:                                              ; preds = %249
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %289, label %258

258:                                              ; preds = %255
  %259 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %260 = call i64 @insert_bundle_state(%struct.bundle_state* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %289

262:                                              ; preds = %258
  %263 = call %struct.bundle_state* (...) @get_free_bundle_state()
  store %struct.bundle_state* %263, %struct.bundle_state** %13, align 8
  %264 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %265 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %12, align 4
  %267 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %268 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %267, i32 0, i32 6
  %269 = load %struct.bundle_state*, %struct.bundle_state** %268, align 8
  store %struct.bundle_state* %269, %struct.bundle_state** %14, align 8
  %270 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %271 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %272 = bitcast %struct.bundle_state* %270 to i8*
  %273 = bitcast %struct.bundle_state* %271 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %272, i8* align 8 %273, i64 56, i1 false)
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %276 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %275, i32 0, i32 5
  store i32 %274, i32* %276, align 4
  %277 = load %struct.bundle_state*, %struct.bundle_state** %14, align 8
  %278 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %279 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %278, i32 0, i32 6
  store %struct.bundle_state* %277, %struct.bundle_state** %279, align 8
  %280 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  %281 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %280, i32 0, i32 5
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %284 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @dfa_state_size, align 4
  %287 = call i32 @memcpy(i32 %282, i32 %285, i32 %286)
  %288 = load %struct.bundle_state*, %struct.bundle_state** %13, align 8
  store %struct.bundle_state* %288, %struct.bundle_state** %11, align 8
  br label %289

289:                                              ; preds = %262, %258, %255
  %290 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %291 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %292 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = srem i32 %293, 3
  %295 = sub nsw i32 3, %294
  %296 = call i32 @try_issue_nops(%struct.bundle_state* %290, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %289
  br label %324

299:                                              ; preds = %289
  %300 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %301 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = srem i32 %302, 3
  %304 = sub nsw i32 3, %303
  %305 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %306 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 8
  %307 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %308 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = srem i32 %309, 3
  %311 = sub nsw i32 3, %310
  %312 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %313 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %299, %249, %246
  %317 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %318 = call i64 @insert_bundle_state(%struct.bundle_state* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = load %struct.bundle_state*, %struct.bundle_state** %11, align 8
  %322 = call i32 @free_bundle_state(%struct.bundle_state* %321)
  br label %323

323:                                              ; preds = %320, %316
  br label %324

324:                                              ; preds = %323, %298, %184, %178, %157, %119, %113, %99, %81, %75
  ret void
}

declare dso_local %struct.bundle_state* @get_free_bundle_state(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @INSN_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @try_issue_nops(%struct.bundle_state*, i32) #1

declare dso_local i32 @try_issue_insn(%struct.bundle_state*, i32) #1

declare dso_local i32 @state_transition(i32, i32*) #1

declare dso_local i32 @free_bundle_state(%struct.bundle_state*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @asm_noperands(i32) #1

declare dso_local i64 @ia64_safe_type(i32) #1

declare dso_local i64 @get_attr_first_insn(i32) #1

declare dso_local i64 @insert_bundle_state(%struct.bundle_state*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
