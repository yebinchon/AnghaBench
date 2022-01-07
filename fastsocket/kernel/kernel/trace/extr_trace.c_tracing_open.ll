; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { i32, i32 }
%struct.trace_iterator = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@TRACE_PIPE_ALL_CPU = common dso_local global i64 0, align 8
@global_trace = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FMODE_WRITE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @O_TRUNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @TRACE_PIPE_ALL_CPU, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @tracing_reset_online_cpus(i32* @global_trace)
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @tracing_reset(i32* @global_trace, i64 %31)
  br label %33

33:                                               ; preds = %30, %28
  br label %34

34:                                               ; preds = %33, %14, %2
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FMODE_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = call %struct.trace_iterator* @__tracing_open(%struct.inode* %42, %struct.file* %43)
  store %struct.trace_iterator* %44, %struct.trace_iterator** %5, align 8
  %45 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %46 = call i64 @IS_ERR(%struct.trace_iterator* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %50 = call i32 @PTR_ERR(%struct.trace_iterator* %49)
  store i32 %50, i32* %6, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load i32, i32* @trace_flags, align 4
  %53 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %58 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %59 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @tracing_reset_online_cpus(i32*) #1

declare dso_local i32 @tracing_reset(i32*, i64) #1

declare dso_local %struct.trace_iterator* @__tracing_open(%struct.inode*, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.trace_iterator*) #1

declare dso_local i32 @PTR_ERR(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
