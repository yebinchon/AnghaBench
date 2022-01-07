; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }

@HC_BUFFER_STATUS_REG = common dso_local global i64 0, align 8
@NO_TRANSFER_ACTIVE = common dso_local global i32 0, align 4
@HC_ATL_PTD_SKIPMAP_REG = common dso_local global i64 0, align 8
@HC_INT_PTD_SKIPMAP_REG = common dso_local global i64 0, align 8
@HC_ISO_PTD_SKIPMAP_REG = common dso_local global i64 0, align 8
@HC_ATL_PTD_DONEMAP_REG = common dso_local global i64 0, align 8
@HC_INT_PTD_DONEMAP_REG = common dso_local global i64 0, align 8
@HC_ISO_PTD_DONEMAP_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @isp1760_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_init_regs(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HC_BUFFER_STATUS_REG, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @isp1760_writel(i32 0, i64 %7)
  %9 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HC_ATL_PTD_SKIPMAP_REG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @isp1760_writel(i32 %9, i64 %14)
  %16 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HC_INT_PTD_SKIPMAP_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @isp1760_writel(i32 %16, i64 %21)
  %23 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HC_ISO_PTD_SKIPMAP_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @isp1760_writel(i32 %23, i64 %28)
  %30 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HC_ATL_PTD_DONEMAP_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @isp1760_writel(i32 %31, i64 %36)
  %38 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HC_INT_PTD_DONEMAP_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @isp1760_writel(i32 %39, i64 %44)
  %46 = load i32, i32* @NO_TRANSFER_ACTIVE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HC_ISO_PTD_DONEMAP_REG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @isp1760_writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @isp1760_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
