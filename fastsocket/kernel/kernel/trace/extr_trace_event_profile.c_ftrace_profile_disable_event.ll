; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_event_profile.c_ftrace_profile_disable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_event_profile.c_ftrace_profile_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 (%struct.ftrace_event_call*)*, i32 }

@total_profile_count = common dso_local global i32 0, align 4
@trace_profile_buf = common dso_local global i8* null, align 8
@trace_profile_buf_nmi = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftrace_event_call*)* @ftrace_profile_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_profile_disable_event(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %5 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %6 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %5, i32 0, i32 1
  %7 = call i32 @atomic_add_negative(i32 -1, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %12 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %11, i32 0, i32 0
  %13 = load i32 (%struct.ftrace_event_call*)*, i32 (%struct.ftrace_event_call*)** %12, align 8
  %14 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %15 = call i32 %13(%struct.ftrace_event_call* %14)
  %16 = load i32, i32* @total_profile_count, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @total_profile_count, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i8*, i8** @trace_profile_buf, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** @trace_profile_buf, align 8
  %22 = call i32 @rcu_assign_pointer(i8* %21, i32* null)
  %23 = load i8*, i8** @trace_profile_buf_nmi, align 8
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** @trace_profile_buf_nmi, align 8
  %25 = call i32 @rcu_assign_pointer(i8* %24, i32* null)
  %26 = call i32 (...) @synchronize_sched()
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free_percpu(i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @free_percpu(i8* %29)
  br label %31

31:                                               ; preds = %9, %19, %10
  ret void
}

declare dso_local i32 @atomic_add_negative(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i8*, i32*) #1

declare dso_local i32 @synchronize_sched(...) #1

declare dso_local i32 @free_percpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
