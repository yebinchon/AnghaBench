; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_register_edge_assert_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_register_edge_assert_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@found_in_subgraph = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i64 0, align 8
@EDGE_FALSE_VALUE = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_false_node = common dso_local global i64 0, align 8
@boolean_true_node = common dso_local global i64 0, align 8
@GT_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_4__*, i32)* @register_edge_assert_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_edge_assert_for(i64 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @bsi_stmt(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  %22 = load i32, i32* @found_in_subgraph, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @SSA_NAME_VERSION(i64 %23)
  %25 = call i32 @TEST_BIT(i32 %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %135

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @COND_EXPR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @COND_EXPR_COND(i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EDGE_FALSE_VALUE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load i32, i32* @EQ_EXPR, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @boolean_false_node, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @boolean_true_node, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %8, align 8
  br label %125

56:                                               ; preds = %33
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 1)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = call i64 @TREE_CODE(i64 %62)
  %64 = call i32 @swap_tree_comparison(i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @TREE_OPERAND(i64 %65, i32 0)
  store i64 %66, i64* %8, align 8
  br label %73

67:                                               ; preds = %56
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @TREE_CODE(i64 %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @TREE_OPERAND(i64 %71, i32 1)
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @invert_tree_comparison(i32 %77, i32 0)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @GT_EXPR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @LT_EXPR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %83, %79
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @TREE_TYPE(i64 %88)
  %90 = call i64 @INTEGRAL_TYPE_P(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @TREE_TYPE(i64 %93)
  %95 = call i64 @SCALAR_FLOAT_TYPE_P(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %92, %87
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @TREE_TYPE(i64 %98)
  %100 = call i64 @TYPE_MIN_VALUE(i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @TREE_TYPE(i64 %101)
  %103 = call i64 @TYPE_MAX_VALUE(i32 %102)
  store i64 %103, i64* %14, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @GT_EXPR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i64 @compare_values(i64 %108, i64 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %135

113:                                              ; preds = %107, %97
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @LT_EXPR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @compare_values(i64 %118, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %135

123:                                              ; preds = %117, %113
  br label %124

124:                                              ; preds = %123, %92, %83
  br label %125

125:                                              ; preds = %124, %54
  br label %128

126:                                              ; preds = %28
  %127 = call i32 (...) @gcc_unreachable()
  br label %128

128:                                              ; preds = %126, %125
  %129 = load i64, i64* %5, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @register_new_assert_for(i64 %129, i32 %130, i64 %131, i32* null, %struct.TYPE_4__* %132, i32 %133)
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %128, %122, %112, %27, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i64) #1

declare dso_local i32 @TEST_BIT(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @COND_EXPR_COND(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @swap_tree_comparison(i64) #1

declare dso_local i32 @invert_tree_comparison(i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @SCALAR_FLOAT_TYPE_P(i32) #1

declare dso_local i64 @TYPE_MIN_VALUE(i32) #1

declare dso_local i64 @TYPE_MAX_VALUE(i32) #1

declare dso_local i64 @compare_values(i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @register_new_assert_for(i64, i32, i64, i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
