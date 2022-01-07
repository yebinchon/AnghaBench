; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_replace_initial_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_replace_initial_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chrec_replace_initial_condition(i32 %0, i32 %1) #0 {
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
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @chrec_type(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @chrec_type(i32 %14)
  %16 = icmp eq i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  switch i32 %20, label %31 [
    i32 128, label %21
  ]

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CHREC_VARIABLE(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CHREC_LEFT(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @chrec_replace_initial_condition(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CHREC_RIGHT(i32 %28)
  %30 = call i32 @build_polynomial_chrec(i32 %23, i32 %27, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %11
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %21, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @chrec_type(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
