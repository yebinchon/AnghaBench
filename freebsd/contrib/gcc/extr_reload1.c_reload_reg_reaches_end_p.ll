; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_reaches_end_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_reaches_end_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_n_operands = common dso_local global i32 0, align 4
@reload_reg_used_in_output_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_outaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_output = common dso_local global i32* null, align 8
@reload_reg_used_in_input_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_inpaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_input = common dso_local global i32* null, align 8
@reload_reg_used_in_op_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr_reload = common dso_local global i32 0, align 4
@reload_reg_used_in_insn = common dso_local global i32 0, align 4
@reload_reg_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @reload_reg_reaches_end_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_reg_reaches_end_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %382 [
    i32 128, label %10
    i32 132, label %11
    i32 136, label %99
    i32 138, label %99
    i32 137, label %211
    i32 133, label %251
    i32 134, label %295
    i32 135, label %351
    i32 130, label %353
    i32 129, label %353
    i32 131, label %353
  ]

10:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %384

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %72, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @reload_n_operands, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TEST_HARD_REG_BIT(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %16
  %26 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TEST_HARD_REG_BIT(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %70, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** @reload_reg_used_in_output, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TEST_HARD_REG_BIT(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %34
  %44 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @TEST_HARD_REG_BIT(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %43
  %53 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TEST_HARD_REG_BIT(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load i32*, i32** @reload_reg_used_in_input, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @TEST_HARD_REG_BIT(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %52, %43, %34, %25, %16
  store i32 0, i32* %4, align 4
  br label %384

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %12

75:                                               ; preds = %12
  %76 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @TEST_HARD_REG_BIT(i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @TEST_HARD_REG_BIT(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @reload_reg_used_in_insn, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @TEST_HARD_REG_BIT(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @reload_reg_used, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @TEST_HARD_REG_BIT(i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %85, %80, %75
  %97 = phi i1 [ false, %85 ], [ false, %80 ], [ false, %75 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %384

99:                                               ; preds = %3, %3
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %116, %99
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @reload_n_operands, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32*, i32** @reload_reg_used_in_input, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @TEST_HARD_REG_BIT(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %384

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %101

119:                                              ; preds = %101
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %146, %119
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @reload_n_operands, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @TEST_HARD_REG_BIT(i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %126
  %136 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @TEST_HARD_REG_BIT(i32 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135, %126
  store i32 0, i32* %4, align 4
  br label %384

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %122

149:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %183, %149
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @reload_n_operands, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %150
  %155 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @TEST_HARD_REG_BIT(i32 %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %154
  %164 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @TEST_HARD_REG_BIT(i32 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %163
  %173 = load i32*, i32** @reload_reg_used_in_output, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @TEST_HARD_REG_BIT(i32 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172, %163, %154
  store i32 0, i32* %4, align 4
  br label %384

182:                                              ; preds = %172
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %150

186:                                              ; preds = %150
  %187 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @TEST_HARD_REG_BIT(i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %384

192:                                              ; preds = %186
  %193 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @TEST_HARD_REG_BIT(i32 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* @reload_reg_used_in_insn, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @TEST_HARD_REG_BIT(i32 %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @reload_reg_used, align 4
  %204 = load i32, i32* %5, align 4
  %205 = call i32 @TEST_HARD_REG_BIT(i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  br label %208

208:                                              ; preds = %202, %197, %192
  %209 = phi i1 [ false, %197 ], [ false, %192 ], [ %207, %202 ]
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %4, align 4
  br label %384

211:                                              ; preds = %3
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %247, %211
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @reload_n_operands, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %250

218:                                              ; preds = %214
  %219 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @TEST_HARD_REG_BIT(i32 %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %245, label %227

227:                                              ; preds = %218
  %228 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @TEST_HARD_REG_BIT(i32 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %227
  %237 = load i32*, i32** @reload_reg_used_in_input, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @TEST_HARD_REG_BIT(i32 %241, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %236, %227, %218
  store i32 0, i32* %4, align 4
  br label %384

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %214

250:                                              ; preds = %214
  br label %251

251:                                              ; preds = %3, %250
  store i32 0, i32* %8, align 4
  br label %252

252:                                              ; preds = %285, %251
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @reload_n_operands, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %288

256:                                              ; preds = %252
  %257 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @TEST_HARD_REG_BIT(i32 %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %256
  %266 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @TEST_HARD_REG_BIT(i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %283, label %274

274:                                              ; preds = %265
  %275 = load i32*, i32** @reload_reg_used_in_output, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @TEST_HARD_REG_BIT(i32 %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274, %265, %256
  store i32 0, i32* %4, align 4
  br label %384

284:                                              ; preds = %274
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %252

288:                                              ; preds = %252
  %289 = load i32, i32* @reload_reg_used, align 4
  %290 = load i32, i32* %5, align 4
  %291 = call i32 @TEST_HARD_REG_BIT(i32 %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %4, align 4
  br label %384

295:                                              ; preds = %3
  store i32 0, i32* %8, align 4
  br label %296

296:                                              ; preds = %329, %295
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @reload_n_operands, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %332

300:                                              ; preds = %296
  %301 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @TEST_HARD_REG_BIT(i32 %305, i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %327, label %309

309:                                              ; preds = %300
  %310 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %5, align 4
  %316 = call i32 @TEST_HARD_REG_BIT(i32 %314, i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %327, label %318

318:                                              ; preds = %309
  %319 = load i32*, i32** @reload_reg_used_in_output, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @TEST_HARD_REG_BIT(i32 %323, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %318, %309, %300
  store i32 0, i32* %4, align 4
  br label %384

328:                                              ; preds = %318
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %8, align 4
  br label %296

332:                                              ; preds = %296
  %333 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %334 = load i32, i32* %5, align 4
  %335 = call i32 @TEST_HARD_REG_BIT(i32 %333, i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %332
  %338 = load i32, i32* @reload_reg_used_in_insn, align 4
  %339 = load i32, i32* %5, align 4
  %340 = call i32 @TEST_HARD_REG_BIT(i32 %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load i32, i32* @reload_reg_used, align 4
  %344 = load i32, i32* %5, align 4
  %345 = call i32 @TEST_HARD_REG_BIT(i32 %343, i32 %344)
  %346 = icmp ne i32 %345, 0
  %347 = xor i1 %346, true
  br label %348

348:                                              ; preds = %342, %337, %332
  %349 = phi i1 [ false, %337 ], [ false, %332 ], [ %347, %342 ]
  %350 = zext i1 %349 to i32
  store i32 %350, i32* %4, align 4
  br label %384

351:                                              ; preds = %3
  %352 = load i32, i32* @reload_n_operands, align 4
  store i32 %352, i32* %6, align 4
  br label %353

353:                                              ; preds = %3, %3, %3, %351
  store i32 0, i32* %8, align 4
  br label %354

354:                                              ; preds = %378, %353
  %355 = load i32, i32* %8, align 4
  %356 = load i32, i32* %6, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %381

358:                                              ; preds = %354
  %359 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %5, align 4
  %365 = call i32 @TEST_HARD_REG_BIT(i32 %363, i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %376, label %367

367:                                              ; preds = %358
  %368 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %369 = load i32, i32* %8, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %5, align 4
  %374 = call i32 @TEST_HARD_REG_BIT(i32 %372, i32 %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %367, %358
  store i32 0, i32* %4, align 4
  br label %384

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %8, align 4
  br label %354

381:                                              ; preds = %354
  store i32 1, i32* %4, align 4
  br label %384

382:                                              ; preds = %3
  %383 = call i32 (...) @gcc_unreachable()
  br label %384

384:                                              ; preds = %10, %70, %96, %114, %144, %181, %191, %208, %245, %283, %288, %327, %348, %376, %381, %382
  %385 = load i32, i32* %4, align 4
  ret i32 %385
}

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
