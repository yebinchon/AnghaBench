; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_port_carrier_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_port_carrier_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.net_bridge*, %struct.net_device* }
%struct.net_bridge = type { i32, i32 }
%struct.net_device = type { i32 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_port_carrier_check(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 2
  %10 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  store %struct.net_bridge* %10, %struct.net_bridge** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i64 @netif_carrier_ok(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @port_cost(%struct.net_device* %15)
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %18 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @netif_running(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %27 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i64 @netif_carrier_ok(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BR_STATE_DISABLED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %40 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %52

42:                                               ; preds = %25
  %43 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %44 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BR_STATE_DISABLED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %50 = call i32 @br_stp_disable_port(%struct.net_bridge_port* %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %41
  %53 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %54 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  br label %56

56:                                               ; preds = %52, %19
  ret void
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @port_cost(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_stp_disable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
