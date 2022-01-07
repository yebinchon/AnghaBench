; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_reg_note(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @gcc_assert(i64 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @INSN_P(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %59

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @REG_NOTES(i64 %19)
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %32, %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @REG_NOTE_KIND(i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %4, align 8
  br label %59

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @XEXP(i64 %33, i32 1)
  store i64 %34, i64* %8, align 8
  br label %21

35:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %59

36:                                               ; preds = %15
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @REG_NOTES(i64 %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %55, %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @REG_NOTE_KIND(i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %4, align 8
  br label %59

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @XEXP(i64 %56, i32 1)
  store i64 %57, i64* %8, align 8
  br label %39

58:                                               ; preds = %39
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %58, %52, %35, %29, %14
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i32 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
