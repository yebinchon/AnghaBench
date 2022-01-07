; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_del_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_pci_vq_info*, i32 }
%struct.virtio_pci_vq_info = type { i32, i32, i32, i32 }
%struct.virtio_pci_device = type { i64, i64, i32 }

@VIRTIO_PCI_QUEUE_SEL = common dso_local global i64 0, align 8
@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_QUEUE_VECTOR = common dso_local global i64 0, align 8
@VIRTIO_PCI_ISR = common dso_local global i64 0, align 8
@VIRTIO_PCI_QUEUE_PFN = common dso_local global i64 0, align 8
@VIRTIO_PCI_VRING_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @vp_del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_del_vq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca %struct.virtio_pci_vq_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.virtio_pci_device* @to_vp_device(i32 %9)
  store %struct.virtio_pci_device* %10, %struct.virtio_pci_device** %3, align 8
  %11 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %12 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %11, i32 0, i32 0
  %13 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %12, align 8
  store %struct.virtio_pci_vq_info* %13, %struct.virtio_pci_vq_info** %4, align 8
  %14 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %15 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %14, i32 0, i32 2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %19 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %18, i32 0, i32 3
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %22 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %21, i32 0, i32 2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %26 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %29 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VIRTIO_PCI_QUEUE_SEL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite16(i32 %27, i64 %32)
  %34 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %35 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %1
  %39 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %40 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %41 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VIRTIO_MSI_QUEUE_VECTOR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite16(i32 %39, i64 %44)
  %46 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %47 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VIRTIO_PCI_ISR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @ioread8(i64 %50)
  br label %52

52:                                               ; preds = %38, %1
  %53 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %54 = call i32 @vring_del_virtqueue(%struct.virtqueue* %53)
  %55 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %56 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VIRTIO_PCI_QUEUE_PFN, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i32 0, i64 %59)
  %61 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %62 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VIRTIO_PCI_VRING_ALIGN, align 4
  %65 = call i32 @vring_size(i32 %63, i32 %64)
  %66 = call i64 @PAGE_ALIGN(i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %68 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @free_pages_exact(i32 %69, i64 %70)
  %72 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %73 = call i32 @kfree(%struct.virtio_pci_vq_info* %72)
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @free_pages_exact(i32, i64) #1

declare dso_local i32 @kfree(%struct.virtio_pci_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
