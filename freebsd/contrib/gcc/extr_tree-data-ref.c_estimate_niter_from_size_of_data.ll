; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_estimate_niter_from_size_of_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_estimate_niter_from_size_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@EXACT_DIV_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i64 0, align 8
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i64 0, align 8
@integer_one_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i64, i64, i64)* @estimate_niter_from_size_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_niter_from_size_of_data(%struct.loop* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @initial_condition(i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.loop*, %struct.loop** %5, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @evolution_part_in_loop_num(i64 %20, i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @TREE_TYPE(i64 %25)
  %27 = call i64 @TYPE_SIZE(i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @TREE_TYPE(i64 %28)
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = call i64 @TYPE_SIZE(i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @NULL_TREE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %4
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @INTEGER_CST, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @INTEGER_CST, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %4
  br label %122

46:                                               ; preds = %40
  %47 = load i32, i32* @EXACT_DIV_EXPR, align 4
  %48 = load i32, i32* @integer_type_node, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @fold_build2(i32 %47, i32 %48, i64 %49, i64 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @NULL_TREE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %46
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @NULL_TREE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %122

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @INTEGER_CST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %122

64:                                               ; preds = %59
  %65 = load i64, i64* %14, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @INTEGER_CST, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %64
  %70 = load i32, i32* @PLUS_EXPR, align 4
  %71 = load i32, i32* @integer_type_node, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i64 @fold_build2(i32 %70, i32 %71, i64 %72, i64 %73)
  store i64 %74, i64* %15, align 8
  %75 = load i32, i32* @GT_EXPR, align 4
  %76 = load i32, i32* @boolean_type_node, align 4
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i64 @fold_binary(i32 %75, i32 %76, i64 %77, i64 %78)
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* @boolean_true_node, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %69
  %84 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %85 = load i32, i32* @integer_type_node, align 4
  %86 = load i32, i32* @MINUS_EXPR, align 4
  %87 = load i32, i32* @integer_type_node, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i64 @fold_build2(i32 %86, i32 %87, i64 %88, i64 %89)
  %91 = load i64, i64* %14, align 8
  %92 = call i64 @fold_build2(i32 %84, i32 %85, i64 %90, i64 %91)
  store i64 %92, i64* %9, align 8
  br label %112

93:                                               ; preds = %69
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @boolean_false_node, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32, i32* @PLUS_EXPR, align 4
  %99 = load i32, i32* @integer_type_node, align 4
  %100 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %101 = load i32, i32* @integer_type_node, align 4
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* @MINUS_EXPR, align 4
  %104 = load i32, i32* @unsigned_type_node, align 4
  %105 = load i64, i64* @integer_zero_node, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i64 @fold_build2(i32 %103, i32 %104, i64 %105, i64 %106)
  %108 = call i64 @fold_build2(i32 %100, i32 %101, i64 %102, i64 %107)
  %109 = load i64, i64* @integer_one_node, align 8
  %110 = call i64 @fold_build2(i32 %98, i32 %99, i64 %108, i64 %109)
  store i64 %110, i64* %9, align 8
  br label %111

111:                                              ; preds = %97, %93
  br label %112

112:                                              ; preds = %111, %83
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.loop*, %struct.loop** %5, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @boolean_true_node, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @record_estimate(%struct.loop* %116, i64 %117, i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %115, %112
  br label %122

122:                                              ; preds = %45, %121, %64, %59, %55, %46
  ret void
}

declare dso_local i64 @initial_condition(i64) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i64 @fold_binary(i32, i32, i64, i64) #1

declare dso_local i32 @record_estimate(%struct.loop*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
