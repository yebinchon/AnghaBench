; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_pci_vq_info*, i32 }
%struct.virtio_pci_vq_info = type { i32 }
%struct.virtio_pci_device = type { i64 }

@VIRTIO_PCI_QUEUE_NOTIFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @vp_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_notify(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca %struct.virtio_pci_vq_info*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.virtio_pci_device* @to_vp_device(i32 %7)
  store %struct.virtio_pci_device* %8, %struct.virtio_pci_device** %3, align 8
  %9 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 0
  %11 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %10, align 8
  store %struct.virtio_pci_vq_info* %11, %struct.virtio_pci_vq_info** %4, align 8
  %12 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %4, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VIRTIO_PCI_QUEUE_NOTIFY, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite16(i32 %14, i64 %19)
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
