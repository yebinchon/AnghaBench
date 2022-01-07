; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimate_index_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimate_index_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPA = common dso_local global i64 0, align 8
@TARGET_MAVERICK = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@TARGET_REALLY_IWMMXT = common dso_local global i64 0, align 8
@TARGET_LDRD = common dso_local global i64 0, align 8
@DFmode = common dso_local global i32 0, align 4
@arm_arch4 = common dso_local global i64 0, align 8
@HImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i64 0, align 8
@MULT = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@LSHIFTRT = common dso_local global i32 0, align 4
@ASHIFTRT = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i32 0, align 4
@ROTATERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32)* @arm_legitimate_index_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_legitimate_index_p(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GET_CODE(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %4
  %21 = load i64, i64* @TARGET_FPA, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @TARGET_MAVERICK, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @GET_MODE_CLASS(i32 %27)
  %29 = load i64, i64* @MODE_FLOAT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @TARGET_MAVERICK, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DImode, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @CONST_INT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @INTVAL(i32 %43)
  %45 = icmp slt i32 %44, 1024
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @INTVAL(i32 %47)
  %49 = icmp sgt i32 %48, -1024
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @INTVAL(i32 %51)
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %50, %46, %42, %38
  %56 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %38 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %285

58:                                               ; preds = %34, %31, %23, %4
  %59 = load i64, i64* @TARGET_REALLY_IWMMXT, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @VALID_IWMMXT_REG_MODE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load i64, i64* @TARGET_LDRD, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @DImode, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @CONST_INT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @INTVAL(i32 %77)
  %79 = icmp slt i32 %78, 1024
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @INTVAL(i32 %81)
  %83 = icmp sgt i32 %82, -1024
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @INTVAL(i32 %85)
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %84, %80, %76, %72
  %90 = phi i1 [ false, %80 ], [ false, %76 ], [ false, %72 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %285

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %61, %58
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @arm_address_register_rtx_p(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @GET_MODE_SIZE(i32 %99)
  %101 = icmp sle i32 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %285

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @DImode, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @DFmode, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @CONST_INT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @INTVAL(i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i64, i64* @TARGET_LDRD, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, -256
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 256
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i1 [ false, %120 ], [ %125, %123 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %285

129:                                              ; preds = %115
  %130 = load i32, i32* %12, align 4
  %131 = icmp sgt i32 %130, -4096
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %133, 4092
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ false, %129 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %5, align 4
  br label %285

138:                                              ; preds = %111
  %139 = load i64, i64* @TARGET_LDRD, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @arm_address_register_rtx_p(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %141, %138
  %147 = phi i1 [ false, %138 ], [ %145, %141 ]
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %285

149:                                              ; preds = %107
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @GET_MODE_SIZE(i32 %150)
  %152 = icmp sle i32 %151, 4
  br i1 %152, label %153, label %243

153:                                              ; preds = %149
  %154 = load i64, i64* @arm_arch4, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @HImode, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %243, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @QImode, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @SIGN_EXTEND, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %243, label %168

168:                                              ; preds = %164, %160, %153
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @MULT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @XEXP(i32 %173, i32 0)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @XEXP(i32 %175, i32 1)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i64 @arm_address_register_rtx_p(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @SImode, align 4
  %184 = call i64 @power_of_two_operand(i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %181, %172
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i64 @arm_address_register_rtx_p(i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @SImode, align 4
  %194 = call i64 @power_of_two_operand(i32 %192, i32 %193)
  %195 = icmp ne i64 %194, 0
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i1 [ false, %186 ], [ %195, %191 ]
  br label %198

198:                                              ; preds = %196, %181
  %199 = phi i1 [ true, %181 ], [ %197, %196 ]
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %5, align 4
  br label %285

201:                                              ; preds = %168
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @LSHIFTRT, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %217, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @ASHIFTRT, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %217, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @ASHIFT, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @ROTATERT, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %241

217:                                              ; preds = %213, %209, %205, %201
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @XEXP(i32 %218, i32 1)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @XEXP(i32 %220, i32 0)
  %222 = load i32, i32* %9, align 4
  %223 = call i64 @arm_address_register_rtx_p(i32 %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %217
  %226 = load i32, i32* %15, align 4
  %227 = call i32 @GET_CODE(i32 %226)
  %228 = load i32, i32* @CONST_INT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load i32, i32* %15, align 4
  %232 = call i32 @INTVAL(i32 %231)
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = load i32, i32* %15, align 4
  %236 = call i32 @INTVAL(i32 %235)
  %237 = icmp sle i32 %236, 31
  br label %238

238:                                              ; preds = %234, %230, %225, %217
  %239 = phi i1 [ false, %230 ], [ false, %225 ], [ false, %217 ], [ %237, %234 ]
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %5, align 4
  br label %285

241:                                              ; preds = %213
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %164, %156, %149
  %244 = load i64, i64* @arm_arch4, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @HImode, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %258, label %250

250:                                              ; preds = %246
  %251 = load i64, i64* %8, align 8
  %252 = load i64, i64* @SIGN_EXTEND, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @QImode, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %246
  store i32 256, i32* %10, align 4
  br label %260

259:                                              ; preds = %254, %250
  store i32 4096, i32* %10, align 4
  br label %260

260:                                              ; preds = %259, %258
  br label %267

261:                                              ; preds = %243
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @HImode, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i32 4095, i32 4096
  store i32 %266, i32* %10, align 4
  br label %267

267:                                              ; preds = %261, %260
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @CONST_INT, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %282

271:                                              ; preds = %267
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @INTVAL(i32 %272)
  %274 = load i32, i32* %10, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = load i32, i32* %7, align 4
  %278 = call i32 @INTVAL(i32 %277)
  %279 = load i32, i32* %10, align 4
  %280 = sub nsw i32 0, %279
  %281 = icmp sgt i32 %278, %280
  br label %282

282:                                              ; preds = %276, %271, %267
  %283 = phi i1 [ false, %271 ], [ false, %267 ], [ %281, %276 ]
  %284 = zext i1 %283 to i32
  store i32 %284, i32* %5, align 4
  br label %285

285:                                              ; preds = %282, %238, %198, %146, %135, %126, %102, %89, %55
  %286 = load i32, i32* %5, align 4
  ret i32 %286
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @VALID_IWMMXT_REG_MODE(i32) #1

declare dso_local i64 @arm_address_register_rtx_p(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @power_of_two_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
