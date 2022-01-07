; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_pio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { %struct.pxa_udc* }
%struct.pxa_udc = type { i32 }

@UDCICR0 = common dso_local global i32 0, align 4
@UDCICR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*)* @pio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_irq_enable(%struct.pxa_ep* %0) #0 {
  %2 = alloca %struct.pxa_ep*, align 8
  %3 = alloca %struct.pxa_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %2, align 8
  %7 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %8 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %7, i32 0, i32 0
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %8, align 8
  store %struct.pxa_udc* %9, %struct.pxa_udc** %3, align 8
  %10 = load %struct.pxa_ep*, %struct.pxa_ep** %2, align 8
  %11 = call i32 @EPIDX(%struct.pxa_ep* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %13 = load i32, i32* @UDCICR0, align 4
  %14 = call i32 @udc_readl(%struct.pxa_udc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %16 = load i32, i32* @UDCICR1, align 4
  %17 = call i32 @udc_readl(%struct.pxa_udc* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %22 = load i32, i32* @UDCICR0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 2
  %26 = shl i32 3, %25
  %27 = or i32 %23, %26
  %28 = call i32 @udc_writel(%struct.pxa_udc* %21, i32 %22, i32 %27)
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %31 = load i32, i32* @UDCICR1, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 16
  %35 = mul nsw i32 %34, 2
  %36 = shl i32 3, %35
  %37 = or i32 %32, %36
  %38 = call i32 @udc_writel(%struct.pxa_udc* %30, i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %29, %20
  ret void
}

declare dso_local i32 @EPIDX(%struct.pxa_ep*) #1

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
