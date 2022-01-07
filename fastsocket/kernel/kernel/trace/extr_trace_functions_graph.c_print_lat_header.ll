; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_lat_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_functions_graph.c_print_lat_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@print_lat_header.spaces = internal constant [38 x i8] c"                                     \00", align 16
@TRACE_GRAPH_PRINT_ABS_TIME = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_CPU = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"#%.*s  _-----=> irqs-off        \0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"#%.*s / _----=> need-resched    \0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"#%.*s| / _---=> hardirq/softirq \0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"#%.*s|| / _--=> preempt-depth   \0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"#%.*s||| / _-=> lock-depth      \0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"#%.*s|||| /                     \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @print_lat_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_lat_header(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TRACE_GRAPH_PRINT_ABS_TIME, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 16
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TRACE_GRAPH_PRINT_CPU, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TRACE_GRAPH_PRINT_PROC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 17
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @print_lat_header.spaces, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
