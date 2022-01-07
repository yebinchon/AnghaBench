; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_find_line_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_find_line_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_line_numbers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_line_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_line_note(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* @no_line_numbers, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %26

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @NOTE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @NOTE_LINE_NUMBER(i64 %16)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %24

20:                                               ; preds = %15, %11
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @PREV_INSN(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load i64, i64* %3, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
