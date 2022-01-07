; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.et131x_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Change MTU failed; couldn't re-alloc DMA memory\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@fMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.et131x_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 9216
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %12
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %22 = call i32 @et131x_rx_dma_disable(%struct.et131x_adapter* %21)
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %24 = call i32 @et131x_tx_dma_disable(%struct.et131x_adapter* %23)
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %26 = call i32 @et131x_disable_interrupts(%struct.et131x_adapter* %25)
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %28 = call i32 @et131x_handle_send_interrupt(%struct.et131x_adapter* %27)
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %30 = call i32 @et131x_handle_recv_interrupt(%struct.et131x_adapter* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %35 = call i32 @et131x_adapter_memory_free(%struct.et131x_adapter* %34)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 14
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %41 = call i32 @et131x_soft_reset(%struct.et131x_adapter* %40)
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %43 = call i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %18
  %47 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %18
  %54 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %55 = call i32 @et131x_init_send(%struct.et131x_adapter* %54)
  %56 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %57 = call i32 @et131x_setup_hardware_properties(%struct.et131x_adapter* %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %62 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %60, i32 %63, i32 %64)
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %67 = call i32 @et131x_adapter_setup(%struct.et131x_adapter* %66)
  %68 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @fMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %76 = call i32 @et131x_enable_interrupts(%struct.et131x_adapter* %75)
  br label %77

77:                                               ; preds = %74, %53
  %78 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %79 = call i32 @et131x_rx_dma_enable(%struct.et131x_adapter* %78)
  %80 = load %struct.et131x_adapter*, %struct.et131x_adapter** %7, align 8
  %81 = call i32 @et131x_tx_dma_enable(%struct.et131x_adapter* %80)
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @netif_wake_queue(%struct.net_device* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %46, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @et131x_rx_dma_disable(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_tx_dma_disable(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_disable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_handle_send_interrupt(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_handle_recv_interrupt(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_soft_reset(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @et131x_init_send(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_setup_hardware_properties(%struct.et131x_adapter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @et131x_adapter_setup(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_enable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_rx_dma_enable(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_tx_dma_enable(%struct.et131x_adapter*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
