; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_hide_evolution_in_other_loops_than_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_hide_evolution_in_other_loops_than_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hide_evolution_in_other_loops_than_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @automatically_generated_chrec_p(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TREE_CODE(i32 %12)
  switch i32 %13, label %41 [
    i32 128, label %14
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @CHREC_VARIABLE(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @CHREC_LEFT(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @hide_evolution_in_other_loops_than_loop(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @CHREC_RIGHT(i32 %25)
  %27 = call i32 @build_polynomial_chrec(i32 %20, i32 %24, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CHREC_VARIABLE(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @initial_condition(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @CHREC_LEFT(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @hide_evolution_in_other_loops_than_loop(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %11
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %36, %33, %19, %9
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @initial_condition(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
