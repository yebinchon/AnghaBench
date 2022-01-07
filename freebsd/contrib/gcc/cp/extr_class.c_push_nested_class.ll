; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_push_nested_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_push_nested_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_nested_class(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @NAMESPACE_DECL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @IS_AGGR_TYPE(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @BOUND_TEMPLATE_TEMPLATE_PARM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %16, %11, %7, %1
  br label %46

31:                                               ; preds = %25
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @TYPE_MAIN_DECL(i64 %32)
  %34 = call i64 @DECL_CONTEXT(i32 %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @CLASS_TYPE_P(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %3, align 8
  call void @push_nested_class(i64 %42)
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @pushclass(i64 %44)
  br label %46

46:                                               ; preds = %43, %30
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i32 @pushclass(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
