; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_one_nonzero.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init_one_nonzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@TARGET_SSE2 = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @ix86_expand_vector_init_one_nonzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_expand_vector_init_one_nonzero(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %205 [
    i32 134, label %17
    i32 133, label %17
    i32 136, label %22
    i32 135, label %22
    i32 131, label %42
    i32 130, label %42
    i32 129, label %172
    i32 137, label %172
    i32 132, label %173
    i32 128, label %173
  ]

17:                                               ; preds = %5, %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %206

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %5, %5, %21
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %206

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @GET_MODE_INNER(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @force_reg(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @GET_MODE_INNER(i32 %33)
  %35 = call i32 @CONST0_RTX(i32 %34)
  %36 = call i32 @gen_rtx_VEC_CONCAT(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @gen_rtx_SET(i32 %37, i32 %38, i32 %39)
  %41 = call i32 @emit_insn(i32 %40)
  store i32 1, i32* %6, align 4
  br label %206

42:                                               ; preds = %5, %5
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @REG_P(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @REGNO(i32 %47)
  %49 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @gen_reg_rtx(i32 %52)
  store i32 %53, i32* %13, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @GET_MODE_INNER(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @force_reg(i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @CONST0_RTX(i32 %66)
  %68 = load i32, i32* @const1_rtx, align 4
  %69 = call i32 @gen_rtx_VEC_MERGE(i32 %64, i32 %65, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @VOIDmode, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @gen_rtx_SET(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @emit_insn(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %162

77:                                               ; preds = %56
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 131
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load i32, i32* @TARGET_SSE2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @GEN_INT(i32 1)
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 1
  %91 = call i32 @GEN_INT(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 0, i32 1
  %96 = call i32 @GEN_INT(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 3
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  %101 = call i32 @GEN_INT(i32 %100)
  %102 = call i32 @gen_sse2_pshufd_1(i32 %84, i32 %85, i32 %86, i32 %91, i32 %96, i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %83
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @emit_move_insn(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %83
  store i32 1, i32* %6, align 4
  br label %206

112:                                              ; preds = %80, %77
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 131
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = call i32 @gen_reg_rtx(i32 131)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @gen_lowpart(i32 131, i32 %118)
  %120 = call i32 @emit_move_insn(i32 %117, i32 %119)
  br label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %121, %115
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @GEN_INT(i32 1)
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 1
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 0, i32 1
  %132 = call i32 @GEN_INT(i32 %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 4, i32 5
  %137 = call i32 @GEN_INT(i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 3
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 4, i32 5
  %142 = call i32 @GEN_INT(i32 %141)
  %143 = call i32 @gen_sse_shufps_1(i32 %124, i32 %125, i32 %126, i32 %127, i32 %132, i32 %137, i32 %142)
  %144 = call i32 @emit_insn(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 131
  br i1 %146, label %147, label %152

147:                                              ; preds = %123
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @gen_lowpart(i32 130, i32 %149)
  %151 = call i32 @emit_move_insn(i32 %148, i32 %150)
  br label %161

152:                                              ; preds = %123
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @emit_move_insn(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %147
  br label %171

162:                                              ; preds = %56
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @emit_move_insn(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %162
  br label %171

171:                                              ; preds = %170, %161
  store i32 1, i32* %6, align 4
  br label %206

172:                                              ; preds = %5, %5
  store i32 130, i32* %12, align 4
  br label %178

173:                                              ; preds = %5, %5
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  store i32 0, i32* %6, align 4
  br label %206

177:                                              ; preds = %173
  store i32 133, i32* %12, align 4
  br label %178

178:                                              ; preds = %177, %172
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %206

182:                                              ; preds = %178
  %183 = load i32, i32* @SImode, align 4
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @GET_MODE_INNER(i32 %184)
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @convert_modes(i32 %183, i32 %185, i32 %186, i32 1)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @gen_reg_rtx(i32 %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @ix86_expand_vector_init_one_nonzero(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %182
  %198 = call i32 (...) @gcc_unreachable()
  br label %199

199:                                              ; preds = %197, %182
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @gen_lowpart(i32 %201, i32 %202)
  %204 = call i32 @emit_move_insn(i32 %200, i32 %203)
  store i32 1, i32* %6, align 4
  br label %206

205:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %205, %199, %181, %176, %171, %111, %26, %25, %20
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @gen_rtx_VEC_CONCAT(i32, i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_rtx_VEC_DUPLICATE(i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_MERGE(i32, i32, i32, i32) #1

declare dso_local i32 @gen_sse2_pshufd_1(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_sse_shufps_1(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
