; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_split_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_split_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @split_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @split_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @PREV_INSN(i64 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @PATTERN(i64 %8)
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @try_split(i32 %9, i64 %10, i32 1)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @NULL_RTX, align 8
  store i64 %16, i64* %2, align 8
  br label %47

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @SET_INSN_DELETED(i64 %18)
  %20 = load i64, i64* @reload_completed, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @NEXT_INSN(i64 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %41, %26
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @INSN_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @cleanup_subreg_operands(i64 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @NEXT_INSN(i64 %42)
  store i64 %43, i64* %4, align 8
  br label %29

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %22, %17
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %15
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @try_split(i32, i64, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @SET_INSN_DELETED(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @cleanup_subreg_operands(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
