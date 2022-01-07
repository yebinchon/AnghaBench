; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_interpret_rhs_modify_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_interpret_rhs_modify_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@integer_minus_one_node = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32, i32)* @interpret_rhs_modify_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_rhs_modify_expr(%struct.loop* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @is_gimple_min_invariant(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @chrec_convert(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %141

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TREE_CODE(i32 %24)
  switch i32 %25, label %137 [
    i32 129, label %26
    i32 133, label %49
    i32 131, label %72
    i32 132, label %88
    i32 128, label %111
    i32 135, label %118
    i32 130, label %127
    i32 134, label %127
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 1)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.loop*, %struct.loop** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @analyze_scalar_evolution(%struct.loop* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.loop*, %struct.loop** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @analyze_scalar_evolution(%struct.loop* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @chrec_convert(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @chrec_convert(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @chrec_fold_plus(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %139

49:                                               ; preds = %23
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @TREE_OPERAND(i32 %50, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 1)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.loop*, %struct.loop** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @analyze_scalar_evolution(%struct.loop* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.loop*, %struct.loop** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @analyze_scalar_evolution(%struct.loop* %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @chrec_convert(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @chrec_convert(i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @chrec_fold_minus(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %139

72:                                               ; preds = %23
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @TREE_OPERAND(i32 %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.loop*, %struct.loop** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @analyze_scalar_evolution(%struct.loop* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @chrec_convert(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @integer_minus_one_node, align 4
  %86 = call i32 @fold_convert(i32 %84, i32 %85)
  %87 = call i32 @chrec_fold_multiply(i32 %82, i32 %83, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %139

88:                                               ; preds = %23
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @TREE_OPERAND(i32 %89, i32 0)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @TREE_OPERAND(i32 %91, i32 1)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.loop*, %struct.loop** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @analyze_scalar_evolution(%struct.loop* %93, i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load %struct.loop*, %struct.loop** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @analyze_scalar_evolution(%struct.loop* %96, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @chrec_convert(i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @chrec_convert(i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @chrec_fold_multiply(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  br label %139

111:                                              ; preds = %23
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.loop*, %struct.loop** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @analyze_scalar_evolution(%struct.loop* %113, i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @chrec_convert(i32 %112, i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %139

118:                                              ; preds = %23
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @ASSERT_EXPR_VAR(i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.loop*, %struct.loop** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @analyze_scalar_evolution(%struct.loop* %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @chrec_convert(i32 %121, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %139

127:                                              ; preds = %23, %23
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @TREE_OPERAND(i32 %128, i32 0)
  store i32 %129, i32* %11, align 4
  %130 = load %struct.loop*, %struct.loop** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @analyze_scalar_evolution(%struct.loop* %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @chrec_convert(i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %10, align 4
  br label %139

137:                                              ; preds = %23
  %138 = load i32, i32* @chrec_dont_know, align 4
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %137, %127, %118, %111, %88, %72, %49, %26
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %18
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local i32 @chrec_fold_plus(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_minus(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_multiply(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @ASSERT_EXPR_VAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
