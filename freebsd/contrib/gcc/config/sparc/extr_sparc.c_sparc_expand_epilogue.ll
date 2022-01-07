; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_expand_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_expand_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_gfregs = common dso_local global i64 0, align 8
@SORR_RESTORE = common dso_local global i32 0, align 4
@actual_fsize = common dso_local global i32 0, align 4
@sparc_leaf_function_p = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc_expand_epilogue() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @num_gfregs, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @SORR_RESTORE, align 4
  %6 = call i32 @emit_save_or_restore_regs(i32 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @actual_fsize, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %49

11:                                               ; preds = %7
  %12 = load i64, i64* @sparc_leaf_function_p, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load i32, i32* @actual_fsize, align 4
  %16 = icmp sle i32 %15, 4096
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @actual_fsize, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @GEN_INT(i32 %19)
  %21 = call i32 @gen_stack_pointer_dec(i32 %20)
  %22 = call i32 @emit_insn(i32 %21)
  br label %47

23:                                               ; preds = %14
  %24 = load i32, i32* @actual_fsize, align 4
  %25 = icmp sle i32 %24, 8192
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = call i32 @GEN_INT(i32 -4096)
  %28 = call i32 @gen_stack_pointer_dec(i32 %27)
  %29 = call i32 @emit_insn(i32 %28)
  %30 = load i32, i32* @actual_fsize, align 4
  %31 = sub nsw i32 4096, %30
  %32 = call i32 @GEN_INT(i32 %31)
  %33 = call i32 @gen_stack_pointer_dec(i32 %32)
  %34 = call i32 @emit_insn(i32 %33)
  br label %46

35:                                               ; preds = %23
  %36 = load i32, i32* @Pmode, align 4
  %37 = call i32 @gen_rtx_REG(i32 %36, i32 1)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @actual_fsize, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @GEN_INT(i32 %40)
  %42 = call i32 @emit_move_insn(i32 %38, i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @gen_stack_pointer_dec(i32 %43)
  %45 = call i32 @emit_insn(i32 %44)
  br label %46

46:                                               ; preds = %35, %26
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47, %11
  br label %49

49:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @emit_save_or_restore_regs(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_stack_pointer_dec(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
