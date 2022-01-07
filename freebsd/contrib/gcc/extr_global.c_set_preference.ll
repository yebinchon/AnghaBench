; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_set_preference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_global.c_set_preference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i32* null, align 8
@reg_allocno = common dso_local global i64* null, align 8
@hard_reg_copy_preferences = common dso_local global i32 0, align 4
@hard_reg_preferences = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@hard_reg_full_preferences = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_preference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_preference(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = call i8* @GET_RTX_FORMAT(i64 %11)
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 101
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @XEXP(i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @REG_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @REGNO(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %74

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @SUBREG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @SUBREG_REG(i32 %33)
  %35 = call i64 @REG_P(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @SUBREG_REG(i32 %38)
  %40 = call i32 @REGNO(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SUBREG_REG(i32 %41)
  %43 = call i32 @REGNO(i32 %42)
  %44 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @SUBREG_REG(i32 %47)
  %49 = call i32 @REGNO(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @SUBREG_REG(i32 %50)
  %52 = call i64 @GET_MODE(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @SUBREG_BYTE(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @GET_MODE(i32 %55)
  %57 = call i64 @subreg_regno_offset(i32 %49, i64 %52, i32 %54, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %71

62:                                               ; preds = %37
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SUBREG_BYTE(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @GET_MODE(i32 %65)
  %67 = call i32 @REGMODE_NATURAL_SIZE(i64 %66)
  %68 = sdiv i32 %64, %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %62, %46
  br label %73

72:                                               ; preds = %32, %27
  br label %298

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @REG_P(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @REGNO(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %128

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = call i64 @GET_CODE(i32 %82)
  %84 = load i64, i64* @SUBREG, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @SUBREG_REG(i32 %87)
  %89 = call i64 @REG_P(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %86
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @SUBREG_REG(i32 %92)
  %94 = call i32 @REGNO(i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @SUBREG_REG(i32 %95)
  %97 = call i32 @REGNO(i32 %96)
  %98 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %91
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @SUBREG_REG(i32 %101)
  %103 = call i32 @REGNO(i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @SUBREG_REG(i32 %104)
  %106 = call i64 @GET_MODE(i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @SUBREG_BYTE(i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @GET_MODE(i32 %109)
  %111 = call i64 @subreg_regno_offset(i32 %103, i64 %106, i32 %108, i64 %110)
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  br label %125

116:                                              ; preds = %91
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @SUBREG_BYTE(i32 %117)
  %119 = load i32, i32* %3, align 4
  %120 = call i64 @GET_MODE(i32 %119)
  %121 = call i32 @REGMODE_NATURAL_SIZE(i64 %120)
  %122 = sdiv i32 %118, %121
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %116, %100
  br label %127

126:                                              ; preds = %86, %81
  br label %298

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %78
  %129 = load i32*, i32** @reg_renumber, align 8
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp uge i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32*, i32** @reg_renumber, align 8
  %137 = load i32, i32* %5, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %135, %128
  %142 = load i32*, i32** @reg_renumber, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp uge i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32*, i32** @reg_renumber, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %148, %141
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %226

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %161 = icmp uge i32 %159, %160
  br i1 %161, label %162, label %226

162:                                              ; preds = %158
  %163 = load i64*, i64** @reg_allocno, align 8
  %164 = load i32, i32* %5, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = icmp sge i64 %167, 0
  br i1 %168, label %169, label %226

169:                                              ; preds = %162
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sub i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %225

176:                                              ; preds = %169
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32, i32* @hard_reg_copy_preferences, align 4
  %181 = load i64*, i64** @reg_allocno, align 8
  %182 = load i32, i32* %5, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @SET_REGBIT(i32 %180, i64 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %176
  %189 = load i32, i32* @hard_reg_preferences, align 4
  %190 = load i64*, i64** @reg_allocno, align 8
  %191 = load i32, i32* %5, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @SET_REGBIT(i32 %189, i64 %194, i32 %195)
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %221, %188
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32**, i32*** @hard_regno_nregs, align 8
  %202 = load i32, i32* %6, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %3, align 4
  %207 = call i64 @GET_MODE(i32 %206)
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %200, %209
  %211 = icmp ult i32 %199, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %198
  %213 = load i32, i32* @hard_reg_full_preferences, align 4
  %214 = load i64*, i64** @reg_allocno, align 8
  %215 = load i32, i32* %5, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @SET_REGBIT(i32 %213, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %212
  %222 = load i32, i32* %8, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %198

224:                                              ; preds = %198
  br label %225

225:                                              ; preds = %224, %169
  br label %226

226:                                              ; preds = %225, %162, %158, %154
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %298

230:                                              ; preds = %226
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %233 = icmp uge i32 %231, %232
  br i1 %233, label %234, label %298

234:                                              ; preds = %230
  %235 = load i64*, i64** @reg_allocno, align 8
  %236 = load i32, i32* %6, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = icmp sge i64 %239, 0
  br i1 %240, label %241, label %298

241:                                              ; preds = %234
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %248, label %297

248:                                              ; preds = %241
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load i32, i32* @hard_reg_copy_preferences, align 4
  %253 = load i64*, i64** @reg_allocno, align 8
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @SET_REGBIT(i32 %252, i64 %257, i32 %258)
  br label %260

260:                                              ; preds = %251, %248
  %261 = load i32, i32* @hard_reg_preferences, align 4
  %262 = load i64*, i64** @reg_allocno, align 8
  %263 = load i32, i32* %6, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @SET_REGBIT(i32 %261, i64 %266, i32 %267)
  %269 = load i32, i32* %5, align 4
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %293, %260
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* %5, align 4
  %273 = load i32**, i32*** @hard_regno_nregs, align 8
  %274 = load i32, i32* %5, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = call i64 @GET_MODE(i32 %278)
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %272, %281
  %283 = icmp ult i32 %271, %282
  br i1 %283, label %284, label %296

284:                                              ; preds = %270
  %285 = load i32, i32* @hard_reg_full_preferences, align 4
  %286 = load i64*, i64** @reg_allocno, align 8
  %287 = load i32, i32* %6, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @SET_REGBIT(i32 %285, i64 %290, i32 %291)
  br label %293

293:                                              ; preds = %284
  %294 = load i32, i32* %8, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %270

296:                                              ; preds = %270
  br label %297

297:                                              ; preds = %296, %241
  br label %298

298:                                              ; preds = %72, %126, %297, %234, %230, %226
  ret void
}

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @subreg_regno_offset(i32, i64, i32, i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @REGMODE_NATURAL_SIZE(i64) #1

declare dso_local i32 @SET_REGBIT(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
