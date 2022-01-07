; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__cpu_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__cpu_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.cpu_map = type { i32, i32* }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_TYPE_MAX = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"File does not contain CPU events. Remove -c option to proceed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid cpu_list\0A\00", align 1
@MAX_NR_CPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Requested CPU %d too large. Consider raising MAX_NR_CPUS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__cpu_bitmap(%struct.perf_session* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpu_map*, align 8
  %10 = alloca %struct.perf_evsel*, align 8
  %11 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PERF_TYPE_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.perf_evsel* @perf_session__find_first_evtype(%struct.perf_session* %17, i32 %18)
  store %struct.perf_evsel* %19, %struct.perf_evsel** %10, align 8
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %21 = icmp ne %struct.perf_evsel* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %34

23:                                               ; preds = %16
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %10, align 8
  %25 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i8*, i8** %6, align 8
  %39 = call %struct.cpu_map* @cpu_map__new(i8* %38)
  store %struct.cpu_map* %39, %struct.cpu_map** %9, align 8
  %40 = load %struct.cpu_map*, %struct.cpu_map** %9, align 8
  %41 = icmp eq %struct.cpu_map* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

44:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %69, %44
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.cpu_map*, %struct.cpu_map** %9, align 8
  %48 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.cpu_map*, %struct.cpu_map** %9, align 8
  %53 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MAX_NR_CPUS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %4, align 4
  br label %73

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = call i32 @set_bit(i32 %66, i64* %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %45

72:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %62, %42, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.perf_evsel* @perf_session__find_first_evtype(%struct.perf_session*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.cpu_map* @cpu_map__new(i8*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
