; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_select_cc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_select_cc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_FLOAT = common dso_local global i64 0, align 8
@CCFPmode = common dso_local global i32 0, align 4
@TARGET_HARD_FLOAT = common dso_local global i32 0, align 4
@TARGET_MAVERICK = common dso_local global i32 0, align 4
@CCFPEmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@ASHIFT = common dso_local global i64 0, align 8
@ASHIFTRT = common dso_local global i64 0, align 8
@LSHIFTRT = common dso_local global i64 0, align 8
@ROTATE = common dso_local global i64 0, align 8
@ROTATERT = common dso_local global i64 0, align 8
@CC_SWPmode = common dso_local global i32 0, align 4
@NEG = common dso_local global i64 0, align 8
@CC_Zmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@QImode = common dso_local global i64 0, align 8
@GEU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@AND = common dso_local global i64 0, align 8
@DOM_CC_X_AND_Y = common dso_local global i32 0, align 4
@IOR = common dso_local global i64 0, align 8
@DOM_CC_X_OR_Y = common dso_local global i32 0, align 4
@TARGET_THUMB = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@CC_Nmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@XOR = common dso_local global i64 0, align 8
@MULT = common dso_local global i64 0, align 8
@NOT = common dso_local global i64 0, align 8
@TARGET_ARM = common dso_local global i64 0, align 8
@CC_NOOVmode = common dso_local global i32 0, align 4
@CC_Cmode = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_select_cc_mode(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @GET_MODE(i64 %8)
  %10 = call i64 @GET_MODE_CLASS(i64 %9)
  %11 = load i64, i64* @MODE_FLOAT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %27 [
    i32 141, label %15
    i32 135, label %15
    i32 128, label %15
    i32 134, label %15
    i32 129, label %15
    i32 130, label %15
    i32 131, label %15
    i32 132, label %15
    i32 133, label %15
    i32 136, label %15
    i32 137, label %17
    i32 138, label %17
    i32 139, label %17
    i32 140, label %17
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %16 = load i32, i32* @CCFPmode, align 4
  store i32 %16, i32* %4, align 4
  br label %401

17:                                               ; preds = %13, %13, %13, %13
  %18 = load i32, i32* @TARGET_HARD_FLOAT, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @TARGET_MAVERICK, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @CCFPmode, align 4
  store i32 %24, i32* %4, align 4
  br label %401

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @CCFPEmode, align 4
  store i32 %26, i32* %4, align 4
  br label %401

27:                                               ; preds = %13
  %28 = call i32 (...) @gcc_unreachable()
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @GET_MODE(i64 %31)
  %33 = load i64, i64* @SImode, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @REG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @GET_CODE(i64 %41)
  %43 = load i64, i64* @ASHIFT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @GET_CODE(i64 %46)
  %48 = load i64, i64* @ASHIFTRT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @LSHIFTRT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @GET_CODE(i64 %56)
  %58 = load i64, i64* @ROTATE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @GET_CODE(i64 %61)
  %63 = load i64, i64* @ROTATERT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %55, %50, %45, %40
  %66 = load i32, i32* @CC_SWPmode, align 4
  store i32 %66, i32* %4, align 4
  br label %401

67:                                               ; preds = %60, %35, %30
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @GET_MODE(i64 %68)
  %70 = load i64, i64* @SImode, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @REG_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @GET_CODE(i64 %77)
  %79 = load i64, i64* @NEG, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 141
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 135
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @CC_Zmode, align 4
  store i32 %88, i32* %4, align 4
  br label %401

89:                                               ; preds = %84, %76, %72, %67
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @GET_MODE(i64 %90)
  %92 = load i64, i64* @SImode, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %159

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @GET_CODE(i64 %95)
  %97 = load i64, i64* @ASHIFT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %159

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @XEXP(i64 %100, i32 1)
  %102 = call i64 @GET_CODE(i64 %101)
  %103 = load i64, i64* @CONST_INT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %159

105:                                              ; preds = %99
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @XEXP(i64 %106, i32 1)
  %108 = call i32 @INTVAL(i64 %107)
  %109 = icmp eq i32 %108, 24
  br i1 %109, label %110, label %159

110:                                              ; preds = %105
  %111 = load i64, i64* %6, align 8
  %112 = call i64 @XEXP(i64 %111, i32 0)
  %113 = call i64 @GET_CODE(i64 %112)
  %114 = load i64, i64* @SUBREG, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %159

116:                                              ; preds = %110
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @XEXP(i64 %117, i32 0)
  %119 = call i64 @SUBREG_REG(i64 %118)
  %120 = call i64 @GET_CODE(i64 %119)
  %121 = load i64, i64* @MEM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %116
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @XEXP(i64 %124, i32 0)
  %126 = call i64 @SUBREG_REG(i64 %125)
  %127 = call i64 @GET_MODE(i64 %126)
  %128 = load i64, i64* @QImode, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %123
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 141
  br i1 %132, label %152, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %134, 135
  br i1 %135, label %152, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @GEU, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @GTU, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @LTU, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @LEU, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148, %144, %140, %136, %133, %130
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @GET_CODE(i64 %153)
  %155 = load i64, i64* @CONST_INT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @CC_Zmode, align 4
  store i32 %158, i32* %4, align 4
  br label %401

159:                                              ; preds = %152, %148, %123, %116, %110, %105, %99, %94, %89
  %160 = load i64, i64* %6, align 8
  %161 = call i64 @GET_CODE(i64 %160)
  %162 = load i64, i64* @IF_THEN_ELSE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %159
  %165 = load i64, i64* %6, align 8
  %166 = call i64 @XEXP(i64 %165, i32 2)
  %167 = load i64, i64* @const0_rtx, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load i64, i64* %6, align 8
  %171 = call i64 @XEXP(i64 %170, i32 2)
  %172 = load i64, i64* @const1_rtx, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %169, %164
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @XEXP(i64 %175, i32 0)
  %177 = call i64 @COMPARISON_P(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load i64, i64* %6, align 8
  %181 = call i64 @XEXP(i64 %180, i32 1)
  %182 = call i64 @COMPARISON_P(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load i64, i64* %6, align 8
  %186 = call i64 @XEXP(i64 %185, i32 0)
  %187 = load i64, i64* %6, align 8
  %188 = call i64 @XEXP(i64 %187, i32 1)
  %189 = load i64, i64* %6, align 8
  %190 = call i64 @XEXP(i64 %189, i32 2)
  %191 = call i32 @INTVAL(i64 %190)
  %192 = call i32 @arm_select_dominance_cc_mode(i64 %186, i64 %188, i32 %191)
  store i32 %192, i32* %4, align 4
  br label %401

193:                                              ; preds = %179, %174, %169, %159
  %194 = load i64, i64* %6, align 8
  %195 = call i64 @GET_CODE(i64 %194)
  %196 = load i64, i64* @AND, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %193
  %199 = load i64, i64* %6, align 8
  %200 = call i64 @XEXP(i64 %199, i32 0)
  %201 = call i64 @COMPARISON_P(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load i64, i64* %6, align 8
  %205 = call i64 @XEXP(i64 %204, i32 1)
  %206 = call i64 @COMPARISON_P(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load i64, i64* %6, align 8
  %210 = call i64 @XEXP(i64 %209, i32 0)
  %211 = load i64, i64* %6, align 8
  %212 = call i64 @XEXP(i64 %211, i32 1)
  %213 = load i32, i32* @DOM_CC_X_AND_Y, align 4
  %214 = call i32 @arm_select_dominance_cc_mode(i64 %210, i64 %212, i32 %213)
  store i32 %214, i32* %4, align 4
  br label %401

215:                                              ; preds = %203, %198, %193
  %216 = load i64, i64* %6, align 8
  %217 = call i64 @GET_CODE(i64 %216)
  %218 = load i64, i64* @IOR, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load i64, i64* %6, align 8
  %222 = call i64 @XEXP(i64 %221, i32 0)
  %223 = call i64 @COMPARISON_P(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %220
  %226 = load i64, i64* %6, align 8
  %227 = call i64 @XEXP(i64 %226, i32 1)
  %228 = call i64 @COMPARISON_P(i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i64, i64* %6, align 8
  %232 = call i64 @XEXP(i64 %231, i32 0)
  %233 = load i64, i64* %6, align 8
  %234 = call i64 @XEXP(i64 %233, i32 1)
  %235 = load i32, i32* @DOM_CC_X_OR_Y, align 4
  %236 = call i32 @arm_select_dominance_cc_mode(i64 %232, i64 %234, i32 %235)
  store i32 %236, i32* %4, align 4
  br label %401

237:                                              ; preds = %225, %220, %215
  %238 = load i64, i64* @TARGET_THUMB, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %263

240:                                              ; preds = %237
  %241 = load i64, i64* %6, align 8
  %242 = call i64 @GET_MODE(i64 %241)
  %243 = load i64, i64* @SImode, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %240
  %246 = load i32, i32* %5, align 4
  %247 = icmp eq i32 %246, 141
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %5, align 4
  %250 = icmp eq i32 %249, 135
  br i1 %250, label %251, label %263

251:                                              ; preds = %248, %245
  %252 = load i64, i64* %6, align 8
  %253 = call i64 @GET_CODE(i64 %252)
  %254 = load i64, i64* @ZERO_EXTRACT, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i64, i64* %6, align 8
  %258 = call i64 @XEXP(i64 %257, i32 1)
  %259 = load i64, i64* @const1_rtx, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* @CC_Nmode, align 4
  store i32 %262, i32* %4, align 4
  br label %401

263:                                              ; preds = %256, %251, %248, %240, %237
  %264 = load i64, i64* %6, align 8
  %265 = call i64 @GET_MODE(i64 %264)
  %266 = load i64, i64* @SImode, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %354

268:                                              ; preds = %263
  %269 = load i64, i64* %7, align 8
  %270 = load i64, i64* @const0_rtx, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %354

272:                                              ; preds = %268
  %273 = load i32, i32* %5, align 4
  %274 = icmp eq i32 %273, 141
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %5, align 4
  %277 = icmp eq i32 %276, 135
  br i1 %277, label %284, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %5, align 4
  %280 = icmp eq i32 %279, 137
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %5, align 4
  %283 = icmp eq i32 %282, 140
  br i1 %283, label %284, label %354

284:                                              ; preds = %281, %278, %275, %272
  %285 = load i64, i64* %6, align 8
  %286 = call i64 @GET_CODE(i64 %285)
  %287 = load i64, i64* @PLUS, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %352, label %289

289:                                              ; preds = %284
  %290 = load i64, i64* %6, align 8
  %291 = call i64 @GET_CODE(i64 %290)
  %292 = load i64, i64* @MINUS, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %352, label %294

294:                                              ; preds = %289
  %295 = load i64, i64* %6, align 8
  %296 = call i64 @GET_CODE(i64 %295)
  %297 = load i64, i64* @AND, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %352, label %299

299:                                              ; preds = %294
  %300 = load i64, i64* %6, align 8
  %301 = call i64 @GET_CODE(i64 %300)
  %302 = load i64, i64* @IOR, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %352, label %304

304:                                              ; preds = %299
  %305 = load i64, i64* %6, align 8
  %306 = call i64 @GET_CODE(i64 %305)
  %307 = load i64, i64* @XOR, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %352, label %309

309:                                              ; preds = %304
  %310 = load i64, i64* %6, align 8
  %311 = call i64 @GET_CODE(i64 %310)
  %312 = load i64, i64* @MULT, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %352, label %314

314:                                              ; preds = %309
  %315 = load i64, i64* %6, align 8
  %316 = call i64 @GET_CODE(i64 %315)
  %317 = load i64, i64* @NOT, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %352, label %319

319:                                              ; preds = %314
  %320 = load i64, i64* %6, align 8
  %321 = call i64 @GET_CODE(i64 %320)
  %322 = load i64, i64* @NEG, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %352, label %324

324:                                              ; preds = %319
  %325 = load i64, i64* %6, align 8
  %326 = call i64 @GET_CODE(i64 %325)
  %327 = load i64, i64* @LSHIFTRT, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %352, label %329

329:                                              ; preds = %324
  %330 = load i64, i64* %6, align 8
  %331 = call i64 @GET_CODE(i64 %330)
  %332 = load i64, i64* @ASHIFT, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %352, label %334

334:                                              ; preds = %329
  %335 = load i64, i64* %6, align 8
  %336 = call i64 @GET_CODE(i64 %335)
  %337 = load i64, i64* @ASHIFTRT, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %352, label %339

339:                                              ; preds = %334
  %340 = load i64, i64* %6, align 8
  %341 = call i64 @GET_CODE(i64 %340)
  %342 = load i64, i64* @ROTATERT, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %352, label %344

344:                                              ; preds = %339
  %345 = load i64, i64* @TARGET_ARM, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %344
  %348 = load i64, i64* %6, align 8
  %349 = call i64 @GET_CODE(i64 %348)
  %350 = load i64, i64* @ZERO_EXTRACT, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %347, %339, %334, %329, %324, %319, %314, %309, %304, %299, %294, %289, %284
  %353 = load i32, i32* @CC_NOOVmode, align 4
  store i32 %353, i32* %4, align 4
  br label %401

354:                                              ; preds = %347, %344, %281, %268, %263
  %355 = load i64, i64* %6, align 8
  %356 = call i64 @GET_MODE(i64 %355)
  %357 = load i64, i64* @QImode, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %367

359:                                              ; preds = %354
  %360 = load i32, i32* %5, align 4
  %361 = icmp eq i32 %360, 141
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %5, align 4
  %364 = icmp eq i32 %363, 135
  br i1 %364, label %365, label %367

365:                                              ; preds = %362, %359
  %366 = load i32, i32* @CC_Zmode, align 4
  store i32 %366, i32* %4, align 4
  br label %401

367:                                              ; preds = %362, %354
  %368 = load i64, i64* %6, align 8
  %369 = call i64 @GET_MODE(i64 %368)
  %370 = load i64, i64* @SImode, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %399

372:                                              ; preds = %367
  %373 = load i32, i32* %5, align 4
  %374 = load i32, i32* @LTU, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %372
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* @GEU, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %376, %372
  %381 = load i64, i64* %6, align 8
  %382 = call i64 @GET_CODE(i64 %381)
  %383 = load i64, i64* @PLUS, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %399

385:                                              ; preds = %380
  %386 = load i64, i64* %6, align 8
  %387 = call i64 @XEXP(i64 %386, i32 0)
  %388 = load i64, i64* %7, align 8
  %389 = call i64 @rtx_equal_p(i64 %387, i64 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %397, label %391

391:                                              ; preds = %385
  %392 = load i64, i64* %6, align 8
  %393 = call i64 @XEXP(i64 %392, i32 1)
  %394 = load i64, i64* %7, align 8
  %395 = call i64 @rtx_equal_p(i64 %393, i64 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %391, %385
  %398 = load i32, i32* @CC_Cmode, align 4
  store i32 %398, i32* %4, align 4
  br label %401

399:                                              ; preds = %391, %380, %376, %367
  %400 = load i32, i32* @CCmode, align 4
  store i32 %400, i32* %4, align 4
  br label %401

401:                                              ; preds = %399, %397, %365, %352, %261, %230, %208, %184, %157, %87, %65, %25, %23, %15
  %402 = load i32, i32* %4, align 4
  ret i32 %402
}

declare dso_local i64 @GET_MODE_CLASS(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i32 @arm_select_dominance_cc_mode(i64, i64, i32) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
