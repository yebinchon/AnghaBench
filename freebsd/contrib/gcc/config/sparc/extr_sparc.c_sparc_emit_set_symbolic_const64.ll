; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_set_symbolic_const64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_emit_set_symbolic_const64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TImode = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@sparc_cmodel = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_emit_set_symbolic_const64(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GET_MODE(i64 %16)
  %18 = load i64, i64* @TImode, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* @DImode, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @REGNO(i64 %23)
  %25 = call i64 @gen_rtx_REG(i32 %22, i32 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %20, %15, %3
  %27 = load i32, i32* @sparc_cmodel, align 4
  switch i32 %27, label %257 [
    i32 129, label %28
    i32 128, label %52
    i32 130, label %89
    i32 131, label %157
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %7, align 8
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @DImode, align 4
  %35 = call i64 @gen_reg_rtx(i32 %34)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @DImode, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @gen_rtx_HIGH(i32 %39, i64 %40)
  %42 = call i32 @gen_rtx_SET(i32 %37, i64 %38, i32 %41)
  %43 = call i32 @emit_insn(i32 %42)
  %44 = load i32, i32* @VOIDmode, align 4
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @DImode, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @gen_rtx_LO_SUM(i32 %46, i64 %47, i64 %48)
  %50 = call i32 @gen_rtx_SET(i32 %44, i64 %45, i32 %49)
  %51 = call i32 @emit_insn(i32 %50)
  br label %259

52:                                               ; preds = %26
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %4, align 8
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  store i64 %58, i64* %9, align 8
  br label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @DImode, align 4
  %61 = call i64 @gen_reg_rtx(i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* @DImode, align 4
  %63 = call i64 @gen_reg_rtx(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* @DImode, align 4
  %65 = call i64 @gen_reg_rtx(i32 %64)
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @gen_seth44(i64 %67, i64 %68)
  %70 = call i32 @emit_insn(i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @gen_setm44(i64 %71, i64 %72, i64 %73)
  %75 = call i32 @emit_insn(i32 %74)
  %76 = load i32, i32* @VOIDmode, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* @DImode, align 4
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @GEN_INT(i32 12)
  %81 = call i32 @gen_rtx_ASHIFT(i32 %78, i64 %79, i32 %80)
  %82 = call i32 @gen_rtx_SET(i32 %76, i64 %77, i32 %81)
  %83 = call i32 @emit_insn(i32 %82)
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @gen_setl44(i64 %84, i64 %85, i64 %86)
  %88 = call i32 @emit_insn(i32 %87)
  br label %259

89:                                               ; preds = %26
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @rtx_equal_p(i64 %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @gcc_assert(i64 %98)
  %100 = load i32, i32* @DImode, align 4
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @REGNO(i64 %101)
  %103 = add nsw i32 %102, 1
  %104 = call i64 @gen_rtx_REG(i32 %100, i32 %103)
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i64, i64* %4, align 8
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %6, align 8
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %4, align 8
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %4, align 8
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %4, align 8
  store i64 %110, i64* %11, align 8
  br label %122

111:                                              ; preds = %89
  %112 = load i32, i32* @DImode, align 4
  %113 = call i64 @gen_reg_rtx(i32 %112)
  store i64 %113, i64* %7, align 8
  %114 = load i32, i32* @DImode, align 4
  %115 = call i64 @gen_reg_rtx(i32 %114)
  store i64 %115, i64* %8, align 8
  %116 = load i32, i32* @DImode, align 4
  %117 = call i64 @gen_reg_rtx(i32 %116)
  store i64 %117, i64* %9, align 8
  %118 = load i32, i32* @DImode, align 4
  %119 = call i64 @gen_reg_rtx(i32 %118)
  store i64 %119, i64* %10, align 8
  %120 = load i32, i32* @DImode, align 4
  %121 = call i64 @gen_reg_rtx(i32 %120)
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %111, %105
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @gen_sethh(i64 %123, i64 %124)
  %126 = call i32 @emit_insn(i32 %125)
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @gen_setlm(i64 %127, i64 %128)
  %130 = call i32 @emit_insn(i32 %129)
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @gen_sethm(i64 %131, i64 %132, i64 %133)
  %135 = call i32 @emit_insn(i32 %134)
  %136 = load i32, i32* @VOIDmode, align 4
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* @DImode, align 4
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @GEN_INT(i32 32)
  %141 = call i32 @gen_rtx_ASHIFT(i32 %138, i64 %139, i32 %140)
  %142 = call i32 @gen_rtx_SET(i32 %136, i64 %137, i32 %141)
  %143 = call i32 @emit_insn(i32 %142)
  %144 = load i32, i32* @VOIDmode, align 4
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* @DImode, align 4
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @gen_rtx_PLUS(i32 %146, i64 %147, i64 %148)
  %150 = call i32 @gen_rtx_SET(i32 %144, i64 %145, i32 %149)
  %151 = call i32 @emit_insn(i32 %150)
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @gen_setlo(i64 %152, i64 %153, i64 %154)
  %156 = call i32 @emit_insn(i32 %155)
  br label %259

157:                                              ; preds = %26
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i64 @GET_MODE(i64 %159)
  %161 = call i32 @data_segment_operand(i64 %158, i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %157
  %164 = load i64, i64* %6, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i64, i64* %6, align 8
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %4, align 8
  store i64 %168, i64* %8, align 8
  br label %174

169:                                              ; preds = %163
  %170 = load i32, i32* @DImode, align 4
  %171 = call i64 @gen_reg_rtx(i32 %170)
  store i64 %171, i64* %7, align 8
  %172 = load i32, i32* @DImode, align 4
  %173 = call i64 @gen_reg_rtx(i32 %172)
  store i64 %173, i64* %8, align 8
  br label %174

174:                                              ; preds = %169, %166
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i32 @gen_embmedany_sethi(i64 %175, i64 %176)
  %178 = call i32 @emit_insn(i32 %177)
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @gen_embmedany_brsum(i64 %179, i64 %180)
  %182 = call i32 @emit_insn(i32 %181)
  %183 = load i64, i64* %4, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* %5, align 8
  %186 = call i32 @gen_embmedany_losum(i64 %183, i64 %184, i64 %185)
  %187 = call i32 @emit_insn(i32 %186)
  br label %256

188:                                              ; preds = %157
  %189 = load i64, i64* %6, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %210

191:                                              ; preds = %188
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* %4, align 8
  %194 = call i32 @rtx_equal_p(i64 %192, i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @gcc_assert(i64 %197)
  %199 = load i32, i32* @DImode, align 4
  %200 = load i64, i64* %6, align 8
  %201 = call i32 @REGNO(i64 %200)
  %202 = add nsw i32 %201, 1
  %203 = call i64 @gen_rtx_REG(i32 %199, i32 %202)
  store i64 %203, i64* %6, align 8
  br label %204

204:                                              ; preds = %196, %191
  %205 = load i64, i64* %4, align 8
  store i64 %205, i64* %7, align 8
  %206 = load i64, i64* %6, align 8
  store i64 %206, i64* %8, align 8
  %207 = load i64, i64* %4, align 8
  store i64 %207, i64* %9, align 8
  %208 = load i64, i64* %4, align 8
  store i64 %208, i64* %10, align 8
  %209 = load i64, i64* %4, align 8
  store i64 %209, i64* %11, align 8
  br label %221

210:                                              ; preds = %188
  %211 = load i32, i32* @DImode, align 4
  %212 = call i64 @gen_reg_rtx(i32 %211)
  store i64 %212, i64* %7, align 8
  %213 = load i32, i32* @DImode, align 4
  %214 = call i64 @gen_reg_rtx(i32 %213)
  store i64 %214, i64* %8, align 8
  %215 = load i32, i32* @DImode, align 4
  %216 = call i64 @gen_reg_rtx(i32 %215)
  store i64 %216, i64* %9, align 8
  %217 = load i32, i32* @DImode, align 4
  %218 = call i64 @gen_reg_rtx(i32 %217)
  store i64 %218, i64* %10, align 8
  %219 = load i32, i32* @DImode, align 4
  %220 = call i64 @gen_reg_rtx(i32 %219)
  store i64 %220, i64* %11, align 8
  br label %221

221:                                              ; preds = %210, %204
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* %5, align 8
  %224 = call i32 @gen_embmedany_textuhi(i64 %222, i64 %223)
  %225 = call i32 @emit_insn(i32 %224)
  %226 = load i64, i64* %8, align 8
  %227 = load i64, i64* %5, align 8
  %228 = call i32 @gen_embmedany_texthi(i64 %226, i64 %227)
  %229 = call i32 @emit_insn(i32 %228)
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* %5, align 8
  %233 = call i32 @gen_embmedany_textulo(i64 %230, i64 %231, i64 %232)
  %234 = call i32 @emit_insn(i32 %233)
  %235 = load i32, i32* @VOIDmode, align 4
  %236 = load i64, i64* %10, align 8
  %237 = load i32, i32* @DImode, align 4
  %238 = load i64, i64* %9, align 8
  %239 = call i32 @GEN_INT(i32 32)
  %240 = call i32 @gen_rtx_ASHIFT(i32 %237, i64 %238, i32 %239)
  %241 = call i32 @gen_rtx_SET(i32 %235, i64 %236, i32 %240)
  %242 = call i32 @emit_insn(i32 %241)
  %243 = load i32, i32* @VOIDmode, align 4
  %244 = load i64, i64* %11, align 8
  %245 = load i32, i32* @DImode, align 4
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %8, align 8
  %248 = call i32 @gen_rtx_PLUS(i32 %245, i64 %246, i64 %247)
  %249 = call i32 @gen_rtx_SET(i32 %243, i64 %244, i32 %248)
  %250 = call i32 @emit_insn(i32 %249)
  %251 = load i64, i64* %4, align 8
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %5, align 8
  %254 = call i32 @gen_embmedany_textlo(i64 %251, i64 %252, i64 %253)
  %255 = call i32 @emit_insn(i32 %254)
  br label %256

256:                                              ; preds = %221, %174
  br label %259

257:                                              ; preds = %26
  %258 = call i32 (...) @gcc_unreachable()
  br label %259

259:                                              ; preds = %257, %256, %122, %66, %36
  ret void
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i32) #1

declare dso_local i32 @gen_rtx_HIGH(i32, i64) #1

declare dso_local i32 @gen_rtx_LO_SUM(i32, i64, i64) #1

declare dso_local i32 @gen_seth44(i64, i64) #1

declare dso_local i32 @gen_setm44(i64, i64, i64) #1

declare dso_local i32 @gen_rtx_ASHIFT(i32, i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_setl44(i64, i64, i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @gen_sethh(i64, i64) #1

declare dso_local i32 @gen_setlm(i64, i64) #1

declare dso_local i32 @gen_sethm(i64, i64, i64) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @gen_setlo(i64, i64, i64) #1

declare dso_local i32 @data_segment_operand(i64, i64) #1

declare dso_local i32 @gen_embmedany_sethi(i64, i64) #1

declare dso_local i32 @gen_embmedany_brsum(i64, i64) #1

declare dso_local i32 @gen_embmedany_losum(i64, i64, i64) #1

declare dso_local i32 @gen_embmedany_textuhi(i64, i64) #1

declare dso_local i32 @gen_embmedany_texthi(i64, i64) #1

declare dso_local i32 @gen_embmedany_textulo(i64, i64, i64) #1

declare dso_local i32 @gen_embmedany_textlo(i64, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
