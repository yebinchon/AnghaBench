; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_setjmp_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_setjmp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@SAVE_NONLOCAL = common dso_local global i32 0, align 4
@setjmp_alias_set = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@current_function_calls_setjmp = common dso_local global i32 0, align 4
@current_function_has_nonlocal_label = common dso_local global i32 0, align 4
@HAVE_builtin_setjmp_setup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expand_builtin_setjmp_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SAVE_NONLOCAL, align 4
  %9 = call i32 @STACK_SAVEAREA_MODE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @setjmp_alias_set, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @new_alias_set()
  store i32 %13, i32* @setjmp_alias_set, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @Pmode, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @convert_memory_address(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @Pmode, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NULL_RTX, align 4
  %21 = call i32 @force_operand(i32 %19, i32 %20)
  %22 = call i32 @force_reg(i32 %18, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @Pmode, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @gen_rtx_MEM(i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @setjmp_alias_set, align 4
  %28 = call i32 @set_mem_alias_set(i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %31 = call i32 (...) %30()
  %32 = call i32 @emit_move_insn(i32 %29, i32 %31)
  %33 = load i32, i32* @Pmode, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @Pmode, align 4
  %36 = call i32 @GET_MODE_SIZE(i32 %35)
  %37 = call i32 @plus_constant(i32 %34, i32 %36)
  %38 = call i32 @gen_rtx_MEM(i32 %33, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @setjmp_alias_set, align 4
  %41 = call i32 @set_mem_alias_set(i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @validize_mem(i32 %42)
  %44 = load i32, i32* @Pmode, align 4
  %45 = load i32, i32* @Pmode, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @gen_rtx_LABEL_REF(i32 %45, i32 %46)
  %48 = call i32 @force_reg(i32 %44, i32 %47)
  %49 = call i32 @emit_move_insn(i32 %43, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @Pmode, align 4
  %53 = call i32 @GET_MODE_SIZE(i32 %52)
  %54 = mul nsw i32 2, %53
  %55 = call i32 @plus_constant(i32 %51, i32 %54)
  %56 = call i32 @gen_rtx_MEM(i32 %50, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @setjmp_alias_set, align 4
  %59 = call i32 @set_mem_alias_set(i32 %57, i32 %58)
  %60 = load i32, i32* @SAVE_NONLOCAL, align 4
  %61 = load i32, i32* @NULL_RTX, align 4
  %62 = call i32 @emit_stack_save(i32 %60, i32* %6, i32 %61)
  store i32 1, i32* @current_function_calls_setjmp, align 4
  store i32 1, i32* @current_function_has_nonlocal_label, align 4
  ret void
}

declare dso_local i32 @STACK_SAVEAREA_MODE(i32) #1

declare dso_local i32 @new_alias_set(...) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @force_operand(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @emit_stack_save(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
