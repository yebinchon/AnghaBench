; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_imx_udc.c_imx_udc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_udc_struct = type { i64 }

@USB_ENAB = common dso_local global i64 0, align 8
@ENAB_RST = common dso_local global i32 0, align 4
@USB_DADR = common dso_local global i64 0, align 8
@DADR_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_udc_reset(%struct.imx_udc_struct* %0) #0 {
  %2 = alloca %struct.imx_udc_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.imx_udc_struct* %0, %struct.imx_udc_struct** %2, align 8
  %4 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %5 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_ENAB, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ENAB_RST, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %14 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_ENAB, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @__raw_writel(i32 %12, i64 %17)
  br label %19

19:                                               ; preds = %20, %1
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %22 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_ENAB, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  %27 = load i32, i32* @ENAB_RST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %32, %30
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.imx_udc_struct*, %struct.imx_udc_struct** %2, align 8
  %34 = getelementptr inbounds %struct.imx_udc_struct, %struct.imx_udc_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_DADR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @__raw_readl(i64 %37)
  %39 = load i32, i32* @DADR_CFG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %31, label %43

43:                                               ; preds = %32
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
