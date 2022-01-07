; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_move_block_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_move_block_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_mode = common dso_local global i32 0, align 4
@HAVE_load_multiple = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_block_to_reg(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %45

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @CONSTANT_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @LEGITIMATE_CONSTANT_P(i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @force_const_mem(i32 %22, i64 %23)
  %25 = call i64 @validize_mem(i32 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %21, %17, %13
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* @word_mode, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @gen_rtx_REG(i32 %32, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @operand_subword_force(i64 %37, i32 %38, i32 %39)
  %41 = call i32 @emit_move_insn(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %27

45:                                               ; preds = %12, %27
  ret void
}

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i32 @LEGITIMATE_CONSTANT_P(i64) #1

declare dso_local i64 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @operand_subword_force(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
