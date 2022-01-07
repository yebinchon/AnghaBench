; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_isp1760_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i64, i32 }
%struct.isp1760_hcd = type { i32 }

@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@HC_HW_MODE_CTRL = common dso_local global i64 0, align 8
@HW_GLOBAL_INTR_EN = common dso_local global i32 0, align 4
@HC_USBCMD = common dso_local global i64 0, align 8
@CMD_LRESET = common dso_local global i32 0, align 4
@CMD_RESET = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@FLAG_CF = common dso_local global i32 0, align 4
@HC_CONFIGFLAG = common dso_local global i64 0, align 8
@HC_CHIP_ID_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"USB ISP %04x HW rev. %d started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @isp1760_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.isp1760_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %9)
  store %struct.isp1760_hcd* %10, %struct.isp1760_hcd** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @HC_STATE_RUNNING, align 4
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call i32 @isp1760_enable_interrupts(%struct.usb_hcd* %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HC_HW_MODE_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @isp1760_readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HW_GLOBAL_INTR_EN, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HC_HW_MODE_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @isp1760_writel(i32 %26, i64 %31)
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HC_USBCMD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @isp1760_readl(i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @CMD_LRESET, align 4
  %40 = load i32, i32* @CMD_RESET, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @CMD_RUN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HC_USBCMD, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @isp1760_writel(i32 %48, i64 %53)
  %55 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HC_USBCMD, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @CMD_RUN, align 4
  %62 = load i32, i32* @CMD_RUN, align 4
  %63 = call i32 @handshake(%struct.isp1760_hcd* %55, i64 %60, i32 %61, i32 %62, i32 250000)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %1
  %69 = call i32 @down_write(i32* @ehci_cf_port_reset_rwsem)
  %70 = load i32, i32* @FLAG_CF, align 4
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HC_CONFIGFLAG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @isp1760_writel(i32 %70, i64 %75)
  %77 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HC_CONFIGFLAG, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* @FLAG_CF, align 4
  %84 = load i32, i32* @FLAG_CF, align 4
  %85 = call i32 @handshake(%struct.isp1760_hcd* %77, i64 %82, i32 %83, i32 %84, i32 250000)
  store i32 %85, i32* %5, align 4
  %86 = call i32 @up_write(i32* @ehci_cf_port_reset_rwsem)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %106

91:                                               ; preds = %68
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @HC_CHIP_ID_REG, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @isp1760_readl(i64 %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 65535
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 16
  %103 = call i32 @isp1760_info(%struct.isp1760_hcd* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %102)
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %105 = call i32 @isp1760_init_maps(%struct.usb_hcd* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %91, %89, %66
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @isp1760_enable_interrupts(%struct.usb_hcd*) #1

declare dso_local i32 @isp1760_readl(i64) #1

declare dso_local i32 @isp1760_writel(i32, i64) #1

declare dso_local i32 @handshake(%struct.isp1760_hcd*, i64, i32, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @isp1760_info(%struct.isp1760_hcd*, i8*, i32, i32) #1

declare dso_local i32 @isp1760_init_maps(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
