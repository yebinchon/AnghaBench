; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_make_forwarding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp.c_br_make_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i64, i64 }

@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@BR_NO_STP = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@BR_STATE_LISTENING = common dso_local global i64 0, align 8
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @br_make_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_make_forwarding(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %4 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %5 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %4, i32 0, i32 2
  %6 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  store %struct.net_bridge* %6, %struct.net_bridge** %3, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BR_NO_STP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19, %13
  %25 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %27 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %29 = call i32 @br_topology_change_detection(%struct.net_bridge* %28)
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  %32 = call i32 @del_timer(i32* %31)
  br label %48

33:                                               ; preds = %19
  %34 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BR_KERNEL_STP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @BR_STATE_LISTENING, align 8
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %42 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %47

43:                                               ; preds = %33
  %44 = load i64, i64* @BR_STATE_LEARNING, align 8
  %45 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %46 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %50 = call i32 @br_multicast_enable_port(%struct.net_bridge_port* %49)
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %52 = call i32 @br_log_state(%struct.net_bridge_port* %51)
  %53 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %54 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %59 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %58, i32 0, i32 1
  %60 = load i64, i64* @jiffies, align 8
  %61 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %62 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i32 @mod_timer(i32* %59, i64 %64)
  br label %66

66:                                               ; preds = %12, %57, %48
  ret void
}

declare dso_local i32 @br_topology_change_detection(%struct.net_bridge*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @br_multicast_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_log_state(%struct.net_bridge_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
