; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_start_hc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_start_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i64, i32 }
%struct.tmio_hcd = type { i64 }

@CCR_BASE = common dso_local global i64 0, align 8
@CCR_ILME = common dso_local global i64 0, align 8
@CCR_INTC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"revision %d @ 0x%08llx, irq %d\0A\00", align 1
@CCR_REVID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tmio_start_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_start_hc(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.tmio_hcd*, align 8
  %5 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd* %8)
  store %struct.tmio_hcd* %9, %struct.tmio_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = call i32 @tmio_write_pm(%struct.platform_device* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CCR_BASE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @tmio_iowrite16(i64 %15, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = lshr i64 %22, 16
  %24 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %25 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CCR_BASE, align 8
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, 2
  %30 = call i32 @tmio_iowrite16(i64 %23, i64 %29)
  %31 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CCR_ILME, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @tmio_iowrite8(i32 1, i64 %35)
  %37 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CCR_INTC, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @tmio_iowrite8(i32 2, i64 %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CCR_REVID, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tmio_ioread8(i64 %49)
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %53, i32 %56)
  ret void
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd*) #1

declare dso_local i32 @tmio_write_pm(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i64, i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @tmio_ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
