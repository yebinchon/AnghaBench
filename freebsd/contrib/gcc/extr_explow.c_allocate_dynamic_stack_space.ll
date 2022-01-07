; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_allocate_dynamic_stack_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_allocate_dynamic_stack_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (i64, i32)* }

@const0_rtx = common dso_local global i64 0, align 8
@virtual_stack_dynamic_rtx = common dso_local global i64 0, align 8
@current_function_calls_alloca = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8
@PREFERRED_STACK_BOUNDARY = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@stack_pointer_delta = common dso_local global i32 0, align 4
@flag_stack_check = common dso_local global i64 0, align 8
@STACK_CHECK_BUILTIN = common dso_local global i32 0, align 4
@STACK_CHECK_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@STACK_CHECK_PROTECT = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@current_function_limit_stack = common dso_local global i64 0, align 8
@sub_optab = common dso_local global i32 0, align 4
@stack_limit_rtx = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"stack limits not supported on this target\00", align 1
@add_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@CODE_FOR_allocate_stack = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@HAVE_allocate_stack = common dso_local global i64 0, align 8
@HAVE_trap = common dso_local global i64 0, align 8
@MUST_ALIGN = common dso_local global i64 0, align 8
@STACK_SIZE_MODE = common dso_local global i32 0, align 4
@current_function_calls_setjmp = common dso_local global i32 0, align 4
@insn_data = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @allocate_dynamic_stack_space(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @const0_rtx, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @virtual_stack_dynamic_rtx, align 8
  store i64 %14, i64* %4, align 8
  br label %173

15:                                               ; preds = %3
  store i32 1, i32* @current_function_calls_alloca, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @GET_MODE(i64 %16)
  %18 = load i64, i64* @VOIDmode, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @GET_MODE(i64 %21)
  %23 = load i64, i64* @Pmode, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* @Pmode, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @convert_to_mode(i32 %27, i64 %28, i32 1)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %35 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %40 = load i32, i32* @BITS_PER_UNIT, align 4
  %41 = sdiv i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @plus_constant(i64 %38, i32 %42)
  %44 = load i32, i32* @NULL_RTX, align 4
  %45 = call i64 @force_operand(i32 %43, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %37, %30
  %47 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %48 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %53 = srem i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %46
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @round_push(i64 %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = call i32 (...) @do_pending_stack_adjust()
  %60 = load i32, i32* @stack_pointer_delta, align 4
  %61 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %62 = load i32, i32* @BITS_PER_UNIT, align 4
  %63 = sdiv i32 %61, %62
  %64 = srem i32 %60, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @gcc_assert(i32 %67)
  %69 = load i64, i64* @flag_stack_check, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %58
  %72 = load i32, i32* @STACK_CHECK_BUILTIN, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @STACK_CHECK_MAX_FRAME_SIZE, align 8
  %76 = load i64, i64* @STACK_CHECK_PROTECT, align 8
  %77 = add nsw i64 %75, %76
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @probe_stack_range(i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %74, %71, %58
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @REG_P(i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @REGNO(i64 %88)
  %90 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @GET_MODE(i64 %93)
  %95 = load i64, i64* @Pmode, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92, %87, %83, %80
  %98 = load i64, i64* @Pmode, align 8
  %99 = call i64 @gen_reg_rtx(i64 %98)
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i64, i64* %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @mark_reg_pointer(i64 %101, i32 %102)
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @virtual_stack_dynamic_rtx, align 8
  %106 = call i32 @emit_move_insn(i64 %104, i64 %105)
  %107 = load i64, i64* @current_function_limit_stack, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %100
  %110 = call i64 (...) @gen_label_rtx()
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* @Pmode, align 8
  %112 = load i32, i32* @sub_optab, align 4
  %113 = load i64, i64* @stack_limit_rtx, align 8
  %114 = load i64, i64* @stack_pointer_rtx, align 8
  %115 = load i32, i32* @NULL_RTX, align 4
  %116 = load i32, i32* @OPTAB_WIDEN, align 4
  %117 = call i64 @expand_binop(i64 %111, i32 %112, i64 %113, i64 %114, i32 %115, i32 1, i32 %116)
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i32, i32* @GEU, align 4
  %121 = load i32, i32* @NULL_RTX, align 4
  %122 = load i64, i64* @Pmode, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @emit_cmp_and_jump_insns(i64 %118, i64 %119, i32 %120, i32 %121, i64 %122, i32 1, i64 %123)
  %125 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %126 = call i32 (...) @emit_barrier()
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @emit_label(i64 %127)
  br label %129

129:                                              ; preds = %109, %100
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @anti_adjust_stack(i64 %130)
  %132 = load i32, i32* @PREFERRED_STACK_BOUNDARY, align 4
  %133 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %129
  %136 = load i64, i64* @Pmode, align 8
  %137 = load i32, i32* @add_optab, align 4
  %138 = load i64, i64* %6, align 8
  %139 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %140 = load i32, i32* @BITS_PER_UNIT, align 4
  %141 = sdiv i32 %139, %140
  %142 = sub nsw i32 %141, 1
  %143 = call i64 @GEN_INT(i32 %142)
  %144 = load i32, i32* @NULL_RTX, align 4
  %145 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %146 = call i64 @expand_binop(i64 %136, i32 %137, i64 %138, i64 %143, i32 %144, i32 1, i32 %145)
  store i64 %146, i64* %6, align 8
  %147 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %148 = load i64, i64* @Pmode, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %151 = load i32, i32* @BITS_PER_UNIT, align 4
  %152 = sdiv i32 %150, %151
  %153 = call i64 @GEN_INT(i32 %152)
  %154 = load i32, i32* @NULL_RTX, align 4
  %155 = call i64 @expand_divmod(i32 0, i32 %147, i64 %148, i64 %149, i64 %153, i32 %154, i32 1)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* @Pmode, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %159 = load i32, i32* @BITS_PER_UNIT, align 4
  %160 = sdiv i32 %158, %159
  %161 = call i64 @GEN_INT(i32 %160)
  %162 = load i32, i32* @NULL_RTX, align 4
  %163 = call i64 @expand_mult(i64 %156, i64 %157, i64 %161, i32 %162, i32 1)
  store i64 %163, i64* %6, align 8
  br label %164

164:                                              ; preds = %135, %129
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = call i32 (...) @update_nonlocal_goto_save_area()
  br label %171

171:                                              ; preds = %169, %164
  %172 = load i64, i64* %6, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %171, %13
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @convert_to_mode(i32, i64, i32) #1

declare dso_local i64 @force_operand(i32, i32) #1

declare dso_local i32 @plus_constant(i64, i32) #1

declare dso_local i64 @round_push(i64) #1

declare dso_local i32 @do_pending_stack_adjust(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @probe_stack_range(i64, i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @gen_reg_rtx(i64) #1

declare dso_local i32 @mark_reg_pointer(i64, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @expand_binop(i64, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i32, i64, i32, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @anti_adjust_stack(i64) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @expand_divmod(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @expand_mult(i64, i64, i64, i32, i32) #1

declare dso_local i32 @update_nonlocal_goto_save_area(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
