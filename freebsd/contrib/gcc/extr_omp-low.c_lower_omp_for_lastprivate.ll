; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_omp_for_lastprivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_omp_for_lastprivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_for_data = type { i32, i32, i32*, i32*, i32, i32* }
%struct.omp_context = type { i32 }

@LT_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omp_for_data*, i32**, i32**, %struct.omp_context*)* @lower_omp_for_lastprivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_omp_for_lastprivate(%struct.omp_for_data* %0, i32** %1, i32** %2, %struct.omp_context* %3) #0 {
  %5 = alloca %struct.omp_for_data*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.omp_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.omp_for_data* %0, %struct.omp_for_data** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store %struct.omp_context* %3, %struct.omp_context** %8, align 8
  %16 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %17 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @LT_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @GE_EXPR, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @LE_EXPR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  %28 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %29 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @host_integerp(i32* %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %35 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @TREE_INT_CST_LOW(i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %33
  %44 = load i32, i32* @EQ_EXPR, align 4
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @boolean_type_node, align 4
  %49 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %50 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %53 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @build2(i32 %47, i32 %48, i32 %51, i32* %54)
  store i32* %55, i32** %10, align 8
  %56 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %57 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @OMP_FOR_CLAUSES(i32 %58)
  store i32* %59, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.omp_context*, %struct.omp_context** %8, align 8
  %63 = call i32 @lower_lastprivate_clauses(i32* %60, i32* %61, i32** %11, %struct.omp_context* %62)
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %105

66:                                               ; preds = %46
  %67 = load i32*, i32** %11, align 8
  %68 = load i32**, i32*** %7, align 8
  %69 = call i32 @append_to_statement_list(i32* %67, i32** %68)
  %70 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %71 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @EQ_EXPR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %66
  %77 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %78 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @host_integerp(i32* %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %84 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @integer_zerop(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %90 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TREE_TYPE(i32 %91)
  %93 = call i32* @build_int_cst(i32 %92, i32 0)
  store i32* %93, i32** %12, align 8
  br label %94

94:                                               ; preds = %88, %82, %76, %66
  %95 = load i32, i32* @MODIFY_EXPR, align 4
  %96 = load i32, i32* @void_type_node, align 4
  %97 = load %struct.omp_for_data*, %struct.omp_for_data** %5, align 8
  %98 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = call i32* @build2(i32 %95, i32 %96, i32 %99, i32* %100)
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32**, i32*** %6, align 8
  %104 = call i32 @gimplify_and_add(i32* %102, i32** %103)
  br label %105

105:                                              ; preds = %94, %46
  ret void
}

declare dso_local i64 @host_integerp(i32*, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32*) #1

declare dso_local i32* @build2(i32, i32, i32, i32*) #1

declare dso_local i32* @OMP_FOR_CLAUSES(i32) #1

declare dso_local i32 @lower_lastprivate_clauses(i32*, i32*, i32**, %struct.omp_context*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32 @integer_zerop(i32*) #1

declare dso_local i32* @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
