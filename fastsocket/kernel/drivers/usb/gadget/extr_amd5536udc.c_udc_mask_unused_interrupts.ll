; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_mask_unused_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_mask_unused_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@UDC_DEVINT_SVC = common dso_local global i32 0, align 4
@UDC_DEVINT_ENUM = common dso_local global i32 0, align 4
@UDC_DEVINT_US = common dso_local global i32 0, align 4
@UDC_DEVINT_UR = common dso_local global i32 0, align 4
@UDC_DEVINT_ES = common dso_local global i32 0, align 4
@UDC_DEVINT_SI = common dso_local global i32 0, align 4
@UDC_DEVINT_SOF = common dso_local global i32 0, align 4
@UDC_DEVINT_SC = common dso_local global i32 0, align 4
@UDC_EPINT_MSK_DISABLE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc*)* @udc_mask_unused_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_mask_unused_interrupts(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load i32, i32* @UDC_DEVINT_SVC, align 4
  %5 = call i32 @AMD_BIT(i32 %4)
  %6 = load i32, i32* @UDC_DEVINT_ENUM, align 4
  %7 = call i32 @AMD_BIT(i32 %6)
  %8 = or i32 %5, %7
  %9 = load i32, i32* @UDC_DEVINT_US, align 4
  %10 = call i32 @AMD_BIT(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* @UDC_DEVINT_UR, align 4
  %13 = call i32 @AMD_BIT(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @UDC_DEVINT_ES, align 4
  %16 = call i32 @AMD_BIT(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @UDC_DEVINT_SI, align 4
  %19 = call i32 @AMD_BIT(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @UDC_DEVINT_SOF, align 4
  %22 = call i32 @AMD_BIT(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @UDC_DEVINT_SC, align 4
  %25 = call i32 @AMD_BIT(i32 %24)
  %26 = or i32 %23, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.udc*, %struct.udc** %2, align 8
  %29 = getelementptr inbounds %struct.udc, %struct.udc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @writel(i32 %27, i32* %31)
  %33 = load i32, i32* @UDC_EPINT_MSK_DISABLE_ALL, align 4
  %34 = load %struct.udc*, %struct.udc** %2, align 8
  %35 = getelementptr inbounds %struct.udc, %struct.udc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @writel(i32 %33, i32* %37)
  ret i32 0
}

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
