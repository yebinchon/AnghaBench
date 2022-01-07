; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_save_or_restore_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_save_or_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_base_offset = common dso_local global i32 0, align 4
@apparent_fsize = common dso_local global i32 0, align 4
@num_gfregs = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@frame_base_reg = common dso_local global i32 0, align 4
@TARGET_V9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @emit_save_or_restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_save_or_restore_regs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @frame_base_offset, align 4
  %6 = load i32, i32* @apparent_fsize, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, -4096
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @num_gfregs, align 4
  %13 = mul nsw i32 %12, 4
  %14 = add nsw i32 %11, %13
  %15 = icmp sgt i32 %14, 4095
  br i1 %15, label %16, label %31

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @Pmode, align 4
  %18 = call i32 @gen_rtx_REG(i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GEN_INT(i32 %20)
  %22 = call i32 @emit_move_insn(i32 %19, i32 %21)
  %23 = load i32, i32* @VOIDmode, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @Pmode, align 4
  %26 = load i32, i32* @frame_base_reg, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gen_rtx_PLUS(i32 %25, i32 %26, i32 %27)
  %29 = call i32 @gen_rtx_SET(i32 %23, i32 %24, i32 %28)
  %30 = call i32 @emit_insn(i32 %29)
  store i32 0, i32* %3, align 4
  br label %33

31:                                               ; preds = %10
  %32 = load i32, i32* @frame_base_reg, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @save_or_restore_regs(i32 0, i32 8, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* @TARGET_V9, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 96, i32 64
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @save_or_restore_regs(i32 32, i32 %41, i32 %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @save_or_restore_regs(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
