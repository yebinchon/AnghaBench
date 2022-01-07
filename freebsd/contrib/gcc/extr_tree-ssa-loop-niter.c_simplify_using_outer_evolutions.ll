; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_simplify_using_outer_evolutions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_simplify_using_outer_evolutions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop*, i64)* @simplify_using_outer_evolutions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_using_outer_evolutions(%struct.loop* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @TREE_CODE(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @is_gimple_min_invariant(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %3, align 8
  br label %102

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @COND_EXPR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %27, %23, %19
  store i32 0, i32* %7, align 4
  %32 = load %struct.loop*, %struct.loop** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @TREE_OPERAND(i64 %33, i32 0)
  %35 = call i64 @simplify_using_outer_evolutions(%struct.loop* %32, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_OPERAND(i64 %36, i32 0)
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.loop*, %struct.loop** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @TREE_OPERAND(i64 %43, i32 1)
  %45 = call i64 @simplify_using_outer_evolutions(%struct.loop* %42, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 1)
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @COND_EXPR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.loop*, %struct.loop** %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TREE_OPERAND(i64 %57, i32 2)
  %59 = call i64 @simplify_using_outer_evolutions(%struct.loop* %56, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @TREE_OPERAND(i64 %60, i32 2)
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %55
  br label %68

66:                                               ; preds = %51
  %67 = load i64, i64* @NULL_TREE, align 8
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @COND_EXPR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @boolean_type_node, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @fold_build3(i32 %76, i32 %77, i64 %78, i64 %79, i64 %80)
  store i64 %81, i64* %5, align 8
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @boolean_type_node, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @fold_build2(i32 %83, i32 %84, i64 %85, i64 %86)
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %68
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* %3, align 8
  br label %102

91:                                               ; preds = %27
  %92 = load %struct.loop*, %struct.loop** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @instantiate_parameters(%struct.loop* %92, i64 %93)
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @is_gimple_min_invariant(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %3, align 8
  br label %102

100:                                              ; preds = %91
  %101 = load i64, i64* %5, align 8
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %100, %98, %89, %17
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @fold_build3(i32, i32, i64, i64, i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @instantiate_parameters(%struct.loop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
