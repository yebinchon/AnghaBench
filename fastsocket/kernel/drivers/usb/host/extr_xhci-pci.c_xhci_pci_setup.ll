; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_hcd = type { i64 }
%struct.pci_dev = type { i32 }

@xhci_pci_quirks = common dso_local global i32 0, align 4
@XHCI_SBRN_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Got SBRN %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @xhci_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = load i32, i32* @xhci_pci_quirks, align 4
  %14 = call i32 @xhci_gen_setup(%struct.usb_hcd* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %20)
  store %struct.xhci_hcd* %21, %struct.xhci_hcd** %4, align 8
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %23 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %49

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* @XHCI_SBRN_OFFSET, align 4
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 0
  %31 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 %28, i64* %30)
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %34 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @xhci_dbg(%struct.xhci_hcd* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i32 @xhci_pci_reinit(%struct.xhci_hcd* %38, %struct.pci_dev* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = call i32 @kfree(%struct.xhci_hcd* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %43, %25, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @xhci_gen_setup(%struct.usb_hcd*, i32) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @xhci_pci_reinit(%struct.xhci_hcd*, %struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
