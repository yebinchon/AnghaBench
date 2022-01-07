; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_simplify_using_entry_checks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-unswitch.c_simplify_using_entry_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@COND_EXPR = common dso_local global i64 0, align 8
@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i64 0, align 8
@boolean_false_node = common dso_local global i64 0, align 8
@ENTRY_BLOCK_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64)* @simplify_using_entry_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_using_entry_checks(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.loop*, %struct.loop** %4, align 8
  %9 = call %struct.TYPE_4__* @loop_preheader_edge(%struct.loop* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  br label %10

10:                                               ; preds = %2, %61
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @last_stmt(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @COND_EXPR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @COND_EXPR_COND(i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @operand_equal_p(i32 %24, i64 %25, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @boolean_true_node, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @boolean_false_node, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %3, align 8
  br label %62

41:                                               ; preds = %22, %17, %10
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @single_pred_p(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  store i64 %48, i64* %3, align 8
  br label %62

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.TYPE_4__* @single_pred_edge(i64 %52)
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ENTRY_BLOCK_PTR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %3, align 8
  br label %62

61:                                               ; preds = %49
  br label %10

62:                                               ; preds = %59, %47, %39
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local %struct.TYPE_4__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local i64 @last_stmt(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @operand_equal_p(i32, i64, i32) #1

declare dso_local i32 @COND_EXPR_COND(i64) #1

declare dso_local i32 @single_pred_p(i64) #1

declare dso_local %struct.TYPE_4__* @single_pred_edge(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
