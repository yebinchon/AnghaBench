; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.iv_ca = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Processing loop %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"  single exit %d -> %d, exit condition \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_CONSIDERED_USES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.loop*)* @tree_ssa_iv_optimize_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_ssa_iv_optimize_loop(%struct.ivopts_data* %0, %struct.loop* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iv_ca*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.loop* %1, %struct.loop** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.loop*, %struct.loop** %4, align 8
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %10 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %9, i32 0, i32 0
  store %struct.loop* %8, %struct.loop** %10, align 8
  %11 = load i64, i64* @dump_file, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load i32, i32* @dump_flags, align 4
  %15 = load i32, i32* @TDF_DETAILS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = load i64, i64* @dump_file, align 8
  %20 = load %struct.loop*, %struct.loop** %4, align 8
  %21 = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i64, i8*, ...) @fprintf(i64 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.loop*, %struct.loop** %4, align 8
  %25 = call %struct.TYPE_6__* @single_dom_exit(%struct.loop* %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %18
  %29 = load i64, i64* @dump_file, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i64, i8*, ...) @fprintf(i64 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %39)
  %41 = load i64, i64* @dump_file, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @last_stmt(%struct.TYPE_7__* %44)
  %46 = load i32, i32* @TDF_SLIM, align 4
  %47 = call i32 @print_generic_expr(i64 %41, i32 %45, i32 %46)
  %48 = load i64, i64* @dump_file, align 8
  %49 = call i32 (i64, i8*, ...) @fprintf(i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %28, %18
  %51 = load i64, i64* @dump_file, align 8
  %52 = call i32 (i64, i8*, ...) @fprintf(i64 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %13, %2
  %54 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %55 = call i32 @find_induction_variables(%struct.ivopts_data* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %90

58:                                               ; preds = %53
  %59 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %60 = call i32 @find_interesting_uses(%struct.ivopts_data* %59)
  %61 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %62 = call i64 @n_iv_uses(%struct.ivopts_data* %61)
  %63 = load i64, i64* @MAX_CONSIDERED_USES, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %90

66:                                               ; preds = %58
  %67 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %68 = call i32 @find_iv_candidates(%struct.ivopts_data* %67)
  %69 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %70 = call i32 @determine_use_iv_costs(%struct.ivopts_data* %69)
  %71 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %72 = call i32 @determine_iv_costs(%struct.ivopts_data* %71)
  %73 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %74 = call i32 @determine_set_costs(%struct.ivopts_data* %73)
  %75 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %76 = call %struct.iv_ca* @find_optimal_iv_set(%struct.ivopts_data* %75)
  store %struct.iv_ca* %76, %struct.iv_ca** %6, align 8
  %77 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %78 = icmp ne %struct.iv_ca* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %66
  br label %90

80:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  %81 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %82 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %83 = call i32 @create_new_ivs(%struct.ivopts_data* %81, %struct.iv_ca* %82)
  %84 = call i32 @iv_ca_free(%struct.iv_ca** %6)
  %85 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %86 = call i32 @rewrite_uses(%struct.ivopts_data* %85)
  %87 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %88 = call i32 @remove_unused_ivs(%struct.ivopts_data* %87)
  %89 = call i32 (...) @scev_reset()
  br label %90

90:                                               ; preds = %80, %79, %65, %57
  %91 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %92 = call i32 @free_loop_data(%struct.ivopts_data* %91)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @single_dom_exit(%struct.loop*) #1

declare dso_local i32 @print_generic_expr(i64, i32, i32) #1

declare dso_local i32 @last_stmt(%struct.TYPE_7__*) #1

declare dso_local i32 @find_induction_variables(%struct.ivopts_data*) #1

declare dso_local i32 @find_interesting_uses(%struct.ivopts_data*) #1

declare dso_local i64 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local i32 @find_iv_candidates(%struct.ivopts_data*) #1

declare dso_local i32 @determine_use_iv_costs(%struct.ivopts_data*) #1

declare dso_local i32 @determine_iv_costs(%struct.ivopts_data*) #1

declare dso_local i32 @determine_set_costs(%struct.ivopts_data*) #1

declare dso_local %struct.iv_ca* @find_optimal_iv_set(%struct.ivopts_data*) #1

declare dso_local i32 @create_new_ivs(%struct.ivopts_data*, %struct.iv_ca*) #1

declare dso_local i32 @iv_ca_free(%struct.iv_ca**) #1

declare dso_local i32 @rewrite_uses(%struct.ivopts_data*) #1

declare dso_local i32 @remove_unused_ivs(%struct.ivopts_data*) #1

declare dso_local i32 @scev_reset(...) #1

declare dso_local i32 @free_loop_data(%struct.ivopts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
