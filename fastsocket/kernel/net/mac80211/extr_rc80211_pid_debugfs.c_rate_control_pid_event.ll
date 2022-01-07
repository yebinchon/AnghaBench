; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_debugfs.c_rate_control_pid_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_debugfs.c_rate_control_pid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_pid_event_buffer = type { i64, i32, i32, i32, %struct.rc_pid_event* }
%struct.rc_pid_event = type { i32, %union.rc_pid_event_data, i64, i32 }
%union.rc_pid_event_data = type { i32 }

@RC_PID_EVENT_RING_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_pid_event_buffer*, i32, %union.rc_pid_event_data*)* @rate_control_pid_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_event(%struct.rc_pid_event_buffer* %0, i32 %1, %union.rc_pid_event_data* %2) #0 {
  %4 = alloca %struct.rc_pid_event_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.rc_pid_event_data*, align 8
  %7 = alloca %struct.rc_pid_event*, align 8
  %8 = alloca i64, align 8
  store %struct.rc_pid_event_buffer* %0, %struct.rc_pid_event_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.rc_pid_event_data* %2, %union.rc_pid_event_data** %6, align 8
  %9 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %9, i32 0, i32 2
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %13, i32 0, i32 4
  %15 = load %struct.rc_pid_event*, %struct.rc_pid_event** %14, align 8
  %16 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.rc_pid_event, %struct.rc_pid_event* %15, i64 %18
  store %struct.rc_pid_event* %19, %struct.rc_pid_event** %7, align 8
  %20 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* @RC_PID_EVENT_RING_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = urem i64 %23, %25
  %27 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.rc_pid_event*, %struct.rc_pid_event** %7, align 8
  %31 = getelementptr inbounds %struct.rc_pid_event, %struct.rc_pid_event* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = load %struct.rc_pid_event*, %struct.rc_pid_event** %7, align 8
  %38 = getelementptr inbounds %struct.rc_pid_event, %struct.rc_pid_event* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.rc_pid_event*, %struct.rc_pid_event** %7, align 8
  %41 = getelementptr inbounds %struct.rc_pid_event, %struct.rc_pid_event* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rc_pid_event*, %struct.rc_pid_event** %7, align 8
  %43 = getelementptr inbounds %struct.rc_pid_event, %struct.rc_pid_event* %42, i32 0, i32 1
  %44 = load %union.rc_pid_event_data*, %union.rc_pid_event_data** %6, align 8
  %45 = bitcast %union.rc_pid_event_data* %43 to i8*
  %46 = bitcast %union.rc_pid_event_data* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %47, i32 0, i32 2
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.rc_pid_event_buffer, %struct.rc_pid_event_buffer* %51, i32 0, i32 1
  %53 = call i32 @wake_up_all(i32* %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
