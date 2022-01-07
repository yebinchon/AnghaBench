; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.usb_hcd = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCD_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.usb_hcd* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.usb_hcd* %5, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = icmp ne %struct.usb_hcd* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  %10 = call i32 (...) @local_irq_disable()
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call i32 @usb_hcd_irq(i32 0, %struct.usb_hcd* %11)
  %13 = call i32 (...) @local_irq_enable()
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @usb_remove_hcd(%struct.usb_hcd* %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @HCD_MEMORY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %9
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @release_mem_region(i32 %31, i32 %34)
  br label %44

36:                                               ; preds = %9
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @release_region(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %24
  %45 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %46 = call i32 @usb_put_hcd(%struct.usb_hcd* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  br label %49

49:                                               ; preds = %44, %8
  ret void
}

declare dso_local %struct.usb_hcd* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @usb_hcd_irq(i32, %struct.usb_hcd*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
