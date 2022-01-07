; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_debugfs.c_rate_control_pid_event_rate_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_debugfs.c_rate_control_pid_event_rate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_pid_event_buffer = type { i32 }
%union.rc_pid_event_data = type { i32 }

@RC_PID_EVENT_TYPE_RATE_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_control_pid_event_rate_change(%struct.rc_pid_event_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rc_pid_event_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.rc_pid_event_data, align 4
  store %struct.rc_pid_event_buffer* %0, %struct.rc_pid_event_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = bitcast %union.rc_pid_event_data* %7 to i32*
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = bitcast %union.rc_pid_event_data* %7 to i32*
  store i32 %10, i32* %11, align 4
  %12 = load %struct.rc_pid_event_buffer*, %struct.rc_pid_event_buffer** %4, align 8
  %13 = load i32, i32* @RC_PID_EVENT_TYPE_RATE_CHANGE, align 4
  %14 = call i32 @rate_control_pid_event(%struct.rc_pid_event_buffer* %12, i32 %13, %union.rc_pid_event_data* %7)
  ret void
}

declare dso_local i32 @rate_control_pid_event(%struct.rc_pid_event_buffer*, i32, %union.rc_pid_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
