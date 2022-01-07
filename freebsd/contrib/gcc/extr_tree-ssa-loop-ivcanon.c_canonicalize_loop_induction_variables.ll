; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_canonicalize_loop_induction_variables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_canonicalize_loop_induction_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32 }
%struct.loop = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@INTEGER_CST = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Loop %d iterates \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loops*, %struct.loop*, i32, i32, i32)* @canonicalize_loop_induction_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_loop_induction_variables(%struct.loops* %0, %struct.loop* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.loops*, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %7, align 8
  store %struct.loop* %1, %struct.loop** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.loop*, %struct.loop** %8, align 8
  %15 = call i32 @number_of_iterations_in_loop(%struct.loop* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @INTEGER_CST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.loop*, %struct.loop** %8, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %12, align 8
  %24 = load %struct.loop*, %struct.loop** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @just_once_each_iteration_p(%struct.loop* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %112

31:                                               ; preds = %20
  %32 = load i32, i32* @MINUS_EXPR, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @TREE_TYPE(i32 %36)
  %38 = call i32 @build_int_cst(i32 %37, i32 1)
  %39 = call i32 @fold_build2(i32 %32, i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %13, align 4
  br label %74

40:                                               ; preds = %5
  %41 = load %struct.loop*, %struct.loop** %8, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.loop*, %struct.loop** %8, align 8
  %47 = call i32 @find_loop_niter(%struct.loop* %46, %struct.TYPE_6__** %12)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @chrec_contains_undetermined(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @TREE_CODE(i32 %56)
  %58 = load i64, i64* @INTEGER_CST, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %51
  %61 = load %struct.loop*, %struct.loop** %8, align 8
  %62 = call i32 @find_loop_niter_by_eval(%struct.loop* %61, %struct.TYPE_6__** %12)
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %55, %48
  %64 = load i32, i32* %13, align 4
  %65 = call i64 @chrec_contains_undetermined(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @TREE_CODE(i32 %68)
  %70 = load i64, i64* @INTEGER_CST, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %63
  store i32 0, i32* %6, align 4
  br label %112

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i64, i64* @dump_file, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* @dump_flags, align 4
  %79 = load i32, i32* @TDF_DETAILS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load i64, i64* @dump_file, align 8
  %84 = load %struct.loop*, %struct.loop** %8, align 8
  %85 = getelementptr inbounds %struct.loop, %struct.loop* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i64, i8*, ...) @fprintf(i64 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* @dump_file, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @TDF_SLIM, align 4
  %91 = call i32 @print_generic_expr(i64 %88, i32 %89, i32 %90)
  %92 = load i64, i64* @dump_file, align 8
  %93 = call i32 (i64, i8*, ...) @fprintf(i64 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %82, %77, %74
  %95 = load %struct.loops*, %struct.loops** %7, align 8
  %96 = load %struct.loop*, %struct.loop** %8, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @try_unroll_loop_completely(%struct.loops* %95, %struct.loop* %96, %struct.TYPE_6__* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 1, i32* %6, align 4
  br label %112

103:                                              ; preds = %94
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.loop*, %struct.loop** %8, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @create_canonical_iv(%struct.loop* %107, %struct.TYPE_6__* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %102, %72, %30
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @number_of_iterations_in_loop(%struct.loop*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @just_once_each_iteration_p(%struct.loop*, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @find_loop_niter(%struct.loop*, %struct.TYPE_6__**) #1

declare dso_local i64 @chrec_contains_undetermined(i32) #1

declare dso_local i32 @find_loop_niter_by_eval(%struct.loop*, %struct.TYPE_6__**) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i64 @try_unroll_loop_completely(%struct.loops*, %struct.loop*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @create_canonical_iv(%struct.loop*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
