; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i32, i32 }

@fMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.et131x_adapter* %5, %struct.et131x_adapter** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = call i32 @et131x_rx_dma_disable(%struct.et131x_adapter* %8)
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %11 = call i32 @et131x_tx_dma_disable(%struct.et131x_adapter* %10)
  %12 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %13 = call i32 @et131x_disable_interrupts(%struct.et131x_adapter* %12)
  %14 = load i32, i32* @fMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.net_device* %23)
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %25, i32 0, i32 0
  %27 = call i32 @del_timer_sync(i32* %26)
  ret i32 0
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @et131x_rx_dma_disable(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_tx_dma_disable(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_disable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
