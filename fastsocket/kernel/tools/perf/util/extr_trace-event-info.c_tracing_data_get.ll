; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_tracing_data_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_tracing_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_data = type { i32, i64, i32 }
%struct.list_head = type { i32 }
%struct.tracepoint_path = type { i32 }

@output_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/tmp/perf-XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't make temp file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't read '%s'\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tracing_data* @tracing_data_get(%struct.list_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tracing_data*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracepoint_path*, align 8
  %9 = alloca %struct.tracing_data*, align 8
  %10 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* @output_fd, align 4
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call %struct.tracepoint_path* @get_tracepoints_path(%struct.list_head* %12)
  store %struct.tracepoint_path* %13, %struct.tracepoint_path** %8, align 8
  %14 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %15 = icmp ne %struct.tracepoint_path* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.tracing_data* null, %struct.tracing_data** %4, align 8
  br label %77

17:                                               ; preds = %3
  %18 = call %struct.tracing_data* @malloc_or_die(i32 24)
  store %struct.tracing_data* %18, %struct.tracing_data** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %21 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %23 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %17
  %27 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %28 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %32 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mkstemp(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  %39 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %40 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @O_RDWR, align 4
  %43 = call i32 @open(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %48 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* @output_fd, align 4
  br label %53

53:                                               ; preds = %51, %17
  %54 = call i32 (...) @tracing_data_header()
  %55 = call i32 (...) @read_header_files()
  %56 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %57 = call i32 @read_ftrace_files(%struct.tracepoint_path* %56)
  %58 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %59 = call i32 @read_event_files(%struct.tracepoint_path* %58)
  %60 = call i32 (...) @read_proc_kallsyms()
  %61 = call i32 (...) @read_ftrace_printk()
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %53
  %65 = load i32, i32* @output_fd, align 4
  %66 = load i32, i32* @SEEK_CUR, align 4
  %67 = call i64 @lseek(i32 %65, i32 0, i32 %66)
  %68 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %69 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @output_fd, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* @output_fd, align 4
  br label %73

73:                                               ; preds = %64, %53
  %74 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %75 = call i32 @put_tracepoints_path(%struct.tracepoint_path* %74)
  %76 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  store %struct.tracing_data* %76, %struct.tracing_data** %4, align 8
  br label %77

77:                                               ; preds = %73, %16
  %78 = load %struct.tracing_data*, %struct.tracing_data** %4, align 8
  ret %struct.tracing_data* %78
}

declare dso_local %struct.tracepoint_path* @get_tracepoints_path(%struct.list_head*) #1

declare dso_local %struct.tracing_data* @malloc_or_die(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @tracing_data_header(...) #1

declare dso_local i32 @read_header_files(...) #1

declare dso_local i32 @read_ftrace_files(%struct.tracepoint_path*) #1

declare dso_local i32 @read_event_files(%struct.tracepoint_path*) #1

declare dso_local i32 @read_proc_kallsyms(...) #1

declare dso_local i32 @read_ftrace_printk(...) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @put_tracepoints_path(%struct.tracepoint_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
