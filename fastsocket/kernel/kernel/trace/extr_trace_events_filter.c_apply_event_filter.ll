; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_apply_event_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_apply_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32, i32 }
%struct.filter_parse_state = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@filter_ops = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_FILTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_event_filter(%struct.ftrace_event_call* %0, i8* %1) #0 {
  %3 = alloca %struct.ftrace_event_call*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_parse_state*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @mutex_lock(i32* @event_mutex)
  %8 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %9 = call i32 @init_preds(%struct.ftrace_event_call* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %85

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strstrip(i8* %14)
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %20 = call i32 @filter_disable_preds(%struct.ftrace_event_call* %19)
  %21 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %22 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @remove_filter_string(i32 %23)
  br label %85

25:                                               ; preds = %13
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.filter_parse_state* @kzalloc(i32 4, i32 %28)
  store %struct.filter_parse_state* %29, %struct.filter_parse_state** %6, align 8
  %30 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %31 = icmp ne %struct.filter_parse_state* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %85

33:                                               ; preds = %25
  %34 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %35 = call i32 @filter_disable_preds(%struct.ftrace_event_call* %34)
  %36 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %37 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @replace_filter_string(i32 %38, i8* %39)
  %41 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %42 = load i32, i32* @filter_ops, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @parse_init(%struct.filter_parse_state* %41, i32 %42, i8* %43)
  %45 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %46 = call i32 @filter_parse(%struct.filter_parse_state* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %51 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %52 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @append_filter_err(%struct.filter_parse_state* %50, i32 %53)
  br label %78

55:                                               ; preds = %33
  %56 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %57 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %58 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @replace_preds(%struct.ftrace_event_call* %56, i32 %59, %struct.filter_parse_state* %60, i8* %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %67 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %68 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @append_filter_err(%struct.filter_parse_state* %66, i32 %69)
  br label %77

71:                                               ; preds = %55
  %72 = load i32, i32* @TRACE_EVENT_FL_FILTERED, align 4
  %73 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %74 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %80 = call i32 @filter_opstack_clear(%struct.filter_parse_state* %79)
  %81 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %82 = call i32 @postfix_clear(%struct.filter_parse_state* %81)
  %83 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %84 = call i32 @kfree(%struct.filter_parse_state* %83)
  br label %85

85:                                               ; preds = %78, %32, %18, %12
  %86 = call i32 @mutex_unlock(i32* @event_mutex)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_preds(%struct.ftrace_event_call*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local i32 @filter_disable_preds(%struct.ftrace_event_call*) #1

declare dso_local i32 @remove_filter_string(i32) #1

declare dso_local %struct.filter_parse_state* @kzalloc(i32, i32) #1

declare dso_local i32 @replace_filter_string(i32, i8*) #1

declare dso_local i32 @parse_init(%struct.filter_parse_state*, i32, i8*) #1

declare dso_local i32 @filter_parse(%struct.filter_parse_state*) #1

declare dso_local i32 @append_filter_err(%struct.filter_parse_state*, i32) #1

declare dso_local i32 @replace_preds(%struct.ftrace_event_call*, i32, %struct.filter_parse_state*, i8*, i32) #1

declare dso_local i32 @filter_opstack_clear(%struct.filter_parse_state*) #1

declare dso_local i32 @postfix_clear(%struct.filter_parse_state*) #1

declare dso_local i32 @kfree(%struct.filter_parse_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
