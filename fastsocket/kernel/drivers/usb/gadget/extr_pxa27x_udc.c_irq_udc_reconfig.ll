; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_irq_udc_reconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_irq_udc_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UDCCR = common dso_local global i32 0, align 4
@UDCISR1 = common dso_local global i32 0, align 4
@UDCISR1_IRCC = common dso_local global i32 0, align 4
@UDCCR_ACN = common dso_local global i32 0, align 4
@UDCCR_ACN_S = common dso_local global i32 0, align 4
@UDCCR_AIN = common dso_local global i32 0, align 4
@UDCCR_AIN_S = common dso_local global i32 0, align 4
@UDCCR_AAISN = common dso_local global i32 0, align 4
@UDCCR_AAISN_S = common dso_local global i32 0, align 4
@UDCCR_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @irq_udc_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_udc_reconfig(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %8 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %9 = load i32, i32* @UDCCR, align 4
  %10 = call i32 @udc_readl(%struct.pxa_udc* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %12 = load i32, i32* @UDCISR1, align 4
  %13 = load i32, i32* @UDCISR1_IRCC, align 4
  %14 = call i32 @udc_writel(%struct.pxa_udc* %11, i32 %12, i32 %13)
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %16 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @UDCCR_ACN, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @UDCCR_ACN_S, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %27 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pxa27x_change_configuration(%struct.pxa_udc* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @UDCCR_AIN, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @UDCCR_AIN_S, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UDCCR_AAISN, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @UDCCR_AAISN_S, align 4
  %43 = lshr i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pxa27x_change_interface(%struct.pxa_udc* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %52 = call i32 @update_pxa_ep_matches(%struct.pxa_udc* %51)
  br label %53

53:                                               ; preds = %50, %1
  %54 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %55 = load i32, i32* @UDCCR_SMAC, align 4
  %56 = call i32 @udc_set_mask_UDCCR(%struct.pxa_udc* %54, i32 %55)
  ret void
}

declare dso_local i32 @udc_readl(%struct.pxa_udc*, i32) #1

declare dso_local i32 @udc_writel(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @pxa27x_change_configuration(%struct.pxa_udc*, i32) #1

declare dso_local i32 @pxa27x_change_interface(%struct.pxa_udc*, i32, i32) #1

declare dso_local i32 @update_pxa_ep_matches(%struct.pxa_udc*) #1

declare dso_local i32 @udc_set_mask_UDCCR(%struct.pxa_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
