; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_add_pred_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_add_pred_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { i32 }
%struct.ftrace_event_call = type { i32 }
%struct.event_filter = type { i32, i32* }
%struct.filter_pred = type { i32 }

@MAX_FILTER_PRED = common dso_local global i32 0, align 4
@FILT_ERR_TOO_MANY_PREDS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_parse_state*, %struct.ftrace_event_call*, %struct.event_filter*, %struct.filter_pred*, i32)* @filter_add_pred_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_add_pred_fn(%struct.filter_parse_state* %0, %struct.ftrace_event_call* %1, %struct.event_filter* %2, %struct.filter_pred* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.filter_parse_state*, align 8
  %8 = alloca %struct.ftrace_event_call*, align 8
  %9 = alloca %struct.event_filter*, align 8
  %10 = alloca %struct.filter_pred*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %7, align 8
  store %struct.ftrace_event_call* %1, %struct.ftrace_event_call** %8, align 8
  store %struct.event_filter* %2, %struct.event_filter** %9, align 8
  store %struct.filter_pred* %3, %struct.filter_pred** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %15 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MAX_FILTER_PRED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.filter_parse_state*, %struct.filter_parse_state** %7, align 8
  %21 = load i32, i32* @FILT_ERR_TOO_MANY_PREDS, align 4
  %22 = call i32 @parse_error(%struct.filter_parse_state* %20, i32 %21, i32 0)
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %56

25:                                               ; preds = %5
  %26 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %30 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @filter_clear_pred(i32 %35)
  %37 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %38 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.filter_pred*, %struct.filter_pred** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @filter_set_pred(i32 %43, %struct.filter_pred* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %25
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %56

51:                                               ; preds = %25
  %52 = load %struct.event_filter*, %struct.event_filter** %9, align 8
  %53 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %49, %19
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @parse_error(%struct.filter_parse_state*, i32, i32) #1

declare dso_local i32 @filter_clear_pred(i32) #1

declare dso_local i32 @filter_set_pred(i32, %struct.filter_pred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
