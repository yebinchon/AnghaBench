; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_free_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_reg_free_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_reg_used = common dso_local global i32 0, align 4
@reload_reg_unavailable = common dso_local global i32 0, align 4
@reload_reg_used_in_other_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr = common dso_local global i32 0, align 4
@reload_reg_used_in_op_addr_reload = common dso_local global i32 0, align 4
@reload_reg_used_in_insn = common dso_local global i32 0, align 4
@reload_n_operands = common dso_local global i32 0, align 4
@reload_reg_used_in_input_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_inpaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_output_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_outaddr_addr = common dso_local global i32* null, align 8
@reload_reg_used_in_input = common dso_local global i32* null, align 8
@reload_reg_used_in_output = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @reload_reg_free_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_reg_free_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @reload_reg_used, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @TEST_HARD_REG_BIT(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @reload_reg_unavailable, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @TEST_HARD_REG_BIT(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %468

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %466 [
    i32 128, label %21
    i32 137, label %107
    i32 136, label %174
    i32 138, label %213
    i32 129, label %243
    i32 131, label %273
    i32 133, label %303
    i32 134, label %336
    i32 130, label %362
    i32 135, label %417
    i32 132, label %459
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @reload_reg_used_in_other_addr, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TEST_HARD_REG_BIT(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @TEST_HARD_REG_BIT(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TEST_HARD_REG_BIT(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @reload_reg_used_in_insn, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @TEST_HARD_REG_BIT(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31, %26, %21
  store i32 0, i32* %4, align 4
  br label %468

42:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %103, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @reload_n_operands, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @TEST_HARD_REG_BIT(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %101, label %56

56:                                               ; preds = %47
  %57 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @TEST_HARD_REG_BIT(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %56
  %66 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @TEST_HARD_REG_BIT(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %65
  %75 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @TEST_HARD_REG_BIT(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %74
  %84 = load i32*, i32** @reload_reg_used_in_input, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @TEST_HARD_REG_BIT(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %83
  %93 = load i32*, i32** @reload_reg_used_in_output, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @TEST_HARD_REG_BIT(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92, %83, %74, %65, %56, %47
  store i32 0, i32* %4, align 4
  br label %468

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %43

106:                                              ; preds = %43
  store i32 1, i32* %4, align 4
  br label %468

107:                                              ; preds = %19
  %108 = load i32, i32* @reload_reg_used_in_insn, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i64 @TEST_HARD_REG_BIT(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i64 @TEST_HARD_REG_BIT(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %107
  store i32 0, i32* %4, align 4
  br label %468

118:                                              ; preds = %112
  %119 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i64 @TEST_HARD_REG_BIT(i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %468

124:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %140, %124
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @reload_n_operands, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load i32*, i32** @reload_reg_used_in_input, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i64 @TEST_HARD_REG_BIT(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %468

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %125

143:                                              ; preds = %125
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %170, %143
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @reload_n_operands, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i64 @TEST_HARD_REG_BIT(i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %150
  %160 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @TEST_HARD_REG_BIT(i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %159, %150
  store i32 0, i32* %4, align 4
  br label %468

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %146

173:                                              ; preds = %146
  store i32 1, i32* %4, align 4
  br label %468

174:                                              ; preds = %19
  %175 = load i32*, i32** @reload_reg_used_in_input_addr, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i64 @TEST_HARD_REG_BIT(i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %174
  %184 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i64 @TEST_HARD_REG_BIT(i32 %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183, %174
  store i32 0, i32* %4, align 4
  br label %468

193:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %209, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i32*, i32** @reload_reg_used_in_input, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %5, align 4
  %205 = call i64 @TEST_HARD_REG_BIT(i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  store i32 0, i32* %4, align 4
  br label %468

208:                                              ; preds = %198
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %194

212:                                              ; preds = %194
  store i32 1, i32* %4, align 4
  br label %468

213:                                              ; preds = %19
  %214 = load i32*, i32** @reload_reg_used_in_inpaddr_addr, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %5, align 4
  %220 = call i64 @TEST_HARD_REG_BIT(i32 %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  store i32 0, i32* %4, align 4
  br label %468

223:                                              ; preds = %213
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %239, %223
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* %6, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load i32*, i32** @reload_reg_used_in_input, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %5, align 4
  %235 = call i64 @TEST_HARD_REG_BIT(i32 %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %468

238:                                              ; preds = %228
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %8, align 4
  br label %224

242:                                              ; preds = %224
  store i32 1, i32* %4, align 4
  br label %468

243:                                              ; preds = %19
  %244 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %5, align 4
  %250 = call i64 @TEST_HARD_REG_BIT(i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  store i32 0, i32* %4, align 4
  br label %468

253:                                              ; preds = %243
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %269, %253
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %272

258:                                              ; preds = %254
  %259 = load i32*, i32** @reload_reg_used_in_output, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %5, align 4
  %265 = call i64 @TEST_HARD_REG_BIT(i32 %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  store i32 0, i32* %4, align 4
  br label %468

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %254

272:                                              ; preds = %254
  store i32 1, i32* %4, align 4
  br label %468

273:                                              ; preds = %19
  %274 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %5, align 4
  %280 = call i64 @TEST_HARD_REG_BIT(i32 %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %273
  store i32 0, i32* %4, align 4
  br label %468

283:                                              ; preds = %273
  store i32 0, i32* %8, align 4
  br label %284

284:                                              ; preds = %299, %283
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %302

288:                                              ; preds = %284
  %289 = load i32*, i32** @reload_reg_used_in_output, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %5, align 4
  %295 = call i64 @TEST_HARD_REG_BIT(i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %288
  store i32 0, i32* %4, align 4
  br label %468

298:                                              ; preds = %288
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %284

302:                                              ; preds = %284
  store i32 1, i32* %4, align 4
  br label %468

303:                                              ; preds = %19
  store i32 0, i32* %8, align 4
  br label %304

304:                                              ; preds = %319, %303
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @reload_n_operands, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %322

308:                                              ; preds = %304
  %309 = load i32*, i32** @reload_reg_used_in_input, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %5, align 4
  %315 = call i64 @TEST_HARD_REG_BIT(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  store i32 0, i32* %4, align 4
  br label %468

318:                                              ; preds = %308
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %8, align 4
  br label %304

322:                                              ; preds = %304
  %323 = load i32, i32* @reload_reg_used_in_insn, align 4
  %324 = load i32, i32* %5, align 4
  %325 = call i64 @TEST_HARD_REG_BIT(i32 %323, i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %333, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %329 = load i32, i32* %5, align 4
  %330 = call i64 @TEST_HARD_REG_BIT(i32 %328, i32 %329)
  %331 = icmp ne i64 %330, 0
  %332 = xor i1 %331, true
  br label %333

333:                                              ; preds = %327, %322
  %334 = phi i1 [ false, %322 ], [ %332, %327 ]
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %4, align 4
  br label %468

336:                                              ; preds = %19
  store i32 0, i32* %8, align 4
  br label %337

337:                                              ; preds = %352, %336
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* @reload_n_operands, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %355

341:                                              ; preds = %337
  %342 = load i32*, i32** @reload_reg_used_in_input, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %5, align 4
  %348 = call i64 @TEST_HARD_REG_BIT(i32 %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %341
  store i32 0, i32* %4, align 4
  br label %468

351:                                              ; preds = %341
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %8, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %8, align 4
  br label %337

355:                                              ; preds = %337
  %356 = load i32, i32* @reload_reg_used_in_op_addr_reload, align 4
  %357 = load i32, i32* %5, align 4
  %358 = call i64 @TEST_HARD_REG_BIT(i32 %356, i32 %357)
  %359 = icmp ne i64 %358, 0
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  store i32 %361, i32* %4, align 4
  br label %468

362:                                              ; preds = %19
  %363 = load i32, i32* @reload_reg_used_in_insn, align 4
  %364 = load i32, i32* %5, align 4
  %365 = call i64 @TEST_HARD_REG_BIT(i32 %363, i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  store i32 0, i32* %4, align 4
  br label %468

368:                                              ; preds = %362
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %384, %368
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* @reload_n_operands, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %387

373:                                              ; preds = %369
  %374 = load i32*, i32** @reload_reg_used_in_output, align 8
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %5, align 4
  %380 = call i64 @TEST_HARD_REG_BIT(i32 %378, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  store i32 0, i32* %4, align 4
  br label %468

383:                                              ; preds = %373
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %8, align 4
  br label %369

387:                                              ; preds = %369
  %388 = load i32, i32* %6, align 4
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %413, %387
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* @reload_n_operands, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %416

393:                                              ; preds = %389
  %394 = load i32*, i32** @reload_reg_used_in_output_addr, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* %5, align 4
  %400 = call i64 @TEST_HARD_REG_BIT(i32 %398, i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %411, label %402

402:                                              ; preds = %393
  %403 = load i32*, i32** @reload_reg_used_in_outaddr_addr, align 8
  %404 = load i32, i32* %8, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %5, align 4
  %409 = call i64 @TEST_HARD_REG_BIT(i32 %407, i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %402, %393
  store i32 0, i32* %4, align 4
  br label %468

412:                                              ; preds = %402
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %8, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %8, align 4
  br label %389

416:                                              ; preds = %389
  store i32 1, i32* %4, align 4
  br label %468

417:                                              ; preds = %19
  store i32 0, i32* %8, align 4
  br label %418

418:                                              ; preds = %442, %417
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* @reload_n_operands, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %445

422:                                              ; preds = %418
  %423 = load i32*, i32** @reload_reg_used_in_input, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %5, align 4
  %429 = call i64 @TEST_HARD_REG_BIT(i32 %427, i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %440, label %431

431:                                              ; preds = %422
  %432 = load i32*, i32** @reload_reg_used_in_output, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %5, align 4
  %438 = call i64 @TEST_HARD_REG_BIT(i32 %436, i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %431, %422
  store i32 0, i32* %4, align 4
  br label %468

441:                                              ; preds = %431
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %8, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %8, align 4
  br label %418

445:                                              ; preds = %418
  %446 = load i32, i32* @reload_reg_used_in_insn, align 4
  %447 = load i32, i32* %5, align 4
  %448 = call i64 @TEST_HARD_REG_BIT(i32 %446, i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %456, label %450

450:                                              ; preds = %445
  %451 = load i32, i32* @reload_reg_used_in_op_addr, align 4
  %452 = load i32, i32* %5, align 4
  %453 = call i64 @TEST_HARD_REG_BIT(i32 %451, i32 %452)
  %454 = icmp ne i64 %453, 0
  %455 = xor i1 %454, true
  br label %456

456:                                              ; preds = %450, %445
  %457 = phi i1 [ false, %445 ], [ %455, %450 ]
  %458 = zext i1 %457 to i32
  store i32 %458, i32* %4, align 4
  br label %468

459:                                              ; preds = %19
  %460 = load i32, i32* @reload_reg_used_in_other_addr, align 4
  %461 = load i32, i32* %5, align 4
  %462 = call i64 @TEST_HARD_REG_BIT(i32 %460, i32 %461)
  %463 = icmp ne i64 %462, 0
  %464 = xor i1 %463, true
  %465 = zext i1 %464 to i32
  store i32 %465, i32* %4, align 4
  br label %468

466:                                              ; preds = %19
  %467 = call i32 (...) @gcc_unreachable()
  br label %468

468:                                              ; preds = %18, %41, %101, %106, %117, %123, %138, %168, %173, %192, %207, %212, %222, %237, %242, %252, %267, %272, %282, %297, %302, %317, %333, %350, %355, %367, %382, %411, %416, %440, %456, %459, %466
  %469 = load i32, i32* %4, align 4
  ret i32 %469
}

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
