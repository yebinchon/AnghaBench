; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_free_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_vp_free_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_CONFIG_VECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @vp_free_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp_free_vectors(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_pci_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %5)
  store %struct.virtio_pci_device* %6, %struct.virtio_pci_device** %3, align 8
  %7 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.virtio_pci_device* %17)
  %19 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %20 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.virtio_pci_device* %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %44 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %49 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %50 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite16(i32 %48, i64 %53)
  %55 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %56 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VIRTIO_MSI_CONFIG_VECTOR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @ioread16(i64 %59)
  %61 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %62 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %61, i32 0, i32 5
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @pci_disable_msix(%struct.TYPE_3__* %63)
  %65 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %66 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %68 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %47, %42
  %70 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %71 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %73 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @kfree(%struct.TYPE_4__* %74)
  %76 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %77 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %76, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %77, align 8
  %78 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %79 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @kfree(%struct.TYPE_4__* %80)
  %82 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %3, align 8
  %83 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %82, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %83, align 8
  ret void
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @free_irq(i32, %struct.virtio_pci_device*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
