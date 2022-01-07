; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_expand_field_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_expand_field_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRICT_LOW_PART = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@BITS_BIG_ENDIAN = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8
@nonzero_sign_valid = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@AND = common dso_local global i64 0, align 8
@NOT = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i64 0, align 8
@IOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_field_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_field_assignment(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %11

11:                                               ; preds = %1, %164, %224
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SET_DEST(i32 %12)
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @STRICT_LOW_PART, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @SET_DEST(i32 %18)
  %20 = call i32 @XEXP(i32 %19, i32 0)
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @SUBREG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @SET_DEST(i32 %25)
  %27 = call i32 @XEXP(i32 %26, i32 0)
  %28 = call i32 @SUBREG_REG(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @SET_DEST(i32 %29)
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i32 @GET_MODE(i32 %31)
  %33 = call i32 @GET_MODE_BITSIZE(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @SET_DEST(i32 %34)
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = call i32 @subreg_lsb(i32 %36)
  %38 = call i32 @GEN_INT(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %179

39:                                               ; preds = %17, %11
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @SET_DEST(i32 %40)
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @ZERO_EXTRACT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %134

45:                                               ; preds = %39
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @SET_DEST(i32 %46)
  %48 = call i32 @XEXP(i32 %47, i32 1)
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @CONST_INT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @SET_DEST(i32 %53)
  %55 = call i32 @XEXP(i32 %54, i32 0)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @SET_DEST(i32 %56)
  %58 = call i32 @XEXP(i32 %57, i32 1)
  %59 = call i32 @INTVAL(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @SET_DEST(i32 %60)
  %62 = call i32 @XEXP(i32 %61, i32 2)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @GET_CODE(i32 %63)
  %65 = load i64, i64* @CONST_INT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @INTVAL(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @GET_MODE(i32 %72)
  %74 = call i32 @GET_MODE_BITSIZE(i32 %73)
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %263

77:                                               ; preds = %67, %52
  %78 = load i64, i64* @BITS_BIG_ENDIAN, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %133

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = call i64 @GET_CODE(i32 %81)
  %83 = load i64, i64* @CONST_INT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @GET_MODE(i32 %86)
  %88 = call i32 @GET_MODE_BITSIZE(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @INTVAL(i32 %91)
  %93 = sub nsw i32 %90, %92
  %94 = call i32 @GEN_INT(i32 %93)
  store i32 %94, i32* %4, align 4
  br label %132

95:                                               ; preds = %80
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @GET_CODE(i32 %96)
  %98 = load i64, i64* @MINUS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @XEXP(i32 %101, i32 1)
  %103 = call i64 @GET_CODE(i32 %102)
  %104 = load i64, i64* @CONST_INT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @XEXP(i32 %107, i32 1)
  %109 = call i32 @INTVAL(i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @GET_MODE(i32 %110)
  %112 = call i32 @GET_MODE_BITSIZE(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp eq i32 %109, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @XEXP(i32 %117, i32 0)
  store i32 %118, i32* %4, align 4
  br label %131

119:                                              ; preds = %106, %100, %95
  %120 = load i64, i64* @MINUS, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @GET_MODE(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @GET_MODE(i32 %123)
  %125 = call i32 @GET_MODE_BITSIZE(i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @GEN_INT(i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @simplify_gen_binary(i64 %120, i32 %122, i32 %128, i32 %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %119, %116
  br label %132

132:                                              ; preds = %131, %85
  br label %133

133:                                              ; preds = %132, %77
  br label %178

134:                                              ; preds = %45, %39
  %135 = load i32, i32* %2, align 4
  %136 = call i32 @SET_DEST(i32 %135)
  %137 = call i64 @GET_CODE(i32 %136)
  %138 = load i64, i64* @SUBREG, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %177

140:                                              ; preds = %134
  %141 = load i64, i64* @nonzero_sign_valid, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %140
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @SET_DEST(i32 %144)
  %146 = call i32 @GET_MODE(i32 %145)
  %147 = call i32 @GET_MODE_SIZE(i32 %146)
  %148 = load i32, i32* @UNITS_PER_WORD, align 4
  %149 = sub nsw i32 %148, 1
  %150 = add nsw i32 %147, %149
  %151 = load i32, i32* @UNITS_PER_WORD, align 4
  %152 = sdiv i32 %150, %151
  %153 = load i32, i32* %2, align 4
  %154 = call i32 @SET_DEST(i32 %153)
  %155 = call i32 @SUBREG_REG(i32 %154)
  %156 = call i32 @GET_MODE(i32 %155)
  %157 = call i32 @GET_MODE_SIZE(i32 %156)
  %158 = load i32, i32* @UNITS_PER_WORD, align 4
  %159 = sub nsw i32 %158, 1
  %160 = add nsw i32 %157, %159
  %161 = load i32, i32* @UNITS_PER_WORD, align 4
  %162 = sdiv i32 %160, %161
  %163 = icmp eq i32 %152, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %143
  %165 = load i32, i32* @VOIDmode, align 4
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @SET_DEST(i32 %166)
  %168 = call i32 @SUBREG_REG(i32 %167)
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @SET_DEST(i32 %169)
  %171 = call i32 @SUBREG_REG(i32 %170)
  %172 = call i32 @GET_MODE(i32 %171)
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @SET_SRC(i32 %173)
  %175 = call i32 @gen_lowpart(i32 %172, i32 %174)
  %176 = call i32 @gen_rtx_SET(i32 %165, i32 %168, i32 %175)
  store i32 %176, i32* %2, align 4
  br label %11

177:                                              ; preds = %143, %140, %134
  br label %263

178:                                              ; preds = %133
  br label %179

179:                                              ; preds = %178, %24
  br label %180

180:                                              ; preds = %191, %179
  %181 = load i32, i32* %3, align 4
  %182 = call i64 @GET_CODE(i32 %181)
  %183 = load i64, i64* @SUBREG, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* %3, align 4
  %187 = call i64 @subreg_lowpart_p(i32 %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %185, %180
  %190 = phi i1 [ false, %180 ], [ %188, %185 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @SUBREG_REG(i32 %192)
  store i32 %193, i32* %3, align 4
  br label %180

194:                                              ; preds = %189
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @GET_MODE(i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @SCALAR_INT_MODE_P(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %219, label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @FLOAT_MODE_P(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  br label %263

205:                                              ; preds = %200
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @GET_MODE_BITSIZE(i32 %206)
  %208 = load i32, i32* @MODE_INT, align 4
  %209 = call i32 @mode_for_size(i32 %207, i32 %208, i32 0)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @BLKmode, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %263

214:                                              ; preds = %205
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %3, align 4
  %218 = call i32 @gen_lowpart(i32 %216, i32 %217)
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %214, %194
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %263

224:                                              ; preds = %219
  %225 = load i32, i32* %5, align 4
  %226 = shl i32 1, %225
  %227 = sub nsw i32 %226, 1
  %228 = call i32 @GEN_INT(i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i64, i64* @AND, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @NOT, align 4
  %232 = load i32, i32* %9, align 4
  %233 = load i64, i64* @ASHIFT, align 8
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @simplify_gen_binary(i64 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @simplify_gen_unary(i32 %231, i32 %232, i32 %237, i32 %238)
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @simplify_gen_binary(i64 %229, i32 %230, i32 %239, i32 %240)
  store i32 %241, i32* %7, align 4
  %242 = load i64, i64* @ASHIFT, align 8
  %243 = load i32, i32* %9, align 4
  %244 = load i64, i64* @AND, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %2, align 4
  %248 = call i32 @SET_SRC(i32 %247)
  %249 = call i32 @gen_lowpart(i32 %246, i32 %248)
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @simplify_gen_binary(i64 %244, i32 %245, i32 %249, i32 %250)
  %252 = load i32, i32* %4, align 4
  %253 = call i32 @simplify_gen_binary(i64 %242, i32 %243, i32 %251, i32 %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* @VOIDmode, align 4
  %255 = load i32, i32* %3, align 4
  %256 = call i32 @copy_rtx(i32 %255)
  %257 = load i64, i64* @IOR, align 8
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @simplify_gen_binary(i64 %257, i32 %258, i32 %259, i32 %260)
  %262 = call i32 @gen_rtx_SET(i32 %254, i32 %256, i32 %261)
  store i32 %262, i32* %2, align 4
  br label %11

263:                                              ; preds = %223, %213, %204, %177, %76
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @subreg_lsb(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @simplify_gen_binary(i64, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @subreg_lowpart_p(i32) #1

declare dso_local i32 @SCALAR_INT_MODE_P(i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_unary(i32, i32, i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
