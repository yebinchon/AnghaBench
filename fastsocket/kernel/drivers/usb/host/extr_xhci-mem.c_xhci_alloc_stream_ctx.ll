; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_stream_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_stream_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_stream_ctx = type { i32 }
%struct.xhci_hcd = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MEDIUM_STREAM_ARRAY_SIZE = common dso_local global i32 0, align 4
@SMALL_STREAM_ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_stream_ctx* (%struct.xhci_hcd*, i32, i32*, i32)* @xhci_alloc_stream_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_stream_ctx* @xhci_alloc_stream_ctx(%struct.xhci_hcd* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_stream_ctx*, align 8
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %12 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MEDIUM_STREAM_ARRAY_SIZE, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.xhci_stream_ctx* @dma_alloc_coherent(i32* %22, i32 %26, i32* %27, i32 %28)
  store %struct.xhci_stream_ctx* %29, %struct.xhci_stream_ctx** %5, align 8
  br label %48

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SMALL_STREAM_ARRAY_SIZE, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call %struct.xhci_stream_ctx* @dma_pool_alloc(i32 %37, i32 %38, i32* %39)
  store %struct.xhci_stream_ctx* %40, %struct.xhci_stream_ctx** %5, align 8
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.xhci_stream_ctx* @dma_pool_alloc(i32 %44, i32 %45, i32* %46)
  store %struct.xhci_stream_ctx* %47, %struct.xhci_stream_ctx** %5, align 8
  br label %48

48:                                               ; preds = %41, %34, %20
  %49 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %5, align 8
  ret %struct.xhci_stream_ctx* %49
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local %struct.xhci_stream_ctx* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local %struct.xhci_stream_ctx* @dma_pool_alloc(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
