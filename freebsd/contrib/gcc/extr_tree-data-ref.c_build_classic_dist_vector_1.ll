; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_build_classic_dist_vector_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_build_classic_dist_vector_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }
%struct.data_reference = type { i32 }
%struct.subscript = type { i32 }

@POLYNOMIAL_CHREC = common dso_local global i64 0, align 8
@chrec_known = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_dependence_relation*, %struct.data_reference*, %struct.data_reference*, i32*, i32*, i32*)* @build_classic_dist_vector_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_classic_dist_vector_1(%struct.data_dependence_relation* %0, %struct.data_reference* %1, %struct.data_reference* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.data_dependence_relation*, align 8
  %9 = alloca %struct.data_reference*, align 8
  %10 = alloca %struct.data_reference*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.subscript*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %8, align 8
  store %struct.data_reference* %1, %struct.data_reference** %9, align 8
  store %struct.data_reference* %2, %struct.data_reference** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %24 = call i32 @DDR_NB_LOOPS(%struct.data_dependence_relation* %23)
  %25 = call i32* @lambda_vector_new(i32 %24)
  store i32* %25, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %127, %6
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %29 = call i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation* %28)
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %31, label %130

31:                                               ; preds = %26
  %32 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.subscript* @DDR_SUBSCRIPT(%struct.data_dependence_relation* %32, i32 %33)
  store %struct.subscript* %34, %struct.subscript** %18, align 8
  %35 = load %struct.subscript*, %struct.subscript** %18, align 8
  %36 = call i32 @SUB_DISTANCE(%struct.subscript* %35)
  %37 = call i64 @chrec_contains_undetermined(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %41 = call i32 @non_affine_dependence_relation(%struct.data_dependence_relation* %40)
  store i32 0, i32* %7, align 4
  br label %131

42:                                               ; preds = %31
  %43 = load %struct.data_reference*, %struct.data_reference** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @DR_ACCESS_FN(%struct.data_reference* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.data_reference*, %struct.data_reference** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @DR_ACCESS_FN(%struct.data_reference* %46, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i64 @TREE_CODE(i32 %49)
  %51 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %42
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @POLYNOMIAL_CHREC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %53
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @CHREC_VARIABLE(i32 %59)
  %61 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %62 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %61)
  %63 = call i32 @index_in_loop_nest(i32 %60, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @CHREC_VARIABLE(i32 %64)
  %66 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %67 = call i32 @DDR_LOOP_NEST(%struct.data_dependence_relation* %66)
  %68 = call i32 @index_in_loop_nest(i32 %65, i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %21, align 4
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* %22, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MIN(i32 %78, i32 %80)
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.subscript*, %struct.subscript** %18, align 8
  %84 = call i32 @SUB_DISTANCE(%struct.subscript* %83)
  %85 = call i64 @chrec_contains_undetermined(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %89 = call i32 @non_affine_dependence_relation(%struct.data_dependence_relation* %88)
  store i32 0, i32* %7, align 4
  br label %131

90:                                               ; preds = %76
  %91 = load %struct.subscript*, %struct.subscript** %18, align 8
  %92 = call i32 @SUB_DISTANCE(%struct.subscript* %91)
  %93 = call i32 @int_cst_value(i32 %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %110 = load i32, i32* @chrec_known, align 4
  %111 = call i32 @finalize_ddr_dependent(%struct.data_dependence_relation* %109, i32 %110)
  store i32 0, i32* %7, align 4
  br label %131

112:                                              ; preds = %100, %90
  %113 = load i32, i32* %19, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 1, i32* %121, align 4
  %122 = load i32*, i32** %12, align 8
  store i32 1, i32* %122, align 4
  br label %126

123:                                              ; preds = %53, %42
  %124 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %8, align 8
  %125 = call i32 @non_affine_dependence_relation(%struct.data_dependence_relation* %124)
  store i32 0, i32* %7, align 4
  br label %131

126:                                              ; preds = %112
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %26

130:                                              ; preds = %26
  store i32 1, i32* %7, align 4
  br label %131

131:                                              ; preds = %130, %123, %108, %87, %39
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32* @lambda_vector_new(i32) #1

declare dso_local i32 @DDR_NB_LOOPS(%struct.data_dependence_relation*) #1

declare dso_local i32 @DDR_NUM_SUBSCRIPTS(%struct.data_dependence_relation*) #1

declare dso_local %struct.subscript* @DDR_SUBSCRIPT(%struct.data_dependence_relation*, i32) #1

declare dso_local i64 @chrec_contains_undetermined(i32) #1

declare dso_local i32 @SUB_DISTANCE(%struct.subscript*) #1

declare dso_local i32 @non_affine_dependence_relation(%struct.data_dependence_relation*) #1

declare dso_local i32 @DR_ACCESS_FN(%struct.data_reference*, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @index_in_loop_nest(i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @DDR_LOOP_NEST(%struct.data_dependence_relation*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @int_cst_value(i32) #1

declare dso_local i32 @finalize_ddr_dependent(%struct.data_dependence_relation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
