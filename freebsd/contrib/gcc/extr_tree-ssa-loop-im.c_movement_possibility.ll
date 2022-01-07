; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_movement_possibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_movement_possibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@flag_unswitch_loops = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@MOVE_POSSIBLE = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@MOVE_IMPOSSIBLE = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@MOVE_PRESERVE_EXECUTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @movement_possibility(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @flag_unswitch_loops, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @COND_EXPR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @MOVE_POSSIBLE, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %8, %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @MODIFY_EXPR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @MOVE_IMPOSSIBLE, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @stmt_ends_bb_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @MOVE_IMPOSSIBLE, align 4
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.TYPE_2__* @stmt_ann(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MOVE_IMPOSSIBLE, align 4
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @SSA_NAME, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @MOVE_IMPOSSIBLE, align 4
  store i32 %48, i32* %2, align 4
  br label %76

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 1)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @TREE_SIDE_EFFECTS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @MOVE_IMPOSSIBLE, align 4
  store i32 %56, i32* %2, align 4
  br label %76

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @TREE_CODE(i32 %58)
  %60 = load i64, i64* @SSA_NAME, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @tree_could_trap_p(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %57
  %67 = load i32, i32* @MOVE_PRESERVE_EXECUTION, align 4
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %62
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @get_call_expr_in(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @MOVE_PRESERVE_EXECUTION, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @MOVE_POSSIBLE, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %66, %55, %47, %34, %26, %20, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @stmt_ends_bb_p(i32) #1

declare dso_local %struct.TYPE_2__* @stmt_ann(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i64 @tree_could_trap_p(i32) #1

declare dso_local i64 @get_call_expr_in(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
