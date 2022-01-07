; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_taken_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_find_taken_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@LABEL_EXPR = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_taken_edge(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @last_stmt(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @is_ctrl_stmt(i32 %11)
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @is_gimple_min_invariant(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @COND_EXPR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @find_taken_edge_cond_expr(i32 %26, i32 %27)
  store i32* %28, i32** %3, align 8
  br label %66

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @SWITCH_EXPR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @find_taken_edge_switch_expr(i32 %35, i32 %36)
  store i32* %37, i32** %3, align 8
  br label %66

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @computed_goto_p(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @ADDR_EXPR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = load i64, i64* @LABEL_EXPR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TREE_OPERAND(i32 %53, i32 0)
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @LABEL_DECL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @TREE_OPERAND(i32 %60, i32 0)
  %62 = call i32* @find_taken_edge_computed_goto(i32 %59, i32 %61)
  store i32* %62, i32** %3, align 8
  br label %66

63:                                               ; preds = %52, %47
  store i32* null, i32** %3, align 8
  br label %66

64:                                               ; preds = %38
  %65 = call i32 (...) @gcc_unreachable()
  br label %66

66:                                               ; preds = %64, %63, %58, %34, %25, %19
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @last_stmt(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @is_ctrl_stmt(i32) #1

declare dso_local i32 @is_gimple_min_invariant(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32* @find_taken_edge_cond_expr(i32, i32) #1

declare dso_local i32* @find_taken_edge_switch_expr(i32, i32) #1

declare dso_local i64 @computed_goto_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32* @find_taken_edge_computed_goto(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
