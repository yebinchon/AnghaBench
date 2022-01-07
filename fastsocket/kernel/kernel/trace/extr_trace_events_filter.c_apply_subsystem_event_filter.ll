; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_apply_subsystem_event_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_apply_subsystem_event_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_subsystem = type { i32 }
%struct.filter_parse_state = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@filter_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_subsystem_event_filter(%struct.event_subsystem* %0, i8* %1) #0 {
  %3 = alloca %struct.event_subsystem*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_parse_state*, align 8
  store %struct.event_subsystem* %0, %struct.event_subsystem** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @mutex_lock(i32* @event_mutex)
  %8 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %9 = call i32 @init_subsystem_preds(%struct.event_subsystem* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %74

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strstrip(i8* %14)
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %20 = call i32 @filter_free_subsystem_preds(%struct.event_subsystem* %19)
  %21 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %22 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @remove_filter_string(i32 %23)
  br label %74

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
  br label %74

33:                                               ; preds = %25
  %34 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %35 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @replace_filter_string(i32 %36, i8* %37)
  %39 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %40 = load i32, i32* @filter_ops, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @parse_init(%struct.filter_parse_state* %39, i32 %40, i8* %41)
  %43 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %44 = call i32 @filter_parse(%struct.filter_parse_state* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %49 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %50 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @append_filter_err(%struct.filter_parse_state* %48, i32 %51)
  br label %67

53:                                               ; preds = %33
  %54 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %55 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @replace_system_preds(%struct.event_subsystem* %54, %struct.filter_parse_state* %55, i8* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %62 = load %struct.event_subsystem*, %struct.event_subsystem** %3, align 8
  %63 = getelementptr inbounds %struct.event_subsystem, %struct.event_subsystem* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @append_filter_err(%struct.filter_parse_state* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66, %47
  %68 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %69 = call i32 @filter_opstack_clear(%struct.filter_parse_state* %68)
  %70 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %71 = call i32 @postfix_clear(%struct.filter_parse_state* %70)
  %72 = load %struct.filter_parse_state*, %struct.filter_parse_state** %6, align 8
  %73 = call i32 @kfree(%struct.filter_parse_state* %72)
  br label %74

74:                                               ; preds = %67, %32, %18, %12
  %75 = call i32 @mutex_unlock(i32* @event_mutex)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_subsystem_preds(%struct.event_subsystem*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strstrip(i8*) #1

declare dso_local i32 @filter_free_subsystem_preds(%struct.event_subsystem*) #1

declare dso_local i32 @remove_filter_string(i32) #1

declare dso_local %struct.filter_parse_state* @kzalloc(i32, i32) #1

declare dso_local i32 @replace_filter_string(i32, i8*) #1

declare dso_local i32 @parse_init(%struct.filter_parse_state*, i32, i8*) #1

declare dso_local i32 @filter_parse(%struct.filter_parse_state*) #1

declare dso_local i32 @append_filter_err(%struct.filter_parse_state*, i32) #1

declare dso_local i32 @replace_system_preds(%struct.event_subsystem*, %struct.filter_parse_state*, i8*) #1

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
