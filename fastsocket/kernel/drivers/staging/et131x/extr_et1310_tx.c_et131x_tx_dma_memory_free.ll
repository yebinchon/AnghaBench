; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_tx_dma_memory_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_tx_dma_memory_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32, i32*, i32, i64 }

@NUM_DESC_PER_RING_TX = common dso_local global i32 0, align 4
@NIC_MIN_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_tx_dma_memory_free(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = sub i64 0, %13
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %16, align 8
  %20 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 %22, 4096
  %24 = sub i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_free_consistent(i32 %28, i32 %29, i32* %33, i32 %37)
  %39 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %9, %1
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pci_free_consistent(i32 %51, i32 4, i32* %55, i32 %59)
  %61 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %48, %42
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NIC_MIN_PACKET_SIZE, align 4
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pci_free_consistent(i32 %73, i32 %74, i32* %78, i32 %82)
  %84 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %70, %64
  %88 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @kfree(i32 %91)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
