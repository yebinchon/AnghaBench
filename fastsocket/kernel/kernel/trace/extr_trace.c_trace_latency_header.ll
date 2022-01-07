; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_latency_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_latency_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32 }

@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_latency_header(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.trace_iterator*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %5 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %4, i32 0, i32 0
  %6 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  store %struct.trace_iterator* %6, %struct.trace_iterator** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %8 = call i64 @trace_empty(%struct.trace_iterator* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %21 = call i32 @print_trace_header(%struct.seq_file* %19, %struct.trace_iterator* %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @trace_flags, align 4
  %24 = load i32, i32* @TRACE_ITER_VERBOSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = call i32 @print_lat_help_header(%struct.seq_file* %28)
  br label %30

30:                                               ; preds = %10, %27, %22
  ret void
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_header(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @print_lat_help_header(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
