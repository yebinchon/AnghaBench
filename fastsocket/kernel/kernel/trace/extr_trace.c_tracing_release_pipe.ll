; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_release_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_release_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i64, %struct.trace_iterator*, i32, i32 }

@trace_types_lock = common dso_local global i32 0, align 4
@TRACE_PIPE_ALL_CPU = common dso_local global i64 0, align 8
@tracing_reader_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_release_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_release_pipe(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.trace_iterator*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  store %struct.trace_iterator* %8, %struct.trace_iterator** %5, align 8
  %9 = call i32 @mutex_lock(i32* @trace_types_lock)
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRACE_PIPE_ALL_CPU, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @tracing_reader_cpumask, align 4
  %17 = call i32 @cpumask_clear(i32 %16)
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %20 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @tracing_reader_cpumask, align 4
  %23 = call i32 @cpumask_clear_cpu(i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %15
  %25 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free_cpumask_var(i32 %28)
  %30 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %31 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %30, i32 0, i32 2
  %32 = call i32 @mutex_destroy(i32* %31)
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 1
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %34, align 8
  %36 = call i32 @kfree(%struct.trace_iterator* %35)
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %38 = call i32 @kfree(%struct.trace_iterator* %37)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @cpumask_clear_cpu(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
