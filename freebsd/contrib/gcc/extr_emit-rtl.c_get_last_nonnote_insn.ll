; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_get_last_nonnote_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_get_last_nonnote_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_insn = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_last_nonnote_insn() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @last_insn, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %46

5:                                                ; preds = %0
  %6 = load i64, i64* %1, align 8
  %7 = call i64 @NOTE_P(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @previous_insn(i64 %10)
  store i64 %11, i64* %1, align 8
  br label %12

12:                                               ; preds = %22, %9
  %13 = load i64, i64* %1, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* %1, align 8
  %17 = call i64 @NOTE_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %1, align 8
  %24 = call i64 @previous_insn(i64 %23)
  store i64 %24, i64* %1, align 8
  br label %12

25:                                               ; preds = %19
  br label %45

26:                                               ; preds = %5
  %27 = load i64, i64* %1, align 8
  %28 = call i64 @NONJUMP_INSN_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @PATTERN(i64 %31)
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @SEQUENCE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @PATTERN(i64 %37)
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @PATTERN(i64 %39)
  %41 = call i64 @XVECLEN(i32 %40, i32 0)
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @XVECEXP(i32 %38, i32 0, i64 %42)
  store i64 %43, i64* %1, align 8
  br label %44

44:                                               ; preds = %36, %30, %26
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %0
  %47 = load i64, i64* %1, align 8
  ret i64 %47
}

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @previous_insn(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i32, i32, i64) #1

declare dso_local i64 @XVECLEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
