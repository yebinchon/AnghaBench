; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_signed_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_signed_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @signed_condition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %11 [
    i32 137, label %5
    i32 128, label %5
    i32 134, label %5
    i32 136, label %5
    i32 130, label %5
    i32 132, label %5
    i32 133, label %7
    i32 135, label %8
    i32 129, label %9
    i32 131, label %10
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1
  %6 = load i32, i32* %3, align 4
  store i32 %6, i32* %2, align 4
  br label %13

7:                                                ; preds = %1
  store i32 134, i32* %2, align 4
  br label %13

8:                                                ; preds = %1
  store i32 136, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  store i32 130, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  store i32 132, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @gcc_unreachable()
  br label %13

13:                                               ; preds = %5, %7, %8, %9, %10, %11
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
