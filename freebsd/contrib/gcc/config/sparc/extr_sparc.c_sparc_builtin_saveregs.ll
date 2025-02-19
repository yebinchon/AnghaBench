; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_builtin_saveregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_builtin_saveregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_function_args_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SPARC_INT_ARG_MAX = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@frame_pointer_rtx = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@SPARC_INCOMING_INT_ARG_FIRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sparc_builtin_saveregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_builtin_saveregs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_function_args_info, i32 0, i32 0), align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i32, i32* @word_mode, align 4
  %12 = load i32, i32* @Pmode, align 4
  %13 = load i32, i32* @frame_pointer_rtx, align 4
  %14 = call i64 @FIRST_PARM_OFFSET(i32 0)
  %15 = load i32, i32* @UNITS_PER_WORD, align 4
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i32 @GEN_INT(i64 %19)
  %21 = call i32 @gen_rtx_PLUS(i32 %12, i32 %13, i32 %20)
  %22 = call i32 @gen_rtx_MEM(i32 %11, i32 %21)
  %23 = load i32, i32* @word_mode, align 4
  %24 = load i64, i64* @SPARC_INCOMING_INT_ARG_FIRST, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @gen_rtx_REG(i32 %23, i64 %27)
  %29 = call i32 @emit_move_insn(i32 %22, i32 %28)
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* @Pmode, align 4
  %35 = load i32, i32* @frame_pointer_rtx, align 4
  %36 = call i64 @FIRST_PARM_OFFSET(i32 0)
  %37 = load i32, i32* @UNITS_PER_WORD, align 4
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = call i32 @GEN_INT(i64 %41)
  %43 = call i32 @gen_rtx_PLUS(i32 %34, i32 %35, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i64) #1

declare dso_local i64 @FIRST_PARM_OFFSET(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
