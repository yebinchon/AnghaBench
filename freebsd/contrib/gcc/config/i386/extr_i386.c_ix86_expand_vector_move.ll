; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@no_new_pseudos = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_vector_move(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @reload_in_progress, align 4
  %14 = load i32, i32* @reload_completed, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @register_operand(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @CONSTANT_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @standard_sse_constant_p(i32 %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @force_const_mem(i32 %31, i32 %32)
  %34 = call i32 @validize_mem(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %26, %22, %17, %2
  %36 = load i32, i32* @no_new_pseudos, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @register_operand(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @register_operand(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @GET_MODE(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @force_reg(i32 %51, i32 %52)
  %54 = call i32 @emit_move_insn(i32 %49, i32 %53)
  br label %61

55:                                               ; preds = %43, %38, %35
  %56 = load i32, i32* @VOIDmode, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @gen_rtx_SET(i32 %56, i32 %57, i32 %58)
  %60 = call i32 @emit_insn(i32 %59)
  br label %61

61:                                               ; preds = %55, %48
  ret void
}

declare dso_local i64 @register_operand(i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i64 @standard_sse_constant_p(i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
