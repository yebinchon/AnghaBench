; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_evolution_in_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_evolution_in_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_2__ = type { i32 }

@chrec_not_analyzed_yet = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"(analyze_evolution_in_loop \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  (loop_phi_node = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@SSA_NAME = common dso_local global i64 0, align 8
@t_false = common dso_local global i64 0, align 8
@t_true = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"  (evolution_function = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @analyze_evolution_in_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_evolution_in_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @chrec_not_analyzed_yet, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.loop* @loop_containing_stmt(i32 %14)
  store %struct.loop* %15, %struct.loop** %7, align 8
  %16 = load i64, i64* @dump_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @dump_flags, align 4
  %20 = load i32, i32* @TDF_DETAILS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i64, i64* @dump_file, align 8
  %25 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @dump_file, align 8
  %27 = call i32 @fprintf(i64 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @dump_file, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @print_generic_expr(i64 %28, i32 %29, i32 0)
  %31 = load i64, i64* @dump_file, align 8
  %32 = call i32 @fprintf(i64 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %23, %18, %2
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %78, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PHI_NUM_ARGS(i32 %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @PHI_ARG_DEF(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.TYPE_2__* @PHI_ARG_EDGE(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.loop*, %struct.loop** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @flow_bb_inside_loop_p(%struct.loop* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %78

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @TREE_CODE(i32 %54)
  %56 = load i64, i64* @SSA_NAME, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @SSA_NAME_DEF_STMT(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %11, align 4
  %62 = load %struct.loop*, %struct.loop** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @follow_ssa_edge(%struct.loop* %62, i32 %63, i32 %64, i32* %11, i32 0)
  store i64 %65, i64* %12, align 8
  br label %68

66:                                               ; preds = %53
  %67 = load i64, i64* @t_false, align 8
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @t_true, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @chrec_dont_know, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @chrec_merge(i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %52
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %34

81:                                               ; preds = %34
  %82 = load i64, i64* @dump_file, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* @dump_flags, align 4
  %86 = load i32, i32* @TDF_DETAILS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i64, i64* @dump_file, align 8
  %91 = call i32 @fprintf(i64 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i64, i64* @dump_file, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @print_generic_expr(i64 %92, i32 %93, i32 0)
  %95 = load i64, i64* @dump_file, align 8
  %96 = call i32 @fprintf(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %89, %84, %81
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.loop* @loop_containing_stmt(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32) #1

declare dso_local i32 @PHI_ARG_DEF(i32, i32) #1

declare dso_local %struct.TYPE_2__* @PHI_ARG_EDGE(i32, i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @follow_ssa_edge(%struct.loop*, i32, i32, i32*, i32) #1

declare dso_local i32 @chrec_merge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
