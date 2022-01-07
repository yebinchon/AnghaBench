; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_update_event_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_update_event_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__*, %struct.perf_event_context* }
%struct.TYPE_2__ = type { i64 }
%struct.perf_event_context = type { i8*, i64 }

@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @update_event_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_event_times(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca i8*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 7
  %7 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  store %struct.perf_event_context* %7, %struct.perf_event_context** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  br label %77

22:                                               ; preds = %13
  %23 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %24 = call i64 @is_cgroup_event(%struct.perf_event* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = call i8* @perf_cgroup_event_time(%struct.perf_event* %27)
  store i8* %28, i8** %4, align 8
  br label %43

29:                                               ; preds = %22
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %31 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %44 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 5
  store i8* %51, i8** %53, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %4, align 8
  br label %66

63:                                               ; preds = %43
  %64 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %65 = call i8* @perf_event_time(%struct.perf_event* %64)
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %67 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %66, %21
  ret void
}

declare dso_local i64 @is_cgroup_event(%struct.perf_event*) #1

declare dso_local i8* @perf_cgroup_event_time(%struct.perf_event*) #1

declare dso_local i8* @perf_event_time(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
