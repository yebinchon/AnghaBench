; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_get_next_active_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_get_next_active_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@CODE_FOR_stack_tie = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @get_next_active_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_next_active_insn(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @NULL_RTX, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i64, i64* @NULL_RTX, align 8
  store i64 %14, i64* %3, align 8
  br label %61

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %58
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @NEXT_INSN(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NULL_RTX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %16
  %27 = load i64, i64* @NULL_RTX, align 8
  store i64 %27, i64* %3, align 8
  br label %61

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @CALL_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @JUMP_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @NONJUMP_INSN_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @PATTERN(i64 %41)
  %43 = call i64 @GET_CODE(i32 %42)
  %44 = load i64, i64* @USE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @PATTERN(i64 %47)
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @CLOBBER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @INSN_CODE(i64 %53)
  %55 = load i64, i64* @CODE_FOR_stack_tie, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %32, %28
  br label %59

58:                                               ; preds = %52, %46, %40, %36
  br label %16

59:                                               ; preds = %57
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %26, %13
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @INSN_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
