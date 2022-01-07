; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_duplicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i32 0, align 4
@TARGET_3DNOW_A = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@TARGET_SSE2 = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ix86_expand_vector_init_duplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_expand_vector_init_duplicate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %212 [
    i32 133, label %19
    i32 134, label %19
    i32 136, label %24
    i32 135, label %24
    i32 131, label %24
    i32 130, label %24
    i32 132, label %37
    i32 128, label %65
    i32 129, label %72
    i32 137, label %121
  ]

19:                                               ; preds = %4, %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %213

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %4, %4, %4, %4, %23
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @GET_MODE_INNER(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @force_reg(i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @VOIDmode, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @gen_rtx_SET(i32 %32, i32 %33, i32 %34)
  %36 = call i32 @emit_insn(i32 %35)
  store i32 1, i32* %5, align 4
  br label %213

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %213

41:                                               ; preds = %37
  %42 = load i32, i32* @TARGET_SSE, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @TARGET_3DNOW_A, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @SImode, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @gen_lowpart(i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @HImode, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gen_rtx_TRUNCATE(i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @VOIDmode, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @gen_rtx_SET(i32 %57, i32 %58, i32 %59)
  %61 = call i32 @emit_insn(i32 %60)
  store i32 1, i32* %5, align 4
  br label %213

62:                                               ; preds = %44
  %63 = load i32, i32* @HImode, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @SImode, align 4
  store i32 %64, i32* %11, align 4
  store i32 133, i32* %12, align 4
  br label %175

65:                                               ; preds = %4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %213

69:                                               ; preds = %65
  %70 = load i32, i32* @QImode, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @HImode, align 4
  store i32 %71, i32* %11, align 4
  store i32 132, i32* %12, align 4
  br label %175

72:                                               ; preds = %4
  %73 = load i32, i32* @TARGET_SSE2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %118

75:                                               ; preds = %72
  %76 = load i32, i32* @SImode, align 4
  %77 = call i32 @gen_reg_rtx(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @SImode, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @gen_lowpart(i32 %79, i32 %80)
  %82 = call i32 @emit_move_insn(i32 %78, i32 %81)
  %83 = call i32 @gen_reg_rtx(i32 130)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @gen_rtx_VEC_DUPLICATE(i32 130, i32 %84)
  %86 = call i32 @CONST0_RTX(i32 130)
  %87 = load i32, i32* @const1_rtx, align 4
  %88 = call i32 @gen_rtx_VEC_MERGE(i32 130, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @VOIDmode, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @gen_rtx_SET(i32 %89, i32 %90, i32 %91)
  %93 = call i32 @emit_insn(i32 %92)
  %94 = call i32 @gen_reg_rtx(i32 129)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @gen_lowpart(i32 129, i32 %96)
  %98 = call i32 @emit_move_insn(i32 %95, i32 %97)
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @gen_sse2_punpcklwd(i32 %99, i32 %100, i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  %104 = call i32 @gen_reg_rtx(i32 130)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @gen_lowpart(i32 130, i32 %106)
  %108 = call i32 @emit_move_insn(i32 %105, i32 %107)
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @const0_rtx, align 4
  %112 = call i32 @gen_sse2_pshufd(i32 %109, i32 %110, i32 %111)
  %113 = call i32 @emit_insn(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @gen_lowpart(i32 129, i32 %115)
  %117 = call i32 @emit_move_insn(i32 %114, i32 %116)
  store i32 1, i32* %5, align 4
  br label %213

118:                                              ; preds = %72
  %119 = load i32, i32* @HImode, align 4
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @SImode, align 4
  store i32 %120, i32* %11, align 4
  store i32 130, i32* %12, align 4
  br label %175

121:                                              ; preds = %4
  %122 = load i32, i32* @TARGET_SSE2, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %121
  %125 = load i32, i32* @SImode, align 4
  %126 = call i32 @gen_reg_rtx(i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @SImode, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @gen_lowpart(i32 %128, i32 %129)
  %131 = call i32 @emit_move_insn(i32 %127, i32 %130)
  %132 = call i32 @gen_reg_rtx(i32 130)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @gen_rtx_VEC_DUPLICATE(i32 130, i32 %133)
  %135 = call i32 @CONST0_RTX(i32 130)
  %136 = load i32, i32* @const1_rtx, align 4
  %137 = call i32 @gen_rtx_VEC_MERGE(i32 130, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* @VOIDmode, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @gen_rtx_SET(i32 %138, i32 %139, i32 %140)
  %142 = call i32 @emit_insn(i32 %141)
  %143 = call i32 @gen_reg_rtx(i32 137)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @gen_lowpart(i32 137, i32 %145)
  %147 = call i32 @emit_move_insn(i32 %144, i32 %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @gen_sse2_punpcklbw(i32 %148, i32 %149, i32 %150)
  %152 = call i32 @emit_insn(i32 %151)
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @gen_sse2_punpcklbw(i32 %153, i32 %154, i32 %155)
  %157 = call i32 @emit_insn(i32 %156)
  %158 = call i32 @gen_reg_rtx(i32 130)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %16, align 4
  %161 = call i32 @gen_lowpart(i32 130, i32 %160)
  %162 = call i32 @emit_move_insn(i32 %159, i32 %161)
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @const0_rtx, align 4
  %166 = call i32 @gen_sse2_pshufd(i32 %163, i32 %164, i32 %165)
  %167 = call i32 @emit_insn(i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @gen_lowpart(i32 137, i32 %169)
  %171 = call i32 @emit_move_insn(i32 %168, i32 %170)
  store i32 1, i32* %5, align 4
  br label %213

172:                                              ; preds = %121
  %173 = load i32, i32* @QImode, align 4
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* @HImode, align 4
  store i32 %174, i32* %11, align 4
  store i32 129, i32* %12, align 4
  br label %175

175:                                              ; preds = %172, %118, %69, %62
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @convert_modes(i32 %176, i32 %177, i32 %178, i32 1)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @ASHIFT, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @GET_MODE_BITSIZE(i32 %183)
  %185 = call i32 @GEN_INT(i32 %184)
  %186 = load i32, i32* @NULL_RTX, align 4
  %187 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %188 = call i32 @expand_simple_binop(i32 %180, i32 %181, i32 %182, i32 %185, i32 %186, i32 1, i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @IOR, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %195 = call i32 @expand_simple_binop(i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 1, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @gen_reg_rtx(i32 %196)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @ix86_expand_vector_init_duplicate(i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %175
  %205 = call i32 (...) @gcc_unreachable()
  br label %206

206:                                              ; preds = %204, %175
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @gen_lowpart(i32 %208, i32 %209)
  %211 = call i32 @emit_move_insn(i32 %207, i32 %210)
  store i32 1, i32* %5, align 4
  br label %213

212:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %212, %206, %124, %75, %68, %47, %40, %24, %22
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @gen_rtx_VEC_DUPLICATE(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_rtx_TRUNCATE(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_MERGE(i32, i32, i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @gen_sse2_punpcklwd(i32, i32, i32) #1

declare dso_local i32 @gen_sse2_pshufd(i32, i32, i32) #1

declare dso_local i32 @gen_sse2_punpcklbw(i32, i32, i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i32 @expand_simple_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
