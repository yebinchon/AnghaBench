; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_function_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_decl_function_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_MARK = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decl_function_context(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @ERROR_MARK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @DECL_VINDEX(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @TREE_TYPE(i64 %20)
  %22 = call i32 @TYPE_ARG_TYPES(i32 %21)
  %23 = call i64 @TREE_VALUE(i32 %22)
  %24 = call i32 @TREE_TYPE(i64 %23)
  %25 = call i64 @TYPE_MAIN_VARIANT(i32 %24)
  store i64 %25, i64* %4, align 8
  br label %29

26:                                               ; preds = %15, %10
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @DECL_CONTEXT(i64 %27)
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @FUNCTION_DECL, align 8
  %38 = icmp ne i64 %36, %37
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %53

41:                                               ; preds = %39
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @BLOCK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @BLOCK_SUPERCONTEXT(i64 %47)
  store i64 %48, i64* %4, align 8
  br label %52

49:                                               ; preds = %41
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @get_containing_scope(i64 %50)
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %31

53:                                               ; preds = %39
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %53, %9
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_VINDEX(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_VALUE(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @BLOCK_SUPERCONTEXT(i64) #1

declare dso_local i64 @get_containing_scope(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
