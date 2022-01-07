; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sched_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_entry = type { i32 }
%struct.per_pid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8* }
%struct.sched_switch = type { i32, i32, i32 }

@TYPE_NONE = common dso_local global i64 0, align 8
@TYPE_RUNNING = common dso_local global i64 0, align 8
@TYPE_BLOCKED = common dso_local global i64 0, align 8
@TYPE_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.trace_entry*)* @sched_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_switch(i32 %0, i8* %1, %struct.trace_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca %struct.per_pid*, align 8
  %8 = alloca %struct.per_pid*, align 8
  %9 = alloca %struct.sched_switch*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.trace_entry* %2, %struct.trace_entry** %6, align 8
  store %struct.per_pid* null, %struct.per_pid** %7, align 8
  %10 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %11 = bitcast %struct.trace_entry* %10 to i8*
  %12 = bitcast i8* %11 to %struct.sched_switch*
  store %struct.sched_switch* %12, %struct.sched_switch** %9, align 8
  %13 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %14 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.per_pid* @find_create_pid(i32 %15)
  store %struct.per_pid* %16, %struct.per_pid** %8, align 8
  %17 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %18 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.per_pid* @find_create_pid(i32 %19)
  store %struct.per_pid* %20, %struct.per_pid** %7, align 8
  %21 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %22 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %27 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TYPE_NONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %35 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @TYPE_RUNNING, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %40 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @pid_put_sample(i32 %36, i64 %37, i32 %38, i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %33, %25, %3
  %47 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %48 = icmp ne %struct.per_pid* %47, null
  br i1 %48, label %49, label %90

49:                                               ; preds = %46
  %50 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %51 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %56 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TYPE_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %64 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %67 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %73 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @pid_put_sample(i32 %65, i64 %70, i32 %71, i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %62, %54
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %82 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i8* %80, i8** %84, align 8
  %85 = load i64, i64* @TYPE_RUNNING, align 8
  %86 = load %struct.per_pid*, %struct.per_pid** %7, align 8
  %87 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %79, %49, %46
  %91 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %92 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = icmp ne %struct.TYPE_2__* %93, null
  br i1 %94, label %95, label %129

95:                                               ; preds = %90
  %96 = load i64, i64* @TYPE_NONE, align 8
  %97 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %98 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %96, i64* %100, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %103 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %107 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %95
  %112 = load i64, i64* @TYPE_BLOCKED, align 8
  %113 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %114 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %111, %95
  %118 = load %struct.sched_switch*, %struct.sched_switch** %9, align 8
  %119 = getelementptr inbounds %struct.sched_switch, %struct.sched_switch* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i64, i64* @TYPE_WAITING, align 8
  %124 = load %struct.per_pid*, %struct.per_pid** %8, align 8
  %125 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  br label %128

128:                                              ; preds = %122, %117
  br label %129

129:                                              ; preds = %128, %90
  ret void
}

declare dso_local %struct.per_pid* @find_create_pid(i32) #1

declare dso_local i32 @pid_put_sample(i32, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
