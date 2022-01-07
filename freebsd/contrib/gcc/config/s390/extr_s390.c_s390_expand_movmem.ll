; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_movmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_movmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@TARGET_MVCLE = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@lshr_optab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_expand_movmem(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @CONST_INT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @INTVAL(i64 %21)
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @INTVAL(i64 %25)
  %27 = icmp sle i32 %26, 256
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @INTVAL(i64 %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @INTVAL(i64 %35)
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @GEN_INT(i32 %37)
  %39 = call i32 @gen_movmem_short(i64 %33, i64 %34, i32 %38)
  %40 = call i32 @emit_insn(i32 %39)
  br label %41

41:                                               ; preds = %32, %28
  br label %192

42:                                               ; preds = %24, %20, %3
  %43 = load i64, i64* @TARGET_MVCLE, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* @Pmode, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @convert_to_mode(i32 %48, i64 %49, i32 1)
  %51 = call i32 @gen_movmem_long(i64 %46, i64 %47, i32 %50)
  %52 = call i32 @emit_insn(i32 %51)
  br label %191

53:                                               ; preds = %42
  %54 = call i64 (...) @gen_label_rtx()
  store i64 %54, i64* %12, align 8
  %55 = call i64 (...) @gen_label_rtx()
  store i64 %55, i64* %13, align 8
  %56 = call i64 (...) @gen_label_rtx()
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @GET_MODE(i64 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @VOIDmode, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @Pmode, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %62, %53
  %65 = load i32, i32* @Pmode, align 4
  %66 = call i64 @gen_reg_rtx(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* @Pmode, align 4
  %68 = call i64 @gen_reg_rtx(i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @gen_reg_rtx(i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @gen_reg_rtx(i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @convert_move(i64 %73, i64 %74, i32 1)
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @const0_rtx, align 4
  %78 = load i32, i32* @EQ, align 4
  %79 = load i32, i32* @NULL_RTX, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @emit_cmp_and_jump_insns(i64 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 1, i64 %81)
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @XEXP(i64 %84, i32 0)
  %86 = load i32, i32* @NULL_RTX, align 4
  %87 = call i64 @force_operand(i32 %85, i32 %86)
  %88 = call i32 @emit_move_insn(i64 %83, i64 %87)
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @XEXP(i64 %90, i32 0)
  %92 = load i32, i32* @NULL_RTX, align 4
  %93 = call i64 @force_operand(i32 %91, i32 %92)
  %94 = call i32 @emit_move_insn(i64 %89, i64 %93)
  %95 = load i64, i64* %4, align 8
  %96 = load i32, i32* @VOIDmode, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i64 @change_address(i64 %95, i32 %96, i64 %97)
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i32, i32* @VOIDmode, align 4
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @change_address(i64 %99, i32 %100, i64 %101)
  store i64 %102, i64* %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @add_optab, align 4
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* @constm1_rtx, align 4
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @expand_binop(i32 %103, i32 %104, i64 %105, i32 %106, i64 %107, i32 1, i32 0)
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %64
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @emit_move_insn(i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %112, %64
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @lshr_optab, align 4
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @GEN_INT(i32 8)
  %121 = load i64, i64* %10, align 8
  %122 = call i64 @expand_binop(i32 %117, i32 %118, i64 %119, i32 %120, i64 %121, i32 1, i32 0)
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @emit_move_insn(i64 %127, i64 %128)
  br label %130

130:                                              ; preds = %126, %116
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* @const0_rtx, align 4
  %133 = load i32, i32* @EQ, align 4
  %134 = load i32, i32* @NULL_RTX, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @emit_cmp_and_jump_insns(i64 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 1, i64 %136)
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @emit_label(i64 %138)
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @GEN_INT(i32 255)
  %143 = call i32 @gen_movmem_short(i64 %140, i64 %141, i32 %142)
  %144 = call i32 @emit_insn(i32 %143)
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* @Pmode, align 4
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @GEN_INT(i32 256)
  %149 = call i32 @gen_rtx_PLUS(i32 %146, i64 %147, i32 %148)
  %150 = call i32 @s390_load_address(i64 %145, i32 %149)
  %151 = load i64, i64* %8, align 8
  %152 = load i32, i32* @Pmode, align 4
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @GEN_INT(i32 256)
  %155 = call i32 @gen_rtx_PLUS(i32 %152, i64 %153, i32 %154)
  %156 = call i32 @s390_load_address(i64 %151, i32 %155)
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @add_optab, align 4
  %159 = load i64, i64* %10, align 8
  %160 = load i32, i32* @constm1_rtx, align 4
  %161 = load i64, i64* %10, align 8
  %162 = call i64 @expand_binop(i32 %157, i32 %158, i64 %159, i32 %160, i64 %161, i32 1, i32 0)
  store i64 %162, i64* %11, align 8
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %130
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @emit_move_insn(i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %166, %130
  %171 = load i64, i64* %10, align 8
  %172 = load i32, i32* @const0_rtx, align 4
  %173 = load i32, i32* @EQ, align 4
  %174 = load i32, i32* @NULL_RTX, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i64, i64* %13, align 8
  %177 = call i32 @emit_cmp_and_jump_insns(i64 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 1, i64 %176)
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @emit_jump(i64 %178)
  %180 = load i64, i64* %13, align 8
  %181 = call i32 @emit_label(i64 %180)
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* %5, align 8
  %184 = load i32, i32* @Pmode, align 4
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @convert_to_mode(i32 %184, i64 %185, i32 1)
  %187 = call i32 @gen_movmem_short(i64 %182, i64 %183, i32 %186)
  %188 = call i32 @emit_insn(i32 %187)
  %189 = load i64, i64* %14, align 8
  %190 = call i32 @emit_label(i64 %189)
  br label %191

191:                                              ; preds = %170, %45
  br label %192

192:                                              ; preds = %191, %41
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_movmem_short(i64, i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_movmem_long(i64, i64, i32) #1

declare dso_local i32 @convert_to_mode(i32, i64, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @force_operand(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @change_address(i64, i32, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @s390_load_address(i64, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i64, i32) #1

declare dso_local i32 @emit_jump(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
