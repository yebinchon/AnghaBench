; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_outermost_invariant_loop_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_outermost_invariant_loop_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@tcc_unary = common dso_local global i32 0, align 4
@tcc_binary = common dso_local global i32 0, align 4
@tcc_expression = common dso_local global i32 0, align 4
@tcc_comparison = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.loop* (i32, %struct.loop*)* @outermost_invariant_loop_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.loop* @outermost_invariant_loop_expr(i32 %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.loop*, align 8
  %10 = alloca %struct.loop*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.loop* %1, %struct.loop** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = call i32 @TREE_CODE_CLASS(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.loop*, %struct.loop** %5, align 8
  %15 = call %struct.loop* @superloop_at_depth(%struct.loop* %14, i32 1)
  store %struct.loop* %15, %struct.loop** %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @SSA_NAME, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @INTEGER_CST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @is_gimple_min_invariant(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %20, %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.loop*, %struct.loop** %5, align 8
  %32 = call %struct.loop* @outermost_invariant_loop(i32 %30, %struct.loop* %31)
  store %struct.loop* %32, %struct.loop** %3, align 8
  br label %80

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @tcc_unary, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @tcc_binary, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @tcc_expression, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @tcc_comparison, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store %struct.loop* null, %struct.loop** %3, align 8
  br label %80

50:                                               ; preds = %45, %41, %37, %33
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @TREE_CODE(i32 %51)
  %53 = call i32 @TREE_CODE_LENGTH(i64 %52)
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %75, %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @TREE_OPERAND(i32 %59, i32 %60)
  %62 = load %struct.loop*, %struct.loop** %5, align 8
  %63 = call %struct.loop* @outermost_invariant_loop_expr(i32 %61, %struct.loop* %62)
  store %struct.loop* %63, %struct.loop** %10, align 8
  %64 = load %struct.loop*, %struct.loop** %10, align 8
  %65 = icmp ne %struct.loop* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.loop* null, %struct.loop** %3, align 8
  br label %80

67:                                               ; preds = %58
  %68 = load %struct.loop*, %struct.loop** %9, align 8
  %69 = load %struct.loop*, %struct.loop** %10, align 8
  %70 = call i64 @flow_loop_nested_p(%struct.loop* %68, %struct.loop* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load %struct.loop*, %struct.loop** %10, align 8
  store %struct.loop* %73, %struct.loop** %9, align 8
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.loop*, %struct.loop** %9, align 8
  store %struct.loop* %79, %struct.loop** %3, align 8
  br label %80

80:                                               ; preds = %78, %66, %49, %29
  %81 = load %struct.loop*, %struct.loop** %3, align 8
  ret %struct.loop* %81
}

declare dso_local i32 @TREE_CODE_CLASS(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local %struct.loop* @superloop_at_depth(%struct.loop*, i32) #1

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local %struct.loop* @outermost_invariant_loop(i32, %struct.loop*) #1

declare dso_local i32 @TREE_CODE_LENGTH(i64) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @flow_loop_nested_p(%struct.loop*, %struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
