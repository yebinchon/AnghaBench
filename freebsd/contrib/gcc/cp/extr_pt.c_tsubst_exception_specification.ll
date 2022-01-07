; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_exception_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_tsubst_exception_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i64)* @tsubst_exception_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tsubst_exception_specification(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @TYPE_RAISES_EXCEPTIONS(i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @TREE_VALUE(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %11, align 8
  br label %48

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @TREE_VALUE(i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @tsubst(i32 %30, i64 %31, i32 %32, i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @error_mark_node, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %5, align 8
  br label %51

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @add_exception_specifier(i64 %41, i64 %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @TREE_CHAIN(i64 %45)
  store i64 %46, i64* %10, align 8
  br label %25

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %22
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @TYPE_RAISES_EXCEPTIONS(i64) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i64 @tsubst(i32, i64, i32, i64) #1

declare dso_local i64 @add_exception_specifier(i64, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
