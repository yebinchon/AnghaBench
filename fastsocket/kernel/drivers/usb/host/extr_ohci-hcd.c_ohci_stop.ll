; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ohci_hcd = type { i64, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @ohci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %4)
  store %struct.ohci_hcd* %5, %struct.ohci_hcd** %3, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = call i32 @ohci_dump(%struct.ohci_hcd* %6, i32 1)
  %8 = call i32 (...) @flush_scheduled_work()
  %9 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %10 = call i32 @ohci_usb_reset(%struct.ohci_hcd* %9)
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %12 = load i32, i32* @OHCI_INTR_MIE, align 4
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %14 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @ohci_writel(%struct.ohci_hcd* %11, i32 %12, i32* %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.usb_hcd* %21)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %26 = call i64 @quirk_zfmicro(%struct.ohci_hcd* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %29, i32 0, i32 2
  %31 = call i32 @del_timer(i32* %30)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %34 = call i64 @quirk_amdiso(%struct.ohci_hcd* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (...) @usb_amd_dev_put()
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %40 = call i32 @remove_debug_files(%struct.ohci_hcd* %39)
  %41 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %42 = call i32 @ohci_mem_cleanup(%struct.ohci_hcd* %41)
  %43 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %38
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %53 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %56 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dma_free_coherent(i32 %51, i32 4, i32* %54, i64 %57)
  %59 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %60 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %62 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %47, %38
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_dump(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @ohci_usb_reset(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.usb_hcd*) #1

declare dso_local i64 @quirk_zfmicro(%struct.ohci_hcd*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @quirk_amdiso(%struct.ohci_hcd*) #1

declare dso_local i32 @usb_amd_dev_put(...) #1

declare dso_local i32 @remove_debug_files(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_mem_cleanup(%struct.ohci_hcd*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
