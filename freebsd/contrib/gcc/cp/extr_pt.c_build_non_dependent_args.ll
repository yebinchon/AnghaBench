; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_build_non_dependent_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_build_non_dependent_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_non_dependent_args(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %2, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @TREE_VALUE(i64 %12)
  %14 = call i32 @build_non_dependent_expr(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @tree_cons(i64 %11, i32 %14, i64 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @TREE_CHAIN(i64 %18)
  store i64 %19, i64* %3, align 8
  br label %7

20:                                               ; preds = %7
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @nreverse(i64 %21)
  ret i64 %22
}

declare dso_local i64 @tree_cons(i64, i32, i64) #1

declare dso_local i32 @build_non_dependent_expr(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @nreverse(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
