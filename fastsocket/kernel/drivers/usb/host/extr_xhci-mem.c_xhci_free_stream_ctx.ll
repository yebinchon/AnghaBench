; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_stream_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_stream_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }
%struct.xhci_stream_ctx = type { i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MEDIUM_STREAM_ARRAY_SIZE = common dso_local global i32 0, align 4
@SMALL_STREAM_ARRAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, %struct.xhci_stream_ctx*, i32)* @xhci_free_stream_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_free_stream_ctx(%struct.xhci_hcd* %0, i32 %1, %struct.xhci_stream_ctx* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_stream_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xhci_stream_ctx* %2, %struct.xhci_stream_ctx** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %11 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MEDIUM_STREAM_ARRAY_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dma_free_coherent(i32* %21, i32 %25, %struct.xhci_stream_ctx* %26, i32 %27)
  br label %45

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SMALL_STREAM_ARRAY_SIZE, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %35 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %7, align 8
  %38 = load i32, i32* %8, align 4
  call void @dma_pool_free(i32 %36, %struct.xhci_stream_ctx* %37, i32 %38)
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %7, align 8
  %44 = load i32, i32* %8, align 4
  call void @dma_pool_free(i32 %42, %struct.xhci_stream_ctx* %43, i32 %44)
  br label %45

45:                                               ; preds = %33, %39, %19
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.xhci_stream_ctx*, i32) #1

declare dso_local void @dma_pool_free(i32, %struct.xhci_stream_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
