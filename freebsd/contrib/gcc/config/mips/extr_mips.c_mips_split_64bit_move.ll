; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_split_64bit_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_split_64bit_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_split_64bit_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @FP_REG_RTX_P(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @copy_rtx(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @mips_subword(i32 %12, i32 0)
  %14 = call i32 @gen_load_df_low(i32 %11, i32 %13)
  %15 = call i32 @emit_insn(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mips_subword(i32 %17, i32 1)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @copy_rtx(i32 %19)
  %21 = call i32 @gen_load_df_high(i32 %16, i32 %18, i32 %20)
  %22 = call i32 @emit_insn(i32 %21)
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @FP_REG_RTX_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @mips_subword(i32 %28, i32 0)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mips_subword(i32 %30, i32 0)
  %32 = call i32 @emit_move_insn(i32 %29, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mips_subword(i32 %33, i32 1)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @gen_store_df_high(i32 %34, i32 %35)
  %37 = call i32 @emit_insn(i32 %36)
  br label %70

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @mips_subword(i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @REG_P(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @reg_overlap_mentioned_p(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @mips_subword(i32 %50, i32 1)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mips_subword(i32 %52, i32 1)
  %54 = call i32 @emit_move_insn(i32 %51, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @mips_subword(i32 %56, i32 0)
  %58 = call i32 @emit_move_insn(i32 %55, i32 %57)
  br label %69

59:                                               ; preds = %44, %38
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @mips_subword(i32 %61, i32 0)
  %63 = call i32 @emit_move_insn(i32 %60, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @mips_subword(i32 %64, i32 1)
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mips_subword(i32 %66, i32 1)
  %68 = call i32 @emit_move_insn(i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %59, %49
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %9
  ret void
}

declare dso_local i64 @FP_REG_RTX_P(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_df_low(i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @mips_subword(i32, i32) #1

declare dso_local i32 @gen_load_df_high(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_store_df_high(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
