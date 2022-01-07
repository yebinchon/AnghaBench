; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sched_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sched_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wake_event = type { i32, i32, %struct.wake_event*, i8* }
%struct.trace_entry = type { i32 }
%struct.per_pid = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i8* }
%struct.wakeup_entry = type { i32 }

@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@wake_events = common dso_local global %struct.wake_event* null, align 8
@TYPE_NONE = common dso_local global i64 0, align 8
@TYPE_WAITING = common dso_local global i8* null, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.trace_entry*)* @sched_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_wakeup(i32 %0, i8* %1, i32 %2, %struct.trace_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_entry*, align 8
  %9 = alloca %struct.per_pid*, align 8
  %10 = alloca %struct.wakeup_entry*, align 8
  %11 = alloca %struct.wake_event*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.trace_entry* %3, %struct.trace_entry** %8, align 8
  %12 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %13 = bitcast %struct.trace_entry* %12 to i8*
  %14 = bitcast i8* %13 to %struct.wakeup_entry*
  store %struct.wakeup_entry* %14, %struct.wakeup_entry** %10, align 8
  %15 = call %struct.wake_event* @zalloc(i32 24)
  store %struct.wake_event* %15, %struct.wake_event** %11, align 8
  %16 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %17 = icmp ne %struct.wake_event* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %127

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %22 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %25 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %27 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %34 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %19
  %40 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %41 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.wakeup_entry*, %struct.wakeup_entry** %10, align 8
  %44 = getelementptr inbounds %struct.wakeup_entry, %struct.wakeup_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %47 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wake_event*, %struct.wake_event** @wake_events, align 8
  %49 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %50 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %49, i32 0, i32 2
  store %struct.wake_event* %48, %struct.wake_event** %50, align 8
  %51 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  store %struct.wake_event* %51, %struct.wake_event** @wake_events, align 8
  %52 = load %struct.wake_event*, %struct.wake_event** %11, align 8
  %53 = getelementptr inbounds %struct.wake_event, %struct.wake_event* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.per_pid* @find_create_pid(i32 %54)
  store %struct.per_pid* %55, %struct.per_pid** %9, align 8
  %56 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %57 = icmp ne %struct.per_pid* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %42
  %59 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %60 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %65 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TYPE_NONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %74 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @TYPE_WAITING, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %80 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %71, %63, %58, %42
  %84 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %85 = icmp ne %struct.per_pid* %84, null
  br i1 %85, label %86, label %127

86:                                               ; preds = %83
  %87 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %88 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = icmp ne %struct.TYPE_2__* %89, null
  br i1 %90, label %91, label %127

91:                                               ; preds = %86
  %92 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %93 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TYPE_BLOCKED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %91
  %100 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %101 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %104 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %110 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @pid_put_sample(i32 %102, i64 %107, i32 %108, i8* %113, i8* %114)
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %118 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i8* %116, i8** %120, align 8
  %121 = load i8*, i8** @TYPE_WAITING, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.per_pid*, %struct.per_pid** %9, align 8
  %124 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %18, %99, %91, %86, %83
  ret void
}

declare dso_local %struct.wake_event* @zalloc(i32) #1

declare dso_local %struct.per_pid* @find_create_pid(i32) #1

declare dso_local i32 @pid_put_sample(i32, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
