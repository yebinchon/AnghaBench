; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_buffer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.buffer = type { %struct.buffer*, i32, %struct.buffer* }
%struct.r8180_priv = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_free(%struct.net_device* %0, %struct.buffer** %1, i32 %2, i16 signext %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.buffer**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.buffer*, align 8
  %10 = alloca %struct.buffer*, align 8
  %11 = alloca %struct.r8180_priv*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.buffer** %1, %struct.buffer*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @ieee80211_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.r8180_priv*
  store %struct.r8180_priv* %15, %struct.r8180_priv** %11, align 8
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %11, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %12, align 8
  %19 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %20 = load %struct.buffer*, %struct.buffer** %19, align 8
  %21 = icmp ne %struct.buffer* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %65

23:                                               ; preds = %4
  %24 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %25 = load %struct.buffer*, %struct.buffer** %24, align 8
  store %struct.buffer* %25, %struct.buffer** %9, align 8
  br label %26

26:                                               ; preds = %58, %23
  %27 = load %struct.buffer*, %struct.buffer** %9, align 8
  %28 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 2
  %29 = load %struct.buffer*, %struct.buffer** %28, align 8
  store %struct.buffer* %29, %struct.buffer** %10, align 8
  %30 = load i16, i16* %8, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.buffer*, %struct.buffer** %9, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 0
  %37 = load %struct.buffer*, %struct.buffer** %36, align 8
  %38 = load %struct.buffer*, %struct.buffer** %9, align 8
  %39 = getelementptr inbounds %struct.buffer, %struct.buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_free_consistent(%struct.pci_dev* %33, i32 %34, %struct.buffer* %37, i32 %40)
  br label %54

42:                                               ; preds = %26
  %43 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %44 = load %struct.buffer*, %struct.buffer** %9, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %49 = call i32 @pci_unmap_single(%struct.pci_dev* %43, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.buffer*, %struct.buffer** %9, align 8
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 0
  %52 = load %struct.buffer*, %struct.buffer** %51, align 8
  %53 = call i32 @kfree(%struct.buffer* %52)
  br label %54

54:                                               ; preds = %42, %32
  %55 = load %struct.buffer*, %struct.buffer** %9, align 8
  %56 = call i32 @kfree(%struct.buffer* %55)
  %57 = load %struct.buffer*, %struct.buffer** %10, align 8
  store %struct.buffer* %57, %struct.buffer** %9, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load %struct.buffer*, %struct.buffer** %10, align 8
  %60 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %61 = load %struct.buffer*, %struct.buffer** %60, align 8
  %62 = icmp ne %struct.buffer* %59, %61
  br i1 %62, label %26, label %63

63:                                               ; preds = %58
  %64 = load %struct.buffer**, %struct.buffer*** %6, align 8
  store %struct.buffer* null, %struct.buffer** %64, align 8
  br label %65

65:                                               ; preds = %63, %22
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, %struct.buffer*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
