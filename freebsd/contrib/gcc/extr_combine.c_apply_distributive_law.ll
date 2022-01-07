; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_apply_distributive_law.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_apply_distributive_law.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_unsafe_math_optimizations = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apply_distributive_law to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_distributive_law(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @GET_MODE(i32 %12)
  %14 = call i64 @FLOAT_MODE_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %2, align 4
  br label %271

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 131
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 134
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @XOR, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PLUS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MINUS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %2, align 4
  br label %271

41:                                               ; preds = %35, %31, %27, %24, %21
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @XEXP(i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @XEXP(i32 %44, i32 1)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @OBJECT_P(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @OBJECT_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* %2, align 4
  br label %271

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @expand_compound_operation(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @expand_compound_operation(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @GET_CODE(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @GET_CODE(i32 %63)
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %2, align 4
  br label %271

68:                                               ; preds = %55
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %167 [
    i32 130, label %70
    i32 132, label %70
    i32 134, label %70
    i32 131, label %70
    i32 129, label %81
    i32 133, label %92
    i32 128, label %93
  ]

70:                                               ; preds = %68, %68, %68, %68
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PLUS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MINUS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %3, align 4
  store i32 %79, i32* %2, align 4
  br label %271

80:                                               ; preds = %74
  br label %169

81:                                               ; preds = %68
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @PLUS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @MINUS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  store i32 %90, i32* %2, align 4
  br label %271

91:                                               ; preds = %85, %81
  br label %169

92:                                               ; preds = %68
  br label %169

93:                                               ; preds = %68
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @SUBREG_REG(i32 %94)
  %96 = call i32 @GET_MODE(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @SUBREG_REG(i32 %97)
  %99 = call i32 @GET_MODE(i32 %98)
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %151, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @SUBREG_BYTE(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @SUBREG_BYTE(i32 %104)
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %151, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @subreg_lowpart_p(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @GET_MODE(i32 %112)
  %114 = call i32 @GET_MODE_CLASS(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @SUBREG_REG(i32 %115)
  %117 = call i32 @GET_MODE(i32 %116)
  %118 = call i32 @GET_MODE_CLASS(i32 %117)
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %151, label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @GET_MODE(i32 %121)
  %123 = call i32 @GET_MODE_SIZE(i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @SUBREG_REG(i32 %124)
  %126 = call i32 @GET_MODE(i32 %125)
  %127 = call i32 @GET_MODE_SIZE(i32 %126)
  %128 = icmp sgt i32 %123, %127
  br i1 %128, label %151, label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @GET_MODE(i32 %130)
  %132 = call i32 @VECTOR_MODE_P(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @SUBREG_REG(i32 %135)
  %137 = call i32 @GET_MODE(i32 %136)
  %138 = call i32 @GET_MODE_SIZE(i32 %137)
  %139 = load i32, i32* @UNITS_PER_WORD, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %151, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @GET_MODE(i32 %142)
  %144 = call i32 @GET_MODE_BITSIZE(i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @SUBREG_REG(i32 %145)
  %147 = call i32 @GET_MODE(i32 %146)
  %148 = call i32 @GET_MODE_BITSIZE(i32 %147)
  %149 = call i32 @TRULY_NOOP_TRUNCATION(i32 %144, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %141, %134, %129, %120, %111, %107, %101, %93
  %152 = load i32, i32* %3, align 4
  store i32 %152, i32* %2, align 4
  br label %271

153:                                              ; preds = %141
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @SUBREG_REG(i32 %155)
  %157 = call i32 @GET_MODE(i32 %156)
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @SUBREG_REG(i32 %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @SUBREG_REG(i32 %160)
  %162 = call i32 @simplify_gen_binary(i32 %154, i32 %157, i32 %159, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @GET_MODE(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @gen_lowpart(i32 %164, i32 %165)
  store i32 %166, i32* %2, align 4
  br label %271

167:                                              ; preds = %68
  %168 = load i32, i32* %3, align 4
  store i32 %168, i32* %2, align 4
  br label %271

169:                                              ; preds = %92, %91, %80
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @COMMUTATIVE_ARITH_P(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @XEXP(i32 %174, i32 0)
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @XEXP(i32 %176, i32 0)
  %178 = call i64 @rtx_equal_p(i32 %175, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @XEXP(i32 %181, i32 0)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @XEXP(i32 %183, i32 1)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @XEXP(i32 %185, i32 1)
  store i32 %186, i32* %7, align 4
  br label %242

187:                                              ; preds = %173, %169
  %188 = load i32, i32* %6, align 4
  %189 = call i64 @COMMUTATIVE_ARITH_P(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %187
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @XEXP(i32 %192, i32 0)
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @XEXP(i32 %194, i32 1)
  %196 = call i64 @rtx_equal_p(i32 %193, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @XEXP(i32 %199, i32 0)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @XEXP(i32 %201, i32 1)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @XEXP(i32 %203, i32 0)
  store i32 %204, i32* %7, align 4
  br label %241

205:                                              ; preds = %191, %187
  %206 = load i32, i32* %6, align 4
  %207 = call i64 @COMMUTATIVE_ARITH_P(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %205
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @XEXP(i32 %210, i32 1)
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @XEXP(i32 %212, i32 0)
  %214 = call i64 @rtx_equal_p(i32 %211, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @XEXP(i32 %217, i32 1)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @XEXP(i32 %219, i32 0)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @XEXP(i32 %221, i32 1)
  store i32 %222, i32* %7, align 4
  br label %240

223:                                              ; preds = %209, %205
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @XEXP(i32 %224, i32 1)
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @XEXP(i32 %226, i32 1)
  %228 = call i64 @rtx_equal_p(i32 %225, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @XEXP(i32 %231, i32 1)
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @XEXP(i32 %233, i32 0)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @XEXP(i32 %235, i32 0)
  store i32 %236, i32* %7, align 4
  br label %239

237:                                              ; preds = %223
  %238 = load i32, i32* %3, align 4
  store i32 %238, i32* %2, align 4
  br label %271

239:                                              ; preds = %230
  br label %240

240:                                              ; preds = %239, %216
  br label %241

241:                                              ; preds = %240, %198
  br label %242

242:                                              ; preds = %241, %180
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @GET_MODE(i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @simplify_gen_binary(i32 %243, i32 %245, i32 %246, i32 %247)
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @XOR, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %242
  %253 = load i32, i32* %5, align 4
  %254 = icmp eq i32 %253, 131
  br i1 %254, label %255, label %263

255:                                              ; preds = %252
  store i32 134, i32* %5, align 4
  %256 = load i32, i32* @NOT, align 4
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @GET_MODE(i32 %257)
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @GET_MODE(i32 %260)
  %262 = call i32 @simplify_gen_unary(i32 %256, i32 %258, i32 %259, i32 %261)
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %255, %252, %242
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* %3, align 4
  %266 = call i32 @GET_MODE(i32 %265)
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @apply_distributive_law(i32 %267)
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @simplify_gen_binary(i32 %264, i32 %266, i32 %268, i32 %269)
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %263, %237, %167, %153, %151, %89, %78, %66, %53, %39, %19
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @OBJECT_P(i32) #1

declare dso_local i32 @expand_compound_operation(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @subreg_lowpart_p(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @simplify_gen_binary(i32, i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i64 @COMMUTATIVE_ARITH_P(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @simplify_gen_unary(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
