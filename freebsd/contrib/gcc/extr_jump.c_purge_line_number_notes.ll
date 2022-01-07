; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_purge_line_number_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_purge_line_number_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTE_INSN_FUNCTION_BEG = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @purge_line_number_notes() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %3 = call i64 (...) @get_insns()
  store i64 %3, i64* %2, align 8
  br label %4

4:                                                ; preds = %45, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @NOTE_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @NOTE_LINE_NUMBER(i64 %12)
  %14 = load i64, i64* @NOTE_INSN_FUNCTION_BEG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @NULL_RTX, align 8
  store i64 %17, i64* %1, align 8
  br label %43

18:                                               ; preds = %11
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @NOTE_LINE_NUMBER(i64 %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i64, i64* %1, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @NOTE_SOURCE_FILE(i64 %26)
  %28 = load i64, i64* %1, align 8
  %29 = call i64 @NOTE_SOURCE_FILE(i64 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @NOTE_LINE_NUMBER(i64 %32)
  %34 = load i64, i64* %1, align 8
  %35 = call i64 @NOTE_LINE_NUMBER(i64 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @delete_related_insns(i64 %38)
  br label %45

40:                                               ; preds = %31, %25, %22
  %41 = load i64, i64* %2, align 8
  store i64 %41, i64* %1, align 8
  br label %42

42:                                               ; preds = %40, %18
  br label %43

43:                                               ; preds = %42, %16
  br label %44

44:                                               ; preds = %43, %7
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i64, i64* %2, align 8
  %47 = call i64 @NEXT_INSN(i64 %46)
  store i64 %47, i64* %2, align 8
  br label %4

48:                                               ; preds = %4
  ret i32 0
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @NOTE_SOURCE_FILE(i64) #1

declare dso_local i32 @delete_related_insns(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
