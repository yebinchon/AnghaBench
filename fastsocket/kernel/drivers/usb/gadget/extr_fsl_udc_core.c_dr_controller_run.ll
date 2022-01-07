; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_controller_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_controller_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fsl_udc = type { i64 }

@USB_INTR_INT_EN = common dso_local global i32 0, align 4
@USB_INTR_ERR_INT_EN = common dso_local global i32 0, align 4
@USB_INTR_PTC_DETECT_EN = common dso_local global i32 0, align 4
@USB_INTR_RESET_EN = common dso_local global i32 0, align 4
@USB_INTR_DEVICE_SUSPEND = common dso_local global i32 0, align 4
@USB_INTR_SYS_ERR_EN = common dso_local global i32 0, align 4
@dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@USB_MODE_CTRL_MODE_DEVICE = common dso_local global i32 0, align 4
@USB_CMD_RUN_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*)* @dr_controller_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_controller_run(%struct.fsl_udc* %0) #0 {
  %2 = alloca %struct.fsl_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %2, align 8
  %4 = load i32, i32* @USB_INTR_INT_EN, align 4
  %5 = load i32, i32* @USB_INTR_ERR_INT_EN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @USB_INTR_PTC_DETECT_EN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @USB_INTR_RESET_EN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @USB_INTR_DEVICE_SUSPEND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @USB_INTR_SYS_ERR_EN, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @fsl_writel(i32 %15, i32* %17)
  %19 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @fsl_readl(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @USB_MODE_CTRL_MODE_DEVICE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @fsl_writel(i32 %27, i32* %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @fsl_readl(i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @USB_CMD_RUN_STOP, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @fsl_writel(i32 %37, i32* %39)
  ret void
}

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i32 @fsl_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
