; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_write_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_write_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.tmio_hcd = type { i32, i64 }

@CCR_PM_GKEN = common dso_local global i32 0, align 4
@CCR_PM_CKRNEN = common dso_local global i32 0, align 4
@CCR_PM_PMEE = common dso_local global i32 0, align 4
@CCR_PM_PMES = common dso_local global i32 0, align 4
@CCR_PM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tmio_write_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_write_pm(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.tmio_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd* %9)
  store %struct.tmio_hcd* %10, %struct.tmio_hcd** %4, align 8
  %11 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @CCR_PM_GKEN, align 4
  %16 = load i32, i32* @CCR_PM_CKRNEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CCR_PM_PMEE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CCR_PM_PMES, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CCR_PM, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @tmio_iowrite16(i32 %22, i64 %27)
  %29 = load %struct.tmio_hcd*, %struct.tmio_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
