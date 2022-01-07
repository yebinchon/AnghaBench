; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_determine_display_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_determine_display_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, i32, i64, i64, %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { i32, i32, i64, i64, %struct.per_pidcomm* }

@process_filter = common dso_local global i64 0, align 8
@all_data = common dso_local global %struct.per_pid* null, align 8
@first_time = common dso_local global i8* null, align 8
@last_time = common dso_local global i8* null, align 8
@power_only = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @determine_display_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_display_tasks(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.per_pid*, align 8
  %5 = alloca %struct.per_pidcomm*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @process_filter, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @determine_display_tasks_filtered()
  store i32 %10, i32* %2, align 4
  br label %103

11:                                               ; preds = %1
  %12 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %12, %struct.per_pid** %4, align 8
  br label %13

13:                                               ; preds = %97, %11
  %14 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %15 = icmp ne %struct.per_pid* %14, null
  br i1 %15, label %16, label %101

16:                                               ; preds = %13
  %17 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %18 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %20 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i8*, i8** @first_time, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %27 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %30 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** @last_time, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %37 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %40 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @power_only, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %49 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44, %38
  %51 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %52 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %51, i32 0, i32 5
  %53 = load %struct.per_pidcomm*, %struct.per_pidcomm** %52, align 8
  store %struct.per_pidcomm* %53, %struct.per_pidcomm** %5, align 8
  br label %54

54:                                               ; preds = %93, %50
  %55 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %56 = icmp ne %struct.per_pidcomm* %55, null
  br i1 %56, label %57, label %97

57:                                               ; preds = %54
  %58 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %59 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %61 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i8*, i8** @first_time, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %68 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %71 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i32, i32* @power_only, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %80 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %75, %69
  %84 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %85 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** @last_time, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %92 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.per_pidcomm*, %struct.per_pidcomm** %5, align 8
  %95 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %94, i32 0, i32 4
  %96 = load %struct.per_pidcomm*, %struct.per_pidcomm** %95, align 8
  store %struct.per_pidcomm* %96, %struct.per_pidcomm** %5, align 8
  br label %54

97:                                               ; preds = %54
  %98 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %99 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %98, i32 0, i32 4
  %100 = load %struct.per_pid*, %struct.per_pid** %99, align 8
  store %struct.per_pid* %100, %struct.per_pid** %4, align 8
  br label %13

101:                                              ; preds = %13
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %9
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @determine_display_tasks_filtered(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
