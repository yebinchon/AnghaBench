; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_thread__trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_thread__trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_trace = type { i32 }
%struct.thread = type { %struct.thread_trace* }

@stdout = common dso_local global i32 0, align 4
@PERF_COLOR_RED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WARNING: not enough memory, dropping samples!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread_trace* (%struct.thread*)* @thread__trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread_trace* @thread__trace(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread_trace*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread_trace*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = icmp eq %struct.thread* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.thread_trace*, %struct.thread_trace** %10, align 8
  %12 = icmp eq %struct.thread_trace* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = call %struct.thread_trace* (...) @thread_trace__new()
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  store %struct.thread_trace* %14, %struct.thread_trace** %16, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.thread_trace*, %struct.thread_trace** %19, align 8
  %21 = icmp eq %struct.thread_trace* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load %struct.thread_trace*, %struct.thread_trace** %25, align 8
  store %struct.thread_trace* %26, %struct.thread_trace** %4, align 8
  %27 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  %28 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.thread_trace*, %struct.thread_trace** %4, align 8
  store %struct.thread_trace* %31, %struct.thread_trace** %2, align 8
  br label %36

32:                                               ; preds = %22, %7
  %33 = load i32, i32* @stdout, align 4
  %34 = load i32, i32* @PERF_COLOR_RED, align 4
  %35 = call i32 @color_fprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.thread_trace* null, %struct.thread_trace** %2, align 8
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.thread_trace*, %struct.thread_trace** %2, align 8
  ret %struct.thread_trace* %37
}

declare dso_local %struct.thread_trace* @thread_trace__new(...) #1

declare dso_local i32 @color_fprintf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
