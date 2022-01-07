; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_setup_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_pci.c_setup_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_pci_vq_info* }
%struct.virtio_pci_vq_info = type { i32, i32*, i32, %struct.virtqueue*, i64, i64 }
%struct.virtio_device = type { i32 }
%struct.virtio_pci_device = type { i64, i32, i32 }

@VIRTIO_PCI_QUEUE_SEL = common dso_local global i64 0, align 8
@VIRTIO_PCI_QUEUE_NUM = common dso_local global i64 0, align 8
@VIRTIO_PCI_QUEUE_PFN = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRTIO_PCI_VRING_ALIGN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@VIRTIO_PCI_QUEUE_ADDR_SHIFT = common dso_local global i32 0, align 4
@vp_notify = common dso_local global i32 0, align 4
@VIRTIO_MSI_NO_VECTOR = common dso_local global i64 0, align 8
@VIRTIO_MSI_QUEUE_VECTOR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*, i64)* @setup_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @setup_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.virtqueue*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.virtio_pci_device*, align 8
  %13 = alloca %struct.virtio_pci_vq_info*, align 8
  %14 = alloca %struct.virtqueue*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %20 = call %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device* %19)
  store %struct.virtio_pci_device* %20, %struct.virtio_pci_device** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %24 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VIRTIO_PCI_QUEUE_SEL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @iowrite16(i64 %22, i64 %27)
  %29 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %30 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VIRTIO_PCI_QUEUE_NUM, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @ioread16(i64 %33)
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %17, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %5
  %38 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %39 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VIRTIO_PCI_QUEUE_PFN, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @ioread32(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37, %5
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.virtqueue* @ERR_PTR(i32 %47)
  store %struct.virtqueue* %48, %struct.virtqueue** %6, align 8
  br label %182

49:                                               ; preds = %37
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.virtio_pci_vq_info* @kmalloc(i32 48, i32 %50)
  store %struct.virtio_pci_vq_info* %51, %struct.virtio_pci_vq_info** %13, align 8
  %52 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %53 = icmp ne %struct.virtio_pci_vq_info* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.virtqueue* @ERR_PTR(i32 %56)
  store %struct.virtqueue* %57, %struct.virtqueue** %6, align 8
  br label %182

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %61 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %64 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %67 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i32, i32* @VIRTIO_PCI_VRING_ALIGN, align 4
  %70 = call i32 @vring_size(i64 %68, i32 %69)
  %71 = call i64 @PAGE_ALIGN(i32 %70)
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load i32, i32* @__GFP_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call i32* @alloc_pages_exact(i64 %72, i32 %75)
  %77 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %78 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %80 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %58
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  br label %177

86:                                               ; preds = %58
  %87 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %88 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @virt_to_phys(i32* %89)
  %91 = load i32, i32* @VIRTIO_PCI_QUEUE_ADDR_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %94 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VIRTIO_PCI_QUEUE_PFN, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite32(i32 %92, i64 %97)
  %99 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %100 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @VIRTIO_PCI_VRING_ALIGN, align 4
  %103 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %104 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %105 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @vp_notify, align 4
  %108 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call %struct.virtqueue* @vring_new_virtqueue(i64 %101, i32 %102, %struct.virtio_device* %103, i32* %106, i32 %107, void (%struct.virtqueue*)* %108, i8* %109)
  store %struct.virtqueue* %110, %struct.virtqueue** %14, align 8
  %111 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %112 = icmp ne %struct.virtqueue* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %86
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %18, align 4
  br label %165

116:                                              ; preds = %86
  %117 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %118 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %119 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %118, i32 0, i32 0
  store %struct.virtio_pci_vq_info* %117, %struct.virtio_pci_vq_info** %119, align 8
  %120 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %121 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %122 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %121, i32 0, i32 3
  store %struct.virtqueue* %120, %struct.virtqueue** %122, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @VIRTIO_MSI_NO_VECTOR, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %116
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %129 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VIRTIO_MSI_QUEUE_VECTOR, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @iowrite16(i64 %127, i64 %132)
  %134 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %135 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @VIRTIO_MSI_QUEUE_VECTOR, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i64 @ioread16(i64 %138)
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* @VIRTIO_MSI_NO_VECTOR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %126
  %144 = load i32, i32* @EBUSY, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %18, align 4
  br label %162

146:                                              ; preds = %126
  br label %147

147:                                              ; preds = %146, %116
  %148 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %149 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %148, i32 0, i32 1
  %150 = load i64, i64* %15, align 8
  %151 = call i32 @spin_lock_irqsave(i32* %149, i64 %150)
  %152 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %153 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %152, i32 0, i32 2
  %154 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %155 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %154, i32 0, i32 2
  %156 = call i32 @list_add(i32* %153, i32* %155)
  %157 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %158 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %157, i32 0, i32 1
  %159 = load i64, i64* %15, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  store %struct.virtqueue* %161, %struct.virtqueue** %6, align 8
  br label %182

162:                                              ; preds = %143
  %163 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %164 = call i32 @vring_del_virtqueue(%struct.virtqueue* %163)
  br label %165

165:                                              ; preds = %162, %113
  %166 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %12, align 8
  %167 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @VIRTIO_PCI_QUEUE_PFN, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @iowrite32(i32 0, i64 %170)
  %172 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %173 = getelementptr inbounds %struct.virtio_pci_vq_info, %struct.virtio_pci_vq_info* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %16, align 8
  %176 = call i32 @free_pages_exact(i32* %174, i64 %175)
  br label %177

177:                                              ; preds = %165, %83
  %178 = load %struct.virtio_pci_vq_info*, %struct.virtio_pci_vq_info** %13, align 8
  %179 = call i32 @kfree(%struct.virtio_pci_vq_info* %178)
  %180 = load i32, i32* %18, align 4
  %181 = call %struct.virtqueue* @ERR_PTR(i32 %180)
  store %struct.virtqueue* %181, %struct.virtqueue** %6, align 8
  br label %182

182:                                              ; preds = %177, %147, %54, %45
  %183 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  ret %struct.virtqueue* %183
}

declare dso_local %struct.virtio_pci_device* @to_vp_device(%struct.virtio_device*) #1

declare dso_local i32 @iowrite16(i64, i64) #1

declare dso_local i64 @ioread16(i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

declare dso_local %struct.virtio_pci_vq_info* @kmalloc(i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @vring_size(i64, i32) #1

declare dso_local i32* @alloc_pages_exact(i64, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @virt_to_phys(i32*) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i64, i32, %struct.virtio_device*, i32*, i32, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @free_pages_exact(i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtio_pci_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
