; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_default_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_default_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_iterator* }
%struct.trace_iterator = type { i32 }

@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_default_header(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.trace_iterator*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %5 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %4, i32 0, i32 0
  %6 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  store %struct.trace_iterator* %6, %struct.trace_iterator** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %15 = call i64 @trace_empty(%struct.trace_iterator* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %39

18:                                               ; preds = %13
  %19 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %21 = call i32 @print_trace_header(%struct.seq_file* %19, %struct.trace_iterator* %20)
  %22 = load i32, i32* @trace_flags, align 4
  %23 = load i32, i32* @TRACE_ITER_VERBOSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %28 = call i32 @print_lat_help_header(%struct.seq_file* %27)
  br label %29

29:                                               ; preds = %26, %18
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @trace_flags, align 4
  %32 = load i32, i32* @TRACE_ITER_VERBOSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %37 = call i32 @print_func_help_header(%struct.seq_file* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %17, %38, %29
  ret void
}

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_header(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @print_lat_help_header(%struct.seq_file*) #1

declare dso_local i32 @print_func_help_header(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
