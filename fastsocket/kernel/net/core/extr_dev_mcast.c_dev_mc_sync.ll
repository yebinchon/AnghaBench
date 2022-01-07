; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev_mcast.c_dev_mc_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev_mcast.c_dev_mc_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_mc_sync(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @netif_addr_lock_bh(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = call i32 @__dev_addr_sync(i32* %9, i32* %11, i32* %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @__dev_set_rx_mode(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netif_addr_unlock_bh(%struct.net_device* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @__dev_addr_sync(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__dev_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
