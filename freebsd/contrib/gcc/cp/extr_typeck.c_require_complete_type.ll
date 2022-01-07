; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_require_complete_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_require_complete_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@unknown_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @require_complete_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @processing_template_decl, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %2, align 8
  br label %44

13:                                               ; preds = %7
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @OVERLOAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @unknown_type_node, align 8
  store i64 %19, i64* %4, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @error_mark_node, align 8
  store i64 %28, i64* %2, align 8
  br label %44

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @COMPLETE_TYPE_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* %2, align 8
  br label %44

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @complete_type_or_else(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* %3, align 8
  store i64 %41, i64* %2, align 8
  br label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @error_mark_node, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %42, %40, %33, %27, %11
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @complete_type_or_else(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
