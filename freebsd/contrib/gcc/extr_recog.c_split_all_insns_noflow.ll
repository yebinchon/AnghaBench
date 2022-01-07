; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_split_all_insns_noflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_split_all_insns_noflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_all_insns_noflow() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 (...) @get_insns()
  store i64 %4, i64* %2, align 8
  br label %5

5:                                                ; preds = %35, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @NEXT_INSN(i64 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @INSN_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @single_set(i64 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @set_noop_p(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64, i64* @reload_completed, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @delete_insn_and_edges(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %33

30:                                               ; preds = %19, %14
  %31 = load i64, i64* %2, align 8
  %32 = call i32 @split_insn(i64 %31)
  br label %33

33:                                               ; preds = %30, %29
  br label %34

34:                                               ; preds = %33, %8
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %1, align 8
  store i64 %36, i64* %2, align 8
  br label %5

37:                                               ; preds = %5
  ret i32 0
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @set_noop_p(i64) #1

declare dso_local i32 @delete_insn_and_edges(i64) #1

declare dso_local i32 @split_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
