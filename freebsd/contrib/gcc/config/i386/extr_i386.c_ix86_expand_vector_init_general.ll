; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32* null, align 8
@word_mode = common dso_local global i32 0, align 4
@ASHIFT = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @ix86_expand_vector_init_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_expand_vector_init_general(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32*], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GET_MODE_INNER(i32 %26)
  store i32 %27, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %70 [
    i32 134, label %29
    i32 133, label %29
    i32 136, label %37
    i32 135, label %37
    i32 131, label %42
    i32 130, label %43
    i32 129, label %69
    i32 137, label %69
    i32 132, label %69
    i32 128, label %69
  ]

29:                                               ; preds = %4, %4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @TARGET_SSE, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %72

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %4, %4, %36
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @XVECEXP(i32* %38, i32 0, i32 0)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @XVECEXP(i32* %40, i32 0, i32 1)
  store i32* %41, i32** %11, align 8
  store i32 1, i32* %12, align 4
  br label %72

42:                                               ; preds = %4
  store i32 134, i32* %9, align 4
  br label %44

43:                                               ; preds = %4
  store i32 133, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %9, align 4
  %46 = call i32* @gen_reg_rtx(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @XVECEXP(i32* %47, i32 0, i32 0)
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @XVECEXP(i32* %49, i32 0, i32 1)
  %51 = call i32 @gen_rtvec(i32 2, i32* %48, i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32* @gen_rtx_PARALLEL(i32 %53, i32 %54)
  %56 = call i32 @ix86_expand_vector_init(i32 0, i32* %52, i32* %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @gen_reg_rtx(i32 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32* @XVECEXP(i32* %59, i32 0, i32 2)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @XVECEXP(i32* %61, i32 0, i32 3)
  %63 = call i32 @gen_rtvec(i32 2, i32* %60, i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32* @gen_rtx_PARALLEL(i32 %65, i32 %66)
  %68 = call i32 @ix86_expand_vector_init(i32 0, i32* %64, i32* %67)
  store i32 1, i32* %12, align 4
  br label %72

69:                                               ; preds = %4, %4, %4, %4
  br label %72

70:                                               ; preds = %4
  %71 = call i32 (...) @gcc_unreachable()
  br label %72

72:                                               ; preds = %70, %69, %44, %37, %35
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @register_operand(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = call i32* @force_reg(i32 %81, i32* %82)
  store i32* %83, i32** %10, align 8
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @register_operand(i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = call i32* @force_reg(i32 %90, i32* %91)
  store i32* %92, i32** %11, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* @VOIDmode, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @gen_rtx_VEC_CONCAT(i32 %96, i32* %97, i32* %98)
  %100 = call i32 @gen_rtx_SET(i32 %94, i32* %95, i32 %99)
  %101 = call i32 @emit_insn(i32 %100)
  br label %227

102:                                              ; preds = %72
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @GET_MODE_INNER(i32 %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @GET_MODE_NUNITS(i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @GET_MODE_SIZE(i32 %107)
  %109 = load i32, i32* @UNITS_PER_WORD, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sdiv i32 %111, %112
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @GET_MODE_BITSIZE(i32 %114)
  %116 = call i32* @GEN_INT(i32 %115)
  store i32* %116, i32** %21, align 8
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %169, %102
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %172

121:                                              ; preds = %117
  %122 = load i32*, i32** @NULL_RTX, align 8
  store i32* %122, i32** %22, align 8
  store i32 0, i32* %15, align 4
  br label %123

123:                                              ; preds = %161, %121
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %18, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = call i32* @XVECEXP(i32* %128, i32 0, i32 %135)
  store i32* %136, i32** %23, align 8
  %137 = load i32, i32* @word_mode, align 4
  %138 = load i32, i32* %19, align 4
  %139 = load i32*, i32** %23, align 8
  %140 = call i32* @convert_modes(i32 %137, i32 %138, i32* %139, i32 1)
  store i32* %140, i32** %23, align 8
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %127
  %144 = load i32*, i32** %23, align 8
  store i32* %144, i32** %22, align 8
  br label %160

145:                                              ; preds = %127
  %146 = load i32, i32* @word_mode, align 4
  %147 = load i32, i32* @ASHIFT, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = load i32*, i32** %21, align 8
  %150 = load i32*, i32** %22, align 8
  %151 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %152 = call i32* @expand_simple_binop(i32 %146, i32 %147, i32* %148, i32* %149, i32* %150, i32 1, i32 %151)
  store i32* %152, i32** %22, align 8
  %153 = load i32, i32* @word_mode, align 4
  %154 = load i32, i32* @IOR, align 4
  %155 = load i32*, i32** %22, align 8
  %156 = load i32*, i32** %23, align 8
  %157 = load i32*, i32** %22, align 8
  %158 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %159 = call i32* @expand_simple_binop(i32 %153, i32 %154, i32* %155, i32* %156, i32* %157, i32 1, i32 %158)
  store i32* %159, i32** %22, align 8
  br label %160

160:                                              ; preds = %145, %143
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %15, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  br label %123

164:                                              ; preds = %123
  %165 = load i32*, i32** %22, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 %167
  store i32* %165, i32** %168, align 8
  br label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %117

172:                                              ; preds = %117
  %173 = load i32, i32* %17, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %6, align 4
  %178 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %179 = load i32*, i32** %178, align 16
  %180 = call i32* @gen_lowpart(i32 %177, i32* %179)
  %181 = call i32 @emit_move_insn(i32* %176, i32* %180)
  br label %226

182:                                              ; preds = %172
  %183 = load i32, i32* %17, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %207

185:                                              ; preds = %182
  %186 = load i32, i32* %6, align 4
  %187 = call i32* @gen_reg_rtx(i32 %186)
  store i32* %187, i32** %24, align 8
  %188 = load i32, i32* @VOIDmode, align 4
  %189 = load i32*, i32** %24, align 8
  %190 = call i32 @gen_rtx_CLOBBER(i32 %188, i32* %189)
  %191 = call i32 @emit_insn(i32 %190)
  %192 = load i32, i32* @word_mode, align 4
  %193 = load i32*, i32** %24, align 8
  %194 = call i32* @gen_lowpart(i32 %192, i32* %193)
  %195 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %196 = load i32*, i32** %195, align 16
  %197 = call i32 @emit_move_insn(i32* %194, i32* %196)
  %198 = load i32, i32* @word_mode, align 4
  %199 = load i32*, i32** %24, align 8
  %200 = call i32* @gen_highpart(i32 %198, i32* %199)
  %201 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @emit_move_insn(i32* %200, i32* %202)
  %204 = load i32*, i32** %7, align 8
  %205 = load i32*, i32** %24, align 8
  %206 = call i32 @emit_move_insn(i32* %204, i32* %205)
  br label %225

207:                                              ; preds = %182
  %208 = load i32, i32* %17, align 4
  %209 = icmp eq i32 %208, 4
  br i1 %209, label %210, label %222

210:                                              ; preds = %207
  %211 = call i32* @gen_reg_rtx(i32 130)
  store i32* %211, i32** %25, align 8
  %212 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %213 = call i32 @gen_rtvec_v(i32 4, i32** %212)
  %214 = call i32* @gen_rtx_PARALLEL(i32 130, i32 %213)
  store i32* %214, i32** %8, align 8
  %215 = load i32*, i32** %25, align 8
  %216 = load i32*, i32** %8, align 8
  call void @ix86_expand_vector_init_general(i32 0, i32 130, i32* %215, i32* %216)
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32*, i32** %25, align 8
  %220 = call i32* @gen_lowpart(i32 %218, i32* %219)
  %221 = call i32 @emit_move_insn(i32* %217, i32* %220)
  br label %224

222:                                              ; preds = %207
  %223 = call i32 (...) @gcc_unreachable()
  br label %224

224:                                              ; preds = %222, %210
  br label %225

225:                                              ; preds = %224, %185
  br label %226

226:                                              ; preds = %225, %175
  br label %227

227:                                              ; preds = %226, %93
  ret void
}

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32* @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_rtvec(i32, i32*, i32*) #1

declare dso_local i32 @ix86_expand_vector_init(i32, i32*, i32*) #1

declare dso_local i32* @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @register_operand(i32*, i32) #1

declare dso_local i32* @force_reg(i32, i32*) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32*, i32) #1

declare dso_local i32 @gen_rtx_VEC_CONCAT(i32, i32*, i32*) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32* @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32* @convert_modes(i32, i32, i32*, i32) #1

declare dso_local i32* @expand_simple_binop(i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32*, i32*) #1

declare dso_local i32* @gen_lowpart(i32, i32*) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32*) #1

declare dso_local i32* @gen_highpart(i32, i32*) #1

declare dso_local i32 @gen_rtvec_v(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
