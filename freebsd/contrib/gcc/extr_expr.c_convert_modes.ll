; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_convert_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_convert_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@direct_load = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @convert_modes(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @SUBREG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @SUBREG_PROMOTED_VAR_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @SUBREG_REG(i32 %24)
  %26 = call i64 @GET_MODE(i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = call i64 @GET_MODE_SIZE(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GET_MODE_SIZE(i32 %29)
  %31 = icmp sge i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @gen_lowpart(i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %32, %23, %19, %4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @GET_MODE(i32 %42)
  %44 = load i64, i64* @VOIDmode, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @GET_MODE(i32 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %5, align 4
  br label %251

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @GET_MODE_CLASS(i32 %60)
  %62 = load i64, i64* @MODE_INT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @GET_MODE_BITSIZE(i32 %65)
  %67 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %68 = mul nsw i32 2, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @GET_CODE(i32 %71)
  %73 = load i64, i64* @CONST_INT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @INTVAL(i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @INTVAL(i32 %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @VOIDmode, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @GET_MODE_BITSIZE(i32 %89)
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @GET_MODE_BITSIZE(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 1, %95
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %11, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %92, %87, %79
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @immed_double_const(i32 %101, i32 0, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %251

104:                                              ; preds = %75, %70, %64, %59, %56
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @GET_CODE(i32 %105)
  %107 = load i64, i64* @CONST_INT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @GET_MODE_BITSIZE(i32 %110)
  %112 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %173, label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @GET_MODE_CLASS(i32 %115)
  %117 = load i64, i64* @MODE_INT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %222

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @GET_MODE_CLASS(i32 %120)
  %122 = load i64, i64* @MODE_INT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %222

124:                                              ; preds = %119
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @GET_CODE(i32 %125)
  %127 = load i64, i64* @CONST_DOUBLE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %173, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @GET_MODE_SIZE(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @GET_MODE_SIZE(i32 %132)
  %134 = icmp sle i64 %131, %133
  br i1 %134, label %135, label %222

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @MEM_P(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @MEM_VOLATILE_P(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = load i64*, i64** @direct_load, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %143, %139, %135
  %151 = load i32, i32* %8, align 4
  %152 = call i64 @REG_P(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %222

154:                                              ; preds = %150
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @HARD_REGISTER_P(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @REGNO(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @HARD_REGNO_MODE_OK(i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %158, %154
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @GET_MODE_BITSIZE(i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = call i64 @GET_MODE(i32 %167)
  %169 = trunc i64 %168 to i32
  %170 = call i32 @GET_MODE_BITSIZE(i32 %169)
  %171 = call i64 @TRULY_NOOP_TRUNCATION(i32 %166, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %222

173:                                              ; preds = %164, %143, %124, %109
  %174 = load i32, i32* %8, align 4
  %175 = call i64 @GET_CODE(i32 %174)
  %176 = load i64, i64* @CONST_INT, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %218

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* @VOIDmode, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %178
  %184 = load i32, i32* %6, align 4
  %185 = call i64 @GET_MODE_SIZE(i32 %184)
  %186 = load i32, i32* %7, align 4
  %187 = call i64 @GET_MODE_SIZE(i32 %186)
  %188 = icmp sgt i64 %185, %187
  br i1 %188, label %189, label %218

189:                                              ; preds = %183
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @INTVAL(i32 %190)
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @GET_MODE_BITSIZE(i32 %193)
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %14, align 4
  %196 = shl i32 1, %195
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* %13, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %189
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = sub nsw i32 %204, 1
  %206 = shl i32 1, %205
  %207 = and i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = load i32, i32* %14, align 4
  %211 = shl i32 -1, %210
  %212 = load i32, i32* %13, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %209, %202, %189
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @gen_int_mode(i32 %215, i32 %216)
  store i32 %217, i32* %5, align 4
  br label %251

218:                                              ; preds = %183, %178, %173
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @gen_lowpart(i32 %219, i32 %220)
  store i32 %221, i32* %5, align 4
  br label %251

222:                                              ; preds = %164, %158, %150, %129, %119, %114
  %223 = load i32, i32* %6, align 4
  %224 = call i64 @VECTOR_MODE_P(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %222
  %227 = load i32, i32* %8, align 4
  %228 = call i64 @GET_MODE(i32 %227)
  %229 = load i64, i64* @VOIDmode, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %226
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @GET_MODE_BITSIZE(i32 %232)
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @GET_MODE_BITSIZE(i32 %234)
  %236 = icmp eq i32 %233, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @gcc_assert(i32 %237)
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @simplify_gen_subreg(i32 %239, i32 %240, i32 %241, i32 0)
  store i32 %242, i32* %5, align 4
  br label %251

243:                                              ; preds = %226, %222
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @gen_reg_rtx(i32 %244)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @convert_move(i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %243, %231, %218, %214, %100, %54
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SUBREG_PROMOTED_VAR_P(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_PROMOTED_UNSIGNED_P(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @immed_double_const(i32, i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @HARD_REGISTER_P(i32) #1

declare dso_local i64 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @gen_int_mode(i32, i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @convert_move(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
