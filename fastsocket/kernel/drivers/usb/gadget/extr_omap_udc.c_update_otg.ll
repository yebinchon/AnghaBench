; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_update_otg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_update_otg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OTG_CTRL = common dso_local global i32 0, align 4
@OTG_ID = common dso_local global i32 0, align 4
@UDC_DEVSTAT = common dso_local global i32 0, align 4
@UDC_B_HNP_ENABLE = common dso_local global i32 0, align 4
@UDC_A_HNP_SUPPORT = common dso_local global i32 0, align 4
@UDC_A_ALT_HNP_SUPPORT = common dso_local global i32 0, align 4
@OTG_B_HNPEN = common dso_local global i32 0, align 4
@OTG_B_BUSREQ = common dso_local global i32 0, align 4
@OTG_PULLUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_udc*)* @update_otg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_otg(%struct.omap_udc* %0) #0 {
  %2 = alloca %struct.omap_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.omap_udc* %0, %struct.omap_udc** %2, align 8
  %5 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %6 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %5, i32 0, i32 0
  %7 = call i32 @gadget_is_otg(%struct.TYPE_2__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load i32, i32* @OTG_CTRL, align 4
  %12 = call i32 @omap_readl(i32 %11)
  %13 = load i32, i32* @OTG_ID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @UDC_DEVSTAT, align 4
  %18 = call i32 @omap_readw(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UDC_B_HNP_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %29 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @UDC_A_HNP_SUPPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %39 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @UDC_A_ALT_HNP_SUPPORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %49 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.omap_udc*, %struct.omap_udc** %2, align 8
  %52 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %20
  %57 = load i32, i32* @OTG_CTRL, align 4
  %58 = call i32 @omap_readl(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @OTG_B_HNPEN, align 4
  %60 = load i32, i32* @OTG_B_BUSREQ, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @OTG_PULLUP, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @OTG_CTRL, align 4
  %70 = call i32 @omap_writel(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %9, %56, %20
  ret void
}

declare dso_local i32 @gadget_is_otg(%struct.TYPE_2__*) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
