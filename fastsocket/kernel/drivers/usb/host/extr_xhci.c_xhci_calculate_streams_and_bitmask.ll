; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_calculate_streams_and_bitmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_calculate_streams_and_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_4__, %struct.usb_host_ss_ep_comp* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_host_ss_ep_comp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Ep 0x%x only supports %u stream IDs.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32*, i32*)* @xhci_calculate_streams_and_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_calculate_streams_and_bitmask(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.usb_host_ss_ep_comp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %93, %6
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %19
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %26 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %27 = load i32, i32* %17, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %26, i64 %28
  %30 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %29, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xhci_check_streams_endpoint(%struct.xhci_hcd* %24, %struct.usb_device* %25, %struct.usb_host_endpoint* %30, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %7, align 4
  br label %97

39:                                               ; preds = %23
  %40 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %40, i64 %42
  %44 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %43, align 8
  %45 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %44, i32 0, i32 1
  %46 = load %struct.usb_host_ss_ep_comp*, %struct.usb_host_ss_ep_comp** %45, align 8
  store %struct.usb_host_ss_ep_comp* %46, %struct.usb_host_ss_ep_comp** %14, align 8
  %47 = load %struct.usb_host_ss_ep_comp*, %struct.usb_host_ss_ep_comp** %14, align 8
  %48 = getelementptr inbounds %struct.usb_host_ss_ep_comp, %struct.usb_host_ss_ep_comp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @USB_SS_MAX_STREAMS(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %54, 1
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %39
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %59 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %59, i64 %61
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %62, align 8
  %64 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @xhci_dbg(%struct.xhci_hcd* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, 1
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %57, %39
  %73 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %10, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %73, i64 %75
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %76, align 8
  %78 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %77, i32 0, i32 0
  %79 = call i32 @xhci_get_endpoint_flag(%struct.TYPE_4__* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %97

88:                                               ; preds = %72
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %19

96:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %85, %37
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @xhci_check_streams_endpoint(%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*, i32) #1

declare dso_local i32 @USB_SS_MAX_STREAMS(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32) #1

declare dso_local i32 @xhci_get_endpoint_flag(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
