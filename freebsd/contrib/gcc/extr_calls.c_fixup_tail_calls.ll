; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_fixup_tail_calls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_fixup_tail_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTE_INSN_FUNCTION_BEG = common dso_local global i64 0, align 8
@REG_EQUIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixup_tail_calls() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @get_insns()
  store i64 %3, i64* %1, align 8
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load i64, i64* %1, align 8
  %9 = call i64 @NOTE_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @NOTE_LINE_NUMBER(i64 %12)
  %14 = load i64, i64* @NOTE_INSN_FUNCTION_BEG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %33

17:                                               ; preds = %11, %7
  br label %18

18:                                               ; preds = %17, %24
  %19 = load i64, i64* %1, align 8
  %20 = load i32, i32* @REG_EQUIV, align 4
  %21 = call i64 @find_reg_note(i64 %19, i32 %20, i32 0)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @remove_note(i64 %25, i64 %26)
  br label %18

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %1, align 8
  %32 = call i64 @NEXT_INSN(i64 %31)
  store i64 %32, i64* %1, align 8
  br label %4

33:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i32 @remove_note(i64, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
