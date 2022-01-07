; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_finish_optimization_passes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_finish_optimization_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dump_file_info = type { i32 }

@TV_DUMP = common dso_local global i32 0, align 4
@profile_arc_flag = common dso_local global i64 0, align 8
@flag_test_coverage = common dso_local global i64 0, align 8
@flag_branch_probabilities = common dso_local global i64 0, align 8
@pass_profile = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@dump_file = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@pass_combine = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@graph_dump_format = common dso_local global i64 0, align 8
@no_graph = common dso_local global i64 0, align 8
@TDI_end = common dso_local global i32 0, align 4
@TDF_GRAPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_optimization_passes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dump_file_info*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @TV_DUMP, align 4
  %5 = call i32 @timevar_push(i32 %4)
  %6 = load i64, i64* @profile_arc_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @flag_test_coverage, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @flag_branch_probabilities, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11, %8, %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pass_profile, i32 0, i32 0), align 4
  %16 = call i64 @dump_begin(i32 %15, i32* null)
  store i64 %16, i64* @dump_file, align 8
  %17 = call i32 (...) @end_branch_prob()
  %18 = load i64, i64* @dump_file, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pass_profile, i32 0, i32 0), align 4
  %22 = load i64, i64* @dump_file, align 8
  %23 = call i32 @dump_end(i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %20, %14
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i64, i64* @optimize, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pass_combine, i32 0, i32 0), align 4
  %30 = call i64 @dump_begin(i32 %29, i32* null)
  store i64 %30, i64* @dump_file, align 8
  %31 = load i64, i64* @dump_file, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* @dump_file, align 8
  %35 = call i32 @dump_combine_total_stats(i64 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pass_combine, i32 0, i32 0), align 4
  %37 = load i64, i64* @dump_file, align 8
  %38 = call i32 @dump_end(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i64, i64* @graph_dump_format, align 8
  %42 = load i64, i64* @no_graph, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i32, i32* @TDI_end, align 4
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %71, %44
  %47 = load i32, i32* %1, align 4
  %48 = call %struct.dump_file_info* @get_dump_file_info(i32 %47)
  store %struct.dump_file_info* %48, %struct.dump_file_info** %2, align 8
  %49 = icmp ne %struct.dump_file_info* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @dump_initialized_p(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.dump_file_info*, %struct.dump_file_info** %2, align 8
  %56 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TDF_GRAPH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i32, i32* %1, align 4
  %63 = call i8* @get_dump_file_name(i32 %62)
  store i8* %63, i8** %3, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @finish_graph_dump_file(i8* %66)
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %65, %61, %54, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %46

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i32, i32* @TV_DUMP, align 4
  %77 = call i32 @timevar_pop(i32 %76)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @dump_begin(i32, i32*) #1

declare dso_local i32 @end_branch_prob(...) #1

declare dso_local i32 @dump_end(i32, i64) #1

declare dso_local i32 @dump_combine_total_stats(i64) #1

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) #1

declare dso_local i64 @dump_initialized_p(i32) #1

declare dso_local i8* @get_dump_file_name(i32) #1

declare dso_local i32 @finish_graph_dump_file(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
