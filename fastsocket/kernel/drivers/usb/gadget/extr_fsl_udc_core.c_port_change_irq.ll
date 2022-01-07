; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_port_change_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_port_change_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fsl_udc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dr_regs = common dso_local global %struct.TYPE_4__* null, align 8
@PORTSCX_PORT_RESET = common dso_local global i32 0, align 4
@PORTSCX_PORT_SPEED_MASK = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*)* @port_change_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_change_irq(%struct.fsl_udc* %0) #0 {
  %2 = alloca %struct.fsl_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = call i32 @fsl_readl(i32* %5)
  %7 = load i32, i32* @PORTSCX_PORT_RESET, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @fsl_readl(i32* %12)
  %14 = load i32, i32* @PORTSCX_PORT_SPEED_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %32 [
    i32 129, label %17
    i32 130, label %22
    i32 128, label %27
  ]

17:                                               ; preds = %10
  %18 = load i32, i32* @USB_SPEED_HIGH, align 4
  %19 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  br label %37

22:                                               ; preds = %10
  %23 = load i32, i32* @USB_SPEED_FULL, align 4
  %24 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  br label %37

27:                                               ; preds = %10
  %28 = load i32, i32* @USB_SPEED_LOW, align 4
  %29 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %30 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %37

32:                                               ; preds = %10
  %33 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %34 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %35 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27, %22, %17
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %40 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %45 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %46 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @fsl_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
