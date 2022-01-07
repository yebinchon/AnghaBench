; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_emit_restore_regs_using_mov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_emit_restore_regs_using_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@FIRST_REX_INT_REG = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32)* @ix86_emit_restore_regs_using_mov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_emit_restore_regs_using_mov(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @Pmode, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @gen_rtx_MEM(i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %61, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @ix86_save_reg(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load i64, i64* @TARGET_64BIT, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @SImode, align 4
  %29 = call i64 @trunc_int_for_mode(i64 %27, i32 %28)
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load i32, i32* @DImode, align 4
  %33 = load i32, i32* @FIRST_REX_INT_REG, align 4
  %34 = add nsw i32 %33, 3
  %35 = call i32 @gen_rtx_REG(i32 %32, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @GEN_INT(i64 %37)
  %39 = call i32 @emit_move_insn(i32 %36, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @gen_adddi3(i32 %40, i32 %41, i32 %42)
  %44 = call i32 @emit_insn(i32 %43)
  %45 = load i32, i32* @Pmode, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @gen_rtx_MEM(i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %31, %25, %22
  %49 = load i32, i32* @Pmode, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gen_rtx_REG(i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @Pmode, align 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @adjust_address(i32 %52, i32 %53, i64 %54)
  %56 = call i32 @emit_move_insn(i32 %51, i32 %55)
  %57 = load i64, i64* @UNITS_PER_WORD, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %48, %17
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %13

64:                                               ; preds = %13
  ret void
}

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i64 @ix86_save_reg(i32, i32) #1

declare dso_local i64 @trunc_int_for_mode(i64, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
