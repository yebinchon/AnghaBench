; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-objcp-common.c_cp_expr_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-objcp-common.c_cp_expr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONSTRUCTOR = common dso_local global i64 0, align 8
@size_zero_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_expr_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_TYPE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @CLASS_TYPE_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TYPE_HAS_COMPLEX_INIT_REF(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TYPE_HAS_COMPLEX_ASSIGN_REF(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @CONSTRUCTOR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @CP_AGGREGATE_TYPE_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %18, %14, %10
  %28 = phi i1 [ true, %18 ], [ true, %14 ], [ true, %10 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @is_empty_class(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @size_zero_node, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @CLASSTYPE_SIZE_UNIT(i32 %37)
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @lhd_expr_size(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_HAS_COMPLEX_INIT_REF(i32) #1

declare dso_local i32 @TYPE_HAS_COMPLEX_ASSIGN_REF(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @CP_AGGREGATE_TYPE_P(i32) #1

declare dso_local i64 @is_empty_class(i32) #1

declare dso_local i32 @CLASSTYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @lhd_expr_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
