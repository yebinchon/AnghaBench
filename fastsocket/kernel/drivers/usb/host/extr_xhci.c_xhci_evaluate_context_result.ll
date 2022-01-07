; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_evaluate_context_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_evaluate_context_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { i32 }
%struct.usb_device = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"WARN: xHCI driver setup invalid evaluate context command.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"WARN: slot not enabled forevaluate context command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"WARN: invalid context state for evaluate context command.\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"ERROR: Incompatible device for evaluate context command.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"WARN: Max Exit Latency too large\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Successful evaluate context command\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ERROR: unexpected command completion code 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, i32*)* @xhci_evaluate_context_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_evaluate_context_result(%struct.xhci_hcd* %0, %struct.usb_device* %1, i32* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 0
  %11 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %10, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %11, i64 %14
  %16 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  store %struct.xhci_virt_device* %16, %struct.xhci_virt_device** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %58 [
    i32 130, label %19
    i32 131, label %25
    i32 133, label %31
    i32 132, label %42
    i32 129, label %48
    i32 128, label %54
  ]

19:                                               ; preds = %3
  %20 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 1
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %65

31:                                               ; preds = %3
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %36 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %37 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xhci_dbg_ctx(%struct.xhci_hcd* %35, i32 %38, i32 1)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %65

42:                                               ; preds = %3
  %43 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 1
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %65

48:                                               ; preds = %3
  %49 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 1
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %65

54:                                               ; preds = %3
  %55 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 1
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %65

58:                                               ; preds = %3
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xhci_err(%struct.xhci_hcd* %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %58, %54, %48, %42, %31, %25, %19
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @xhci_dbg_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
