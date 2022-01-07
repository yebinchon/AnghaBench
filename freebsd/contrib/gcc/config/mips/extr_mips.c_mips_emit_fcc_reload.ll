; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_fcc_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_fcc_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@FP_INC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_emit_fcc_reload(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @MEM_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SFmode, align 4
  %15 = call i32 @adjust_address(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  br label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @REG_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @SUBREG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20, %16
  %26 = load i32, i32* @SFmode, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @true_regnum(i32 %27)
  %29 = call i32 @gen_rtx_REG(i32 %26, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* @SFmode, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @REGNO(i32 %33)
  %35 = call i32 @gen_rtx_REG(i32 %32, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @SFmode, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @REGNO(i32 %37)
  %39 = load i64, i64* @FP_INC, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @gen_rtx_REG(i32 %36, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @copy_rtx(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @emit_move_insn(i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @copy_rtx(i32 %46)
  %48 = load i32, i32* @SFmode, align 4
  %49 = call i32 @CONST0_RTX(i32 %48)
  %50 = call i32 @emit_move_insn(i32 %47, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @gen_slt_sf(i32 %51, i32 %52, i32 %53)
  %55 = call i32 @emit_insn(i32 %54)
  ret void
}

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i64 @true_regnum(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_slt_sf(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
