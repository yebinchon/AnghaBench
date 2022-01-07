; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_get_callee_fndecl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_get_callee_fndecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_callee_fndecl(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @error_mark_node, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %2, align 8
  br label %62

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @CALL_EXPR, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @TREE_OPERAND(i64 %17, i32 0)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @STRIP_NOPS(i64 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @DECL_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %10
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @FUNCTION_DECL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_READONLY(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @TREE_THIS_VOLATILE(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @DECL_INITIAL(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @DECL_INITIAL(i64 %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %41, %37, %33, %29, %24, %10
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @ADDR_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_OPERAND(i64 %50, i32 0)
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @FUNCTION_DECL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 0)
  store i64 %57, i64* %2, align 8
  br label %62

58:                                               ; preds = %49, %44
  %59 = load i64 (i64)*, i64 (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i64 %59(i64 %60)
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %58, %55, %8
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @TREE_READONLY(i64) #1

declare dso_local i32 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i64 @DECL_INITIAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
