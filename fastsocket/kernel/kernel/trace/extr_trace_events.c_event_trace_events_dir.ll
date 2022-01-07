; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_event_trace_events_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_event_trace_events_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@event_trace_events_dir.d_tracer = internal global %struct.dentry* null, align 8
@event_trace_events_dir.d_events = internal global %struct.dentry* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not create debugfs 'events' directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* ()* @event_trace_events_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @event_trace_events_dir() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_events, align 8
  %3 = icmp ne %struct.dentry* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_events, align 8
  store %struct.dentry* %5, %struct.dentry** %1, align 8
  br label %20

6:                                                ; preds = %0
  %7 = call %struct.dentry* (...) @tracing_init_dentry()
  store %struct.dentry* %7, %struct.dentry** @event_trace_events_dir.d_tracer, align 8
  %8 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_tracer, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store %struct.dentry* null, %struct.dentry** %1, align 8
  br label %20

11:                                               ; preds = %6
  %12 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_tracer, align 8
  %13 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** @event_trace_events_dir.d_events, align 8
  %14 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_events, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.dentry*, %struct.dentry** @event_trace_events_dir.d_events, align 8
  store %struct.dentry* %19, %struct.dentry** %1, align 8
  br label %20

20:                                               ; preds = %18, %10, %4
  %21 = load %struct.dentry*, %struct.dentry** %1, align 8
  ret %struct.dentry* %21
}

declare dso_local %struct.dentry* @tracing_init_dentry(...) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
