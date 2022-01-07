; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__symbols_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__symbols_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_evlist = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_KERNEL_ID = common dso_local global i32 0, align 4
@trace__tool_process = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.perf_evlist*)* @trace__symbols_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__symbols_init(%struct.trace* %0, %struct.perf_evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace*, align 8
  %5 = alloca %struct.perf_evlist*, align 8
  %6 = alloca i32, align 4
  store %struct.trace* %0, %struct.trace** %4, align 8
  store %struct.perf_evlist* %1, %struct.perf_evlist** %5, align 8
  %7 = call i32 (...) @symbol__init()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.trace*, %struct.trace** %4, align 8
  %14 = getelementptr inbounds %struct.trace, %struct.trace* %13, i32 0, i32 0
  %15 = load i32, i32* @HOST_KERNEL_ID, align 4
  %16 = call i32 @machine__init(i32* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.trace*, %struct.trace** %4, align 8
  %18 = getelementptr inbounds %struct.trace, %struct.trace* %17, i32 0, i32 0
  %19 = call i32 @machine__create_kernel_maps(i32* %18)
  %20 = load %struct.trace*, %struct.trace** %4, align 8
  %21 = getelementptr inbounds %struct.trace, %struct.trace* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @perf_target__has_task(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load %struct.perf_evlist*, %struct.perf_evlist** %5, align 8
  %27 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @trace__tool_process, align 4
  %30 = load %struct.trace*, %struct.trace** %4, align 8
  %31 = getelementptr inbounds %struct.trace, %struct.trace* %30, i32 0, i32 0
  %32 = call i32 @perf_event__synthesize_thread_map(i32* null, i32 %28, i32 %29, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %12
  %34 = load i32, i32* @trace__tool_process, align 4
  %35 = load %struct.trace*, %struct.trace** %4, align 8
  %36 = getelementptr inbounds %struct.trace, %struct.trace* %35, i32 0, i32 0
  %37 = call i32 @perf_event__synthesize_threads(i32* null, i32 %34, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @symbol__exit()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @symbol__init(...) #1

declare dso_local i32 @machine__init(i32*, i8*, i32) #1

declare dso_local i32 @machine__create_kernel_maps(i32*) #1

declare dso_local i64 @perf_target__has_task(i32*) #1

declare dso_local i32 @perf_event__synthesize_thread_map(i32*, i32, i32, i32*) #1

declare dso_local i32 @perf_event__synthesize_threads(i32*, i32, i32*) #1

declare dso_local i32 @symbol__exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
