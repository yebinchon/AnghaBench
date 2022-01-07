; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_core.c_free_dbdma_descriptor_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_core.c_free_dbdma_descriptor_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_dev = type { i32 }
%struct.dbdma_command_mem = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2sbus_dev*, %struct.dbdma_command_mem*)* @free_dbdma_descriptor_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dbdma_descriptor_ring(%struct.i2sbus_dev* %0, %struct.dbdma_command_mem* %1) #0 {
  %3 = alloca %struct.i2sbus_dev*, align 8
  %4 = alloca %struct.dbdma_command_mem*, align 8
  store %struct.i2sbus_dev* %0, %struct.i2sbus_dev** %3, align 8
  store %struct.dbdma_command_mem* %1, %struct.dbdma_command_mem** %4, align 8
  %5 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %4, align 8
  %6 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %3, align 8
  %12 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* @macio_get_pci_dev(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %4, align 8
  %17 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %4, align 8
  %20 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %4, align 8
  %23 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32* %15, i32 %18, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @macio_get_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
