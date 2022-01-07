; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }

@HC_ATL_IRQ_MASK_AND_REG = common dso_local global i64 0, align 8
@HC_ATL_IRQ_MASK_OR_REG = common dso_local global i64 0, align 8
@HC_INT_IRQ_MASK_AND_REG = common dso_local global i64 0, align 8
@HC_INT_IRQ_MASK_OR_REG = common dso_local global i64 0, align 8
@HC_ISO_IRQ_MASK_AND_REG = common dso_local global i64 0, align 8
@HC_ISO_IRQ_MASK_OR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @isp1760_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_enable_interrupts(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HC_ATL_IRQ_MASK_AND_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @isp1760_writel(i32 0, i64 %7)
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HC_ATL_IRQ_MASK_OR_REG, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @isp1760_writel(i32 0, i64 %13)
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HC_INT_IRQ_MASK_AND_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @isp1760_writel(i32 0, i64 %19)
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HC_INT_IRQ_MASK_OR_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @isp1760_writel(i32 0, i64 %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HC_ISO_IRQ_MASK_AND_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @isp1760_writel(i32 0, i64 %31)
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HC_ISO_IRQ_MASK_OR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @isp1760_writel(i32 -1, i64 %37)
  ret void
}

declare dso_local i32 @isp1760_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
