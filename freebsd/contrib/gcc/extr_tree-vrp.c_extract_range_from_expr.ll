; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@ASSERT_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@tcc_binary = common dso_local global i64 0, align 8
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@TRUTH_XOR_EXPR = common dso_local global i32 0, align 4
@tcc_unary = common dso_local global i64 0, align 8
@tcc_comparison = common dso_local global i64 0, align 8
@VR_VARYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @extract_range_from_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_range_from_expr(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ASSERT_EXPR, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @extract_range_from_assert(%struct.TYPE_12__* %13, i32 %14)
  br label %87

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SSA_NAME, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @extract_range_from_ssa_name(%struct.TYPE_12__* %21, i32 %22)
  br label %86

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @TREE_CODE_CLASS(i32 %25)
  %27 = load i64, i64* @tcc_binary, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @TRUTH_XOR_EXPR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41, %37, %33, %29, %24
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @extract_range_from_binary_expr(%struct.TYPE_12__* %50, i32 %51)
  br label %85

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @TREE_CODE_CLASS(i32 %54)
  %56 = load i64, i64* @tcc_unary, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @extract_range_from_unary_expr(%struct.TYPE_12__* %59, i32 %60)
  br label %84

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @TREE_CODE_CLASS(i32 %63)
  %65 = load i64, i64* @tcc_comparison, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @extract_range_from_comparison(%struct.TYPE_12__* %68, i32 %69)
  br label %83

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @is_gimple_min_invariant(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @set_value_range_to_value(%struct.TYPE_12__* %76, i32 %77, i32* null)
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = call i32 @set_value_range_to_varying(%struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %49
  br label %86

86:                                               ; preds = %85, %20
  br label %87

87:                                               ; preds = %86, %12
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VR_VARYING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @TREE_TYPE(i32 %94)
  %96 = call i64 @INTEGRAL_TYPE_P(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @vrp_expr_computes_nonnegative(i32 %99, i32* %6)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @TREE_TYPE(i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @is_overflow_infinity(i32 %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %108, %102
  %113 = phi i1 [ true, %102 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @set_value_range_to_nonnegative(%struct.TYPE_12__* %103, i32 %105, i32 %114)
  br label %129

116:                                              ; preds = %98, %93
  %117 = load i32, i32* %4, align 4
  %118 = call i64 @vrp_expr_computes_nonzero(i32 %117, i32* %6)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @TREE_TYPE(i32 %125)
  %127 = call i32 @set_value_range_to_nonnull(%struct.TYPE_12__* %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %120, %116
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %87
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @extract_range_from_assert(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @extract_range_from_ssa_name(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @extract_range_from_binary_expr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @extract_range_from_unary_expr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @extract_range_from_comparison(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @set_value_range_to_value(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_12__*) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @vrp_expr_computes_nonnegative(i32, i32*) #1

declare dso_local i32 @set_value_range_to_nonnegative(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @is_overflow_infinity(i32) #1

declare dso_local i64 @vrp_expr_computes_nonzero(i32, i32*) #1

declare dso_local i32 @set_value_range_to_nonnull(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
