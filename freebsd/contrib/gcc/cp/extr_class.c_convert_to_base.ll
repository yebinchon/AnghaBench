; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_convert_to_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_convert_to_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ba_check = common dso_local global i32 0, align 4
@ba_unique = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_to_base(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  %14 = call i64 @TYPE_PTR_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  %19 = call i64 @TREE_TYPE(i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  store i64 %21, i64* %7, align 8
  br label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ba_check, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ba_unique, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i64 @lookup_base(i64 %26, i64 %27, i32 %35, i32* null)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @error_mark_node, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %34
  %44 = load i64, i64* @error_mark_node, align 8
  store i64 %44, i64* %5, align 8
  br label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @PLUS_EXPR, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @build_base_path(i32 %46, i64 %47, i64 %48, i32 %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %45, %43
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @lookup_base(i64, i64, i32, i32*) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
