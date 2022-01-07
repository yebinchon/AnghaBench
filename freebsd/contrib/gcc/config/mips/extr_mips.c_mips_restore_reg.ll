; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_restore_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_restore_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i64 0, align 8
@GP_REG_FIRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mips_restore_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_restore_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @TARGET_MIPS16, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @REGNO(i32 %8)
  %10 = load i64, i64* @GP_REG_FIRST, align 8
  %11 = add nsw i64 %10, 31
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  %16 = call i32 @gen_rtx_REG(i32 %15, i32 7)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %7, %2
  %18 = load i64, i64* @TARGET_MIPS16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @REGNO(i32 %21)
  %23 = call i32 @M16_REG_P(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @GET_MODE(i32 %26)
  %28 = call i32 @MIPS_EPILOGUE_TEMP(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @emit_move_insn(i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @GET_MODE(i32 %32)
  %34 = call i32 @MIPS_EPILOGUE_TEMP(i32 %33)
  %35 = call i32 @emit_move_insn(i32 %31, i32 %34)
  br label %40

36:                                               ; preds = %20, %17
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @emit_move_insn(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %25
  ret void
}

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @M16_REG_P(i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @MIPS_EPILOGUE_TEMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
