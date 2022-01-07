; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_carry_flag_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_carry_flag_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@UNEQ = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@TARGET_IEEE_FP = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@CCFPmode = common dso_local global i64 0, align 8
@CCFPUmode = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i8* null, align 8
@const1_rtx = common dso_local global i8* null, align 8
@CONST_INT = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i8* null, align 8
@no_new_pseudos = common dso_local global i64 0, align 8
@ix86_compare_op0 = common dso_local global i8* null, align 8
@ix86_compare_op1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8**)* @ix86_expand_carry_flag_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_expand_carry_flag_compare(i32 %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @GET_MODE(i8* %17)
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @VOIDmode, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @GET_MODE(i8* %23)
  br label %28

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @GET_MODE(i8* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* @TARGET_64BIT, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @TImode, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @DImode, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %267

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @FLOAT_MODE_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %139

45:                                               ; preds = %41
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 137
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @UNEQ, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @LTGT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ORDERED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @UNORDERED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59, %55, %51, %48, %45
  store i32 0, i32* %5, align 4
  br label %267

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 134
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @UNLE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 132
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @UNGT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78, %75, %71, %68
  %83 = load i32, i32* @TARGET_IEEE_FP, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %8, align 8
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %15, align 8
  store i8* %88, i8** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @swap_condition(i32 %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %82, %78
  %92 = call i32 (...) @start_sequence()
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @NULL_RTX, align 4
  %97 = call i8* @ix86_expand_fp_compare(i32 %93, i8* %94, i8* %95, i32 %96, i8** %11, i8** %12)
  store i8* %97, i8** %13, align 8
  %98 = call i8* (...) @get_insns()
  store i8* %98, i8** %14, align 8
  %99 = call i32 (...) @end_sequence()
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %91
  store i32 0, i32* %5, align 4
  br label %267

106:                                              ; preds = %102
  %107 = load i8*, i8** %13, align 8
  %108 = call i8* @XEXP(i8* %107, i32 0)
  %109 = call i32 @GET_MODE(i8* %108)
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @CCFPmode, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %120, label %113

113:                                              ; preds = %106
  %114 = load i8*, i8** %13, align 8
  %115 = call i8* @XEXP(i8* %114, i32 0)
  %116 = call i32 @GET_MODE(i8* %115)
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @CCFPUmode, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113, %106
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @GET_CODE(i8* %121)
  %123 = call i32 @ix86_fp_compare_code_to_integer(i32 %122)
  store i32 %123, i32* %6, align 4
  br label %127

124:                                              ; preds = %113
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @GET_CODE(i8* %125)
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 129
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 135
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %267

134:                                              ; preds = %130, %127
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @emit_insn(i8* %135)
  %137 = load i8*, i8** %13, align 8
  %138 = load i8**, i8*** %9, align 8
  store i8* %137, i8** %138, align 8
  store i32 1, i32* %5, align 4
  br label %267

139:                                              ; preds = %41
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @INTEGRAL_MODE_P(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %267

144:                                              ; preds = %139
  %145 = load i32, i32* %6, align 4
  switch i32 %145, label %234 [
    i32 129, label %146
    i32 135, label %146
    i32 137, label %147
    i32 128, label %147
    i32 133, label %158
    i32 131, label %158
    i32 130, label %194
    i32 136, label %194
    i32 132, label %214
    i32 134, label %214
  ]

146:                                              ; preds = %144, %144
  br label %235

147:                                              ; preds = %144, %144
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** @const0_rtx, align 8
  %150 = icmp ne i8* %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  store i32 0, i32* %5, align 4
  br label %267

152:                                              ; preds = %147
  %153 = load i8*, i8** @const1_rtx, align 8
  store i8* %153, i8** %8, align 8
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 137
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 129, i32 135
  store i32 %157, i32* %6, align 4
  br label %235

158:                                              ; preds = %144, %144
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @GET_CODE(i8* %159)
  %161 = load i32, i32* @CONST_INT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %158
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @INTVAL(i8* %164)
  %166 = add nsw i32 %165, 1
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @GET_MODE(i8* %167)
  %169 = call i8* @gen_int_mode(i32 %166, i32 %168)
  store i8* %169, i8** %8, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** @const0_rtx, align 8
  %172 = icmp eq i8* %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %163
  %174 = load i8*, i8** %8, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @GET_MODE(i8* %175)
  %177 = call i32 @x86_64_immediate_operand(i8* %174, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173, %163
  store i32 0, i32* %5, align 4
  br label %267

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, 133
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 135, i32 129
  store i32 %184, i32* %6, align 4
  br label %193

185:                                              ; preds = %158
  %186 = load i8*, i8** %8, align 8
  store i8* %186, i8** %16, align 8
  %187 = load i8*, i8** %7, align 8
  store i8* %187, i8** %8, align 8
  %188 = load i8*, i8** %16, align 8
  store i8* %188, i8** %7, align 8
  %189 = load i32, i32* %6, align 4
  %190 = icmp eq i32 %189, 133
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 129, i32 135
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %185, %180
  br label %235

194:                                              ; preds = %144, %144
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @DImode, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** @const0_rtx, align 8
  %201 = icmp ne i8* %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198, %194
  store i32 0, i32* %5, align 4
  br label %267

203:                                              ; preds = %198
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @GET_MODE_BITSIZE(i32 %204)
  %206 = sub nsw i32 %205, 1
  %207 = shl i32 1, %206
  %208 = load i32, i32* %10, align 4
  %209 = call i8* @gen_int_mode(i32 %207, i32 %208)
  store i8* %209, i8** %8, align 8
  %210 = load i32, i32* %6, align 4
  %211 = icmp eq i32 %210, 130
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 135, i32 129
  store i32 %213, i32* %6, align 4
  br label %235

214:                                              ; preds = %144, %144
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @DImode, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i8*, i8** %8, align 8
  %220 = load i8*, i8** @constm1_rtx, align 8
  %221 = icmp ne i8* %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218, %214
  store i32 0, i32* %5, align 4
  br label %267

223:                                              ; preds = %218
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @GET_MODE_BITSIZE(i32 %224)
  %226 = sub nsw i32 %225, 1
  %227 = shl i32 1, %226
  %228 = load i32, i32* %10, align 4
  %229 = call i8* @gen_int_mode(i32 %227, i32 %228)
  store i8* %229, i8** %8, align 8
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 132
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 135, i32 129
  store i32 %233, i32* %6, align 4
  br label %235

234:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %267

235:                                              ; preds = %223, %203, %193, %152, %146
  %236 = load i8*, i8** %7, align 8
  %237 = load i64, i64* @VOIDmode, align 8
  %238 = call i32 @nonimmediate_operand(i8* %236, i64 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %235
  %241 = load i64, i64* @no_new_pseudos, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  br label %267

244:                                              ; preds = %240
  %245 = load i32, i32* %10, align 4
  %246 = load i8*, i8** %7, align 8
  %247 = call i8* @force_reg(i32 %245, i8* %246)
  store i8* %247, i8** %7, align 8
  br label %248

248:                                              ; preds = %244, %235
  %249 = load i8*, i8** %7, align 8
  store i8* %249, i8** @ix86_compare_op0, align 8
  %250 = load i8*, i8** %8, align 8
  store i8* %250, i8** @ix86_compare_op1, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i8* @ix86_expand_compare(i32 %251, i32* null, i32* null)
  %253 = load i8**, i8*** %9, align 8
  store i8* %252, i8** %253, align 8
  %254 = load i8**, i8*** %9, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @GET_CODE(i8* %255)
  %257 = icmp eq i32 %256, 129
  br i1 %257, label %263, label %258

258:                                              ; preds = %248
  %259 = load i8**, i8*** %9, align 8
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @GET_CODE(i8* %260)
  %262 = icmp eq i32 %261, 135
  br label %263

263:                                              ; preds = %258, %248
  %264 = phi i1 [ true, %248 ], [ %262, %258 ]
  %265 = zext i1 %264 to i32
  %266 = call i32 @gcc_assert(i32 %265)
  store i32 1, i32* %5, align 4
  br label %267

267:                                              ; preds = %263, %243, %234, %222, %202, %179, %151, %143, %134, %133, %105, %67, %40
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @GET_MODE(i8*) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i8* @ix86_expand_fp_compare(i32, i8*, i8*, i32, i8**, i8**) #1

declare dso_local i8* @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i8* @XEXP(i8*, i32) #1

declare dso_local i32 @ix86_fp_compare_code_to_integer(i32) #1

declare dso_local i32 @GET_CODE(i8*) #1

declare dso_local i32 @emit_insn(i8*) #1

declare dso_local i32 @INTEGRAL_MODE_P(i32) #1

declare dso_local i8* @gen_int_mode(i32, i32) #1

declare dso_local i32 @INTVAL(i8*) #1

declare dso_local i32 @x86_64_immediate_operand(i8*, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @nonimmediate_operand(i8*, i64) #1

declare dso_local i8* @force_reg(i32, i8*) #1

declare dso_local i8* @ix86_expand_compare(i32, i32*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
