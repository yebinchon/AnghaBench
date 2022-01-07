; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_save_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_save_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DFmode = common dso_local global i64 0, align 8
@TARGET_FLOAT64 = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@GP_REG_FIRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mips_save_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_save_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GET_MODE(i32 %7)
  %9 = load i64, i64* @DFmode, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load i32, i32* @TARGET_FLOAT64, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @mips_split_64bit_move_p(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mips_split_64bit_move(i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @emit_move_insn(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mips_subword(i32 %28, i32 0)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mips_subword(i32 %30, i32 0)
  %32 = call i32 @mips_frame_set(i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mips_subword(i32 %33, i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @mips_subword(i32 %35, i32 1)
  %37 = call i32 @mips_frame_set(i32 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @VOIDmode, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gen_rtvec(i32 2, i32 %39, i32 %40)
  %42 = call i32 @gen_rtx_PARALLEL(i32 %38, i32 %41)
  %43 = call i32 @mips_set_frame_expr(i32 %42)
  br label %78

44:                                               ; preds = %11, %2
  %45 = load i64, i64* @TARGET_MIPS16, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @REGNO(i32 %48)
  %50 = load i64, i64* @GP_REG_FIRST, align 8
  %51 = add nsw i64 %50, 31
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @REGNO(i32 %54)
  %56 = call i32 @M16_REG_P(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @GET_MODE(i32 %59)
  %61 = call i32 @MIPS_PROLOGUE_TEMP(i64 %60)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @emit_move_insn(i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @GET_MODE(i32 %65)
  %67 = call i32 @MIPS_PROLOGUE_TEMP(i64 %66)
  %68 = call i32 @emit_move_insn(i32 %64, i32 %67)
  br label %73

69:                                               ; preds = %53, %47, %44
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @emit_move_insn(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %58
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @mips_frame_set(i32 %74, i32 %75)
  %77 = call i32 @mips_set_frame_expr(i32 %76)
  br label %78

78:                                               ; preds = %73, %27
  ret void
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @mips_split_64bit_move_p(i32, i32) #1

declare dso_local i32 @mips_split_64bit_move(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @mips_frame_set(i32, i32) #1

declare dso_local i32 @mips_subword(i32, i32) #1

declare dso_local i32 @mips_set_frame_expr(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @M16_REG_P(i64) #1

declare dso_local i32 @MIPS_PROLOGUE_TEMP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
