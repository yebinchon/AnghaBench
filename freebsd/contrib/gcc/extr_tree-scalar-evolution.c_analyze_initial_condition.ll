; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_initial_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_analyze_initial_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_3__ = type { %struct.loop* }
%struct.TYPE_4__ = type { i32 }

@chrec_not_analyzed_yet = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"(analyze_initial_condition \0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  (loop_phi_node = \0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@SSA_NAME = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"  (init_cond = \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @analyze_initial_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @analyze_initial_condition(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @chrec_not_analyzed_yet, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %2, align 8
  %10 = call %struct.TYPE_3__* @bb_for_stmt(i64 %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.loop*, %struct.loop** %11, align 8
  store %struct.loop* %12, %struct.loop** %5, align 8
  %13 = load i64, i64* @dump_file, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load i32, i32* @dump_flags, align 4
  %17 = load i32, i32* @TDF_DETAILS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, i64* @dump_file, align 8
  %22 = call i32 @fprintf(i64 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @dump_file, align 8
  %24 = call i32 @fprintf(i64 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @dump_file, align 8
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @print_generic_expr(i64 %25, i64 %26, i32 0)
  %28 = load i64, i64* @dump_file, align 8
  %29 = call i32 @fprintf(i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %20, %15, %1
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @PHI_NUM_ARGS(i64 %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load i64, i64* %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @PHI_ARG_DEF(i64 %37, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.TYPE_4__* @PHI_ARG_EDGE(i64 %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.loop*, %struct.loop** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @flow_bb_inside_loop_p(%struct.loop* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %67

50:                                               ; preds = %36
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @chrec_not_analyzed_yet, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %4, align 8
  br label %67

56:                                               ; preds = %50
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @SSA_NAME, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, i64* @chrec_dont_know, align 8
  store i64 %62, i64* %4, align 8
  br label %70

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @chrec_merge(i64 %64, i64 %65)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %63, %54, %49
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %31

70:                                               ; preds = %61, %31
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @chrec_not_analyzed_yet, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i64, i64* @chrec_dont_know, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* @dump_file, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* @dump_flags, align 4
  %81 = load i32, i32* @TDF_DETAILS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i64, i64* @dump_file, align 8
  %86 = call i32 @fprintf(i64 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i64, i64* @dump_file, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @print_generic_expr(i64 %87, i64 %88, i32 0)
  %90 = load i64, i64* @dump_file, align 8
  %91 = call i32 @fprintf(i64 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %84, %79, %76
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local %struct.TYPE_3__* @bb_for_stmt(i64) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i64) #1

declare dso_local i64 @PHI_ARG_DEF(i64, i32) #1

declare dso_local %struct.TYPE_4__* @PHI_ARG_EDGE(i64, i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @chrec_merge(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
