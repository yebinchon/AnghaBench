; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vn.c_get_value_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vn.c_get_value_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_value_handle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @is_gimple_min_invariant(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @SSA_NAME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @SSA_NAME_VALUE(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @EXPR_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @DECL_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @TREE_LIST, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @CONSTRUCTOR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31, %26, %22, %18
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.TYPE_3__* @tree_common_ann(i32 %37)
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @NULL_TREE, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %31
  %50 = call i32 (...) @gcc_unreachable()
  br label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %8, %15, %47, %51
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_VALUE(i32) #1

declare dso_local i64 @EXPR_P(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local %struct.TYPE_3__* @tree_common_ann(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
