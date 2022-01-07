; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdb-events.c_set_gdb_event_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdb-events.c_set_gdb_event_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdb_events = type { i32 }

@current_event_hooks = common dso_local global %struct.gdb_events* null, align 8
@queue_event_hooks = common dso_local global %struct.gdb_events zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gdb_events* @set_gdb_event_hooks(%struct.gdb_events* %0) #0 {
  %2 = alloca %struct.gdb_events*, align 8
  %3 = alloca %struct.gdb_events*, align 8
  store %struct.gdb_events* %0, %struct.gdb_events** %2, align 8
  %4 = load %struct.gdb_events*, %struct.gdb_events** @current_event_hooks, align 8
  store %struct.gdb_events* %4, %struct.gdb_events** %3, align 8
  %5 = load %struct.gdb_events*, %struct.gdb_events** %2, align 8
  %6 = icmp eq %struct.gdb_events* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.gdb_events* @queue_event_hooks, %struct.gdb_events** @current_event_hooks, align 8
  br label %10

8:                                                ; preds = %1
  %9 = load %struct.gdb_events*, %struct.gdb_events** %2, align 8
  store %struct.gdb_events* %9, %struct.gdb_events** @current_event_hooks, align 8
  br label %10

10:                                               ; preds = %8, %7
  %11 = load %struct.gdb_events*, %struct.gdb_events** %3, align 8
  ret %struct.gdb_events* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
