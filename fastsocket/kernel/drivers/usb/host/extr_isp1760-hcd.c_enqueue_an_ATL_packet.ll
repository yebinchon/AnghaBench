; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_an_ATL_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_enqueue_an_ATL_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }
%struct.isp1760_qh = type { i32 }
%struct.isp1760_qtd = type { i32, i32 }
%struct.isp1760_hcd = type { i32 }

@HC_ATL_PTD_SKIPMAP_REG = common dso_local global i64 0, align 8
@ATL_REGS_OFFSET = common dso_local global i32 0, align 4
@HC_ATL_IRQ_MASK_OR_REG = common dso_local global i64 0, align 8
@HC_BUFFER_STATUS_REG = common dso_local global i64 0, align 8
@ATL_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*)* @enqueue_an_ATL_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_an_ATL_packet(%struct.usb_hcd* %0, %struct.isp1760_qh* %1, %struct.isp1760_qtd* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.isp1760_qh*, align 8
  %6 = alloca %struct.isp1760_qtd*, align 8
  %7 = alloca %struct.isp1760_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.isp1760_qh* %1, %struct.isp1760_qh** %5, align 8
  store %struct.isp1760_qtd* %2, %struct.isp1760_qtd** %6, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %16 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %15)
  store %struct.isp1760_hcd* %16, %struct.isp1760_hcd** %7, align 8
  %17 = call i32 @ndelay(i32 195)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HC_ATL_PTD_SKIPMAP_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @isp1760_readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @__ffs(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @ATL_REGS_OFFSET, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %41 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %6, align 8
  %42 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @alloc_mem(%struct.isp1760_hcd* %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %7, align 8
  %48 = load %struct.isp1760_qh*, %struct.isp1760_qh** %5, align 8
  %49 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %6, align 8
  %50 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %6, align 8
  %54 = call i32 @enqueue_one_atl_qtd(i32 %45, i32 %46, %struct.isp1760_hcd* %47, %struct.isp1760_qh* %48, i32 %51, i32 %52, %struct.isp1760_qtd* %53)
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @HC_ATL_IRQ_MASK_OR_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @isp1760_readl(i64 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HC_ATL_IRQ_MASK_OR_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @isp1760_writel(i32 %64, i64 %69)
  %71 = load i32, i32* %10, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HC_ATL_PTD_SKIPMAP_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @isp1760_writel(i32 %75, i64 %80)
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %83 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HC_BUFFER_STATUS_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @isp1760_readl(i64 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* @ATL_BUFFER, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HC_BUFFER_STATUS_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @isp1760_writel(i32 %91, i64 %96)
  ret void
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @isp1760_readl(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @alloc_mem(%struct.isp1760_hcd*, i32) #1

declare dso_local i32 @enqueue_one_atl_qtd(i32, i32, %struct.isp1760_hcd*, %struct.isp1760_qh*, i32, i32, %struct.isp1760_qtd*) #1

declare dso_local i32 @isp1760_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
