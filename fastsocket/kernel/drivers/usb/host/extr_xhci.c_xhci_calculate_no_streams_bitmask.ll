; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_calculate_no_streams_bitmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_calculate_no_streams_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EP_GETTING_NO_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"WARN Can't disable streams for endpoint 0x%x\0A, streams are being disabled already.\00", align 1
@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@EP_GETTING_STREAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"WARN Can't disable streams for endpoint 0x%x\0A, streams are already disabled!\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"WARN xhci_free_streams() called with non-streams endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32)* @xhci_calculate_no_streams_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_calculate_no_streams_bitmask(%struct.xhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_host_endpoint**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.usb_device* %1, %struct.usb_device** %7, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %107

27:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %102, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %8, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %33, i64 %35
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %36, align 8
  %38 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %37, i32 0, i32 0
  %39 = call i32 @xhci_get_endpoint_index(%struct.TYPE_7__* %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %41 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @EP_GETTING_NO_STREAMS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %32
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %60 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %8, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %60, i64 %62
  %64 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %63, align 8
  %65 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %59, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %5, align 4
  br label %107

69:                                               ; preds = %32
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @EP_HAS_STREAMS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @EP_GETTING_STREAMS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %81 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %8, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %81, i64 %83
  %85 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %84, align 8
  %86 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %80, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %91 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %90, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %107

92:                                               ; preds = %74, %69
  %93 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %93, i64 %95
  %97 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %96, align 8
  %98 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %97, i32 0, i32 0
  %99 = call i32 @xhci_get_endpoint_flag(%struct.TYPE_7__* %98)
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %28

105:                                              ; preds = %28
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %79, %58, %26
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @xhci_get_endpoint_index(%struct.TYPE_7__*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_get_endpoint_flag(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
