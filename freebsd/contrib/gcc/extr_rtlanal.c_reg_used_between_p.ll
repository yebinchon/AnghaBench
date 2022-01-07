; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_used_between_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_used_between_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_used_between_p(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @NEXT_INSN(i64 %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %42, %13
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @INSN_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @PATTERN(i64 %26)
  %28 = call i64 @reg_overlap_mentioned_p(i64 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @CALL_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @USE, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @find_reg_fusage(i64 %35, i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %24
  store i32 1, i32* %4, align 4
  br label %46

41:                                               ; preds = %34, %30, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @NEXT_INSN(i64 %43)
  store i64 %44, i64* %8, align 8
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @find_reg_fusage(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
