; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_ftrace_event_enable_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_ftrace_event_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32, i32 (%struct.ftrace_event_call*)*, i32, i32 (%struct.ftrace_event_call*)* }

@TRACE_EVENT_FL_ENABLED = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_RECORDED_CMD = common dso_local global i32 0, align 4
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_RECORD_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"event trace: Could not enable event %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_call*, i32)* @ftrace_event_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_event_enable_disable(%struct.ftrace_event_call* %0, i32 %1) #0 {
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %82 [
    i32 0, label %7
    i32 1, label %42
  ]

7:                                                ; preds = %2
  %8 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %9 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TRACE_EVENT_FL_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = load i32, i32* @TRACE_EVENT_FL_ENABLED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %18 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %22 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TRACE_EVENT_FL_RECORDED_CMD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %14
  %28 = call i32 (...) @tracing_stop_cmdline_record()
  %29 = load i32, i32* @TRACE_EVENT_FL_RECORDED_CMD, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %32 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %27, %14
  %36 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %37 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %36, i32 0, i32 3
  %38 = load i32 (%struct.ftrace_event_call*)*, i32 (%struct.ftrace_event_call*)** %37, align 8
  %39 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %40 = call i32 %38(%struct.ftrace_event_call* %39)
  br label %41

41:                                               ; preds = %35, %7
  br label %82

42:                                               ; preds = %2
  %43 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %44 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TRACE_EVENT_FL_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @trace_flags, align 4
  %51 = load i32, i32* @TRACE_ITER_RECORD_CMD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = call i32 (...) @tracing_start_cmdline_record()
  %56 = load i32, i32* @TRACE_EVENT_FL_RECORDED_CMD, align 4
  %57 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %58 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %63 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %62, i32 0, i32 1
  %64 = load i32 (%struct.ftrace_event_call*)*, i32 (%struct.ftrace_event_call*)** %63, align 8
  %65 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %66 = call i32 %64(%struct.ftrace_event_call* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = call i32 (...) @tracing_stop_cmdline_record()
  %71 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %72 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %82

75:                                               ; preds = %61
  %76 = load i32, i32* @TRACE_EVENT_FL_ENABLED, align 4
  %77 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %78 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %42
  br label %82

82:                                               ; preds = %2, %81, %69, %41
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @tracing_stop_cmdline_record(...) #1

declare dso_local i32 @tracing_start_cmdline_record(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
