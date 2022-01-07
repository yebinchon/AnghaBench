; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.h_evolution_function_is_affine_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.h_evolution_function_is_affine_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @evolution_function_is_affine_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evolution_function_is_affine_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @TREE_CODE(i64 %9)
  switch i32 %10, label %27 [
    i32 128, label %11
  ]

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @CHREC_LEFT(i64 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @CHREC_VARIABLE(i64 %14)
  %16 = call i32 @evolution_function_is_invariant_p(i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @CHREC_RIGHT(i64 %19)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @CHREC_VARIABLE(i64 %21)
  %23 = call i32 @evolution_function_is_invariant_p(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %28

26:                                               ; preds = %18, %11
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @evolution_function_is_invariant_p(i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i64) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i32 @CHREC_RIGHT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
