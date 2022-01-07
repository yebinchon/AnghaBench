; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_adapter_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_adapter_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"et131x_tx_dma_memory_alloc FAILED\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"et131x_rx_dma_memory_alloc FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"et131x_init_recv FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_adapter_memory_alloc(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = call i32 @et131x_tx_dma_memory_alloc(%struct.et131x_adapter* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %44

15:                                               ; preds = %4
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %17 = call i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %27 = call i32 @et131x_tx_dma_memory_free(%struct.et131x_adapter* %26)
  br label %44

28:                                               ; preds = %15
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %30 = call i32 @et131x_init_recv(%struct.et131x_adapter* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %40 = call i32 @et131x_tx_dma_memory_free(%struct.et131x_adapter* %39)
  %41 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %42 = call i32 @et131x_rx_dma_memory_free(%struct.et131x_adapter* %41)
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %33, %20, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @et131x_tx_dma_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_tx_dma_memory_free(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_init_recv(%struct.et131x_adapter*) #1

declare dso_local i32 @et131x_rx_dma_memory_free(%struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
