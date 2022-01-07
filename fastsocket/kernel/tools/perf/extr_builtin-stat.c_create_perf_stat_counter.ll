; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_create_perf_stat_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_create_perf_stat_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_evsel = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32, i32, i32, i64, i64 }

@scale = common dso_local global i64 0, align 8
@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@no_inherit = common dso_local global i32 0, align 4
@target = common dso_local global i32 0, align 4
@evsel_list = common dso_local global %struct.TYPE_2__* null, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Old kernel, cannot exclude guest or host samples.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*)* @create_perf_stat_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_perf_stat_counter(%struct.perf_evsel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_evsel*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %3, align 8
  %7 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %8 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %7, i32 0, i32 0
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @scale, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %13 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @no_inherit, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %90, %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %29 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %32 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = call i64 @perf_target__has_cpu(i32* @target)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %40 = call i32 @perf_evsel__cpus(%struct.perf_evsel* %39)
  %41 = call i32 @perf_evsel__open_per_cpu(%struct.perf_evsel* %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %68

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %95

46:                                               ; preds = %34
  %47 = call i32 @perf_target__has_task(i32* @target)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %51 = call i32 @perf_evsel__is_group_member(%struct.perf_evsel* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %49, %46
  %59 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @evsel_list, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @perf_evsel__open_per_thread(%struct.perf_evsel* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %95

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EINVAL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %80 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.perf_evsel*, %struct.perf_evsel** %3, align 8
  %86 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84, %78
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %24

92:                                               ; preds = %84, %75
  br label %93

93:                                               ; preds = %92, %71, %68
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %66, %45
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @perf_target__has_cpu(i32*) #1

declare dso_local i32 @perf_evsel__open_per_cpu(%struct.perf_evsel*, i32) #1

declare dso_local i32 @perf_evsel__cpus(%struct.perf_evsel*) #1

declare dso_local i32 @perf_target__has_task(i32*) #1

declare dso_local i32 @perf_evsel__is_group_member(%struct.perf_evsel*) #1

declare dso_local i32 @perf_evsel__open_per_thread(%struct.perf_evsel*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
