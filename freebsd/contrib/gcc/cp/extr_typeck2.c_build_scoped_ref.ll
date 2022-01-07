; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_build_scoped_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck2.c_build_scoped_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@ba_check = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_scoped_ref(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @error_mark_node, align 8
  store i64 %13, i64* %4, align 8
  br label %53

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %27

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @TREE_TYPE(i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @ba_check, align 4
  %26 = call i64 @lookup_base(i32 %23, i64 %24, i32 %25, i32* null)
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @error_mark_node, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %27
  %35 = load i64, i64* @NULL_TREE, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @TREE_TYPE(i64 %41)
  %43 = call i32 @error_not_base_type(i64 %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* @error_mark_node, align 8
  store i64 %45, i64* %4, align 8
  br label %53

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @PLUS_EXPR, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @build_base_path(i32 %49, i64 %50, i64 %51, i32 1)
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %46, %44, %12
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @lookup_base(i32, i64, i32, i32*) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @error_not_base_type(i64, i32) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
