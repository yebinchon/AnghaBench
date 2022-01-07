; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_pci_attribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/extr_vme.c_vme_dma_pci_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_attr = type { i32, i8*, i32 }
%struct.vme_dma_pci = type { i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for attributes structure\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to allocate memory for pci attributes\0A\00", align 1
@VME_DMA_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vme_dma_attr* @vme_dma_pci_attribute(i32 %0) #0 {
  %2 = alloca %struct.vme_dma_attr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_dma_attr*, align 8
  %5 = alloca %struct.vme_dma_pci*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @kmalloc(i32 24, i32 %6)
  %8 = inttoptr i64 %7 to %struct.vme_dma_attr*
  store %struct.vme_dma_attr* %8, %struct.vme_dma_attr** %4, align 8
  %9 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %10 = icmp eq %struct.vme_dma_attr* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @kmalloc(i32 24, i32 %14)
  %16 = inttoptr i64 %15 to %struct.vme_dma_pci*
  store %struct.vme_dma_pci* %16, %struct.vme_dma_pci** %5, align 8
  %17 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %18 = icmp eq %struct.vme_dma_pci* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %33

21:                                               ; preds = %13
  %22 = load i32, i32* @VME_DMA_PCI, align 4
  %23 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %24 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %26 = bitcast %struct.vme_dma_pci* %25 to i8*
  %27 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %28 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %31 = getelementptr inbounds %struct.vme_dma_pci, %struct.vme_dma_pci* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  store %struct.vme_dma_attr* %32, %struct.vme_dma_attr** %2, align 8
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %35 = bitcast %struct.vme_dma_attr* %34 to %struct.vme_dma_pci*
  %36 = call i32 @kfree(%struct.vme_dma_pci* %35)
  br label %37

37:                                               ; preds = %33, %11
  store %struct.vme_dma_attr* null, %struct.vme_dma_attr** %2, align 8
  br label %38

38:                                               ; preds = %37, %21
  %39 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %2, align 8
  ret %struct.vme_dma_attr* %39
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @kfree(%struct.vme_dma_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
