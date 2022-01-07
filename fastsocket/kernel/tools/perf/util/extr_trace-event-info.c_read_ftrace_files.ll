; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_read_ftrace_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_read_ftrace_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"events/ftrace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint_path*)* @read_ftrace_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ftrace_files(%struct.tracepoint_path* %0) #0 {
  %2 = alloca %struct.tracepoint_path*, align 8
  %3 = alloca i8*, align 8
  store %struct.tracepoint_path* %0, %struct.tracepoint_path** %2, align 8
  %4 = call i8* @get_tracing_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %7 = call i32 @copy_event_system(i8* %5, %struct.tracepoint_path* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @put_tracing_file(i8* %8)
  ret void
}

declare dso_local i8* @get_tracing_file(i8*) #1

declare dso_local i32 @copy_event_system(i8*, %struct.tracepoint_path*) #1

declare dso_local i32 @put_tracing_file(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
