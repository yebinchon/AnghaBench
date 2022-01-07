; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_hub_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_hub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }
%struct.vhci_hcd = type { i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"hw accessible flag in on?\0A\00", align 1
@VHCI_NPORTS = common dso_local global i32 0, align 4
@PORT_C_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"port %d is changed\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"changed %d\0A\00", align 1
@HC_STATE_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @vhci_hub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_hub_status(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vhci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64*, i64** %8, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd* %14)
  store %struct.vhci_hcd* %15, %struct.vhci_hcd** %5, align 8
  %16 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %17 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %75

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @VHCI_NPORTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PORT_C_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, ...) @usbip_dbg_vhci_rh(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %47
  store i64 %50, i64* %48, align 8
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %41, %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HC_STATE_SUSPENDED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %65 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %64)
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @VHCI_NPORTS, align 4
  %71 = sdiv i32 %70, 8
  %72 = add nsw i32 1, %71
  store i32 %72, i32* %7, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %23
  %76 = load %struct.vhci_hcd*, %struct.vhci_hcd** %5, align 8
  %77 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %76, i32 0, i32 1
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_rh(i8*, ...) #1

declare dso_local i32 @usbip_uinfo(i8*, i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
