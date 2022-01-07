; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_make_blocking.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_make_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, i32 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @br_make_blocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_make_blocking(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %3 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %4 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BR_STATE_DISABLED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %16 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BR_STATE_LEARNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %14
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @br_topology_change_detection(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %36 = call i32 @br_log_state(%struct.net_bridge_port* %35)
  %37 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %38 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %37, i32 0, i32 1
  %39 = call i32 @del_timer(i32* %38)
  br label %40

40:                                               ; preds = %31, %8, %1
  ret void
}

declare dso_local i32 @br_topology_change_detection(i32) #1

declare dso_local i32 @br_log_state(%struct.net_bridge_port*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
