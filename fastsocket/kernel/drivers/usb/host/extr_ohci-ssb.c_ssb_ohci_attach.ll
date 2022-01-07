; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ssb.c_ssb_ohci_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-ssb.c_ssb_ohci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ssb_ohci_device = type { i32 }
%struct.usb_hcd = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SSB_DEV_USB11_HOSTDEV = common dso_local global i64 0, align 8
@SSB_OHCI_TMSLOW_HOSTMODE = common dso_local global i32 0, align 4
@ssb_ohci_hc_driver = common dso_local global i32 0, align 4
@SSB_ADMATCH0 = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*)* @ssb_ohci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_ohci_attach(%struct.ssb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_ohci_device*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSB_DEV_USB11_HOSTDEV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @SSB_OHCI_TMSLOW_HOSTMODE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ssb_device_enable(%struct.ssb_device* %22, i32 %23)
  %25 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %29 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_name(i32 %30)
  %32 = call %struct.usb_hcd* @usb_create_hcd(i32* @ssb_ohci_hc_driver, i32 %27, i32 %31)
  store %struct.usb_hcd* %32, %struct.usb_hcd** %5, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = icmp ne %struct.usb_hcd* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %92

36:                                               ; preds = %21
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %38 = call %struct.ssb_ohci_device* @hcd_to_ssb_ohci(%struct.usb_hcd* %37)
  store %struct.ssb_ohci_device* %38, %struct.ssb_ohci_device** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ssb_ohci_device*, %struct.ssb_ohci_device** %4, align 8
  %41 = getelementptr inbounds %struct.ssb_ohci_device, %struct.ssb_ohci_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %43 = load i32, i32* @SSB_ADMATCH0, align 4
  %44 = call i32 @ssb_read32(%struct.ssb_device* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ssb_admatch_base(i32 %45)
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @ssb_admatch_size(i32 %49)
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ioremap_nocache(i32 %55, i32 %58)
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %61 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %63 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %36
  br label %89

67:                                               ; preds = %36
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %69 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %70 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IRQF_DISABLED, align 4
  %73 = load i32, i32* @IRQF_SHARED, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @usb_add_hcd(%struct.usb_hcd* %68, i32 %71, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %84

79:                                               ; preds = %67
  %80 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %82 = call i32 @ssb_set_drvdata(%struct.ssb_device* %80, %struct.usb_hcd* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %97

84:                                               ; preds = %78
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %86 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @iounmap(i32 %87)
  br label %89

89:                                               ; preds = %84, %66
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %91 = call i32 @usb_put_hcd(%struct.usb_hcd* %90)
  br label %92

92:                                               ; preds = %89, %35
  %93 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ssb_device_disable(%struct.ssb_device* %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %79
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ssb_device_enable(%struct.ssb_device*, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.ssb_ohci_device* @hcd_to_ssb_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_admatch_base(i32) #1

declare dso_local i32 @ssb_admatch_size(i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @ssb_set_drvdata(%struct.ssb_device*, %struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @ssb_device_disable(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
