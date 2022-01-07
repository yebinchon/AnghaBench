; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_alloc_qh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_alloc_qh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_qh = type { i32, i32, i32, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i8*, i8*, i32 }
%struct.uhci_hcd = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_3__, %struct.uhci_qh* }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@UHCI_PTR_TERM = common dso_local global i8* null, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@QH_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uhci_qh* (%struct.uhci_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)* @uhci_alloc_qh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uhci_qh* @uhci_alloc_qh(%struct.uhci_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint* %2) #0 {
  %4 = alloca %struct.uhci_qh*, align 8
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uhci_qh*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %7, align 8
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.uhci_qh* @dma_pool_alloc(i32 %12, i32 %13, i32* %8)
  store %struct.uhci_qh* %14, %struct.uhci_qh** %9, align 8
  %15 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %16 = icmp ne %struct.uhci_qh* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.uhci_qh* null, %struct.uhci_qh** %4, align 8
  br label %122

18:                                               ; preds = %3
  %19 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %20 = call i32 @memset(%struct.uhci_qh* %19, i32 0, i32 72)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %23 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @UHCI_PTR_TERM, align 8
  %25 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %26 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @UHCI_PTR_TERM, align 8
  %28 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %29 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %31 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %30, i32 0, i32 7
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %34 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %33, i32 0, i32 6
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = icmp ne %struct.usb_device* %36, null
  br i1 %37, label %38, label %114

38:                                               ; preds = %18
  %39 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %39, i32 0, i32 0
  %41 = call i32 @usb_endpoint_type(%struct.TYPE_3__* %40)
  %42 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %43 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %45 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %51 = call i32 @uhci_alloc_td(%struct.uhci_hcd* %50)
  %52 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %53 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %55 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %49
  %59 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %60 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dma_pool_free(i32 %61, %struct.uhci_qh* %62, i32 %63)
  store %struct.uhci_qh* null, %struct.uhci_qh** %4, align 8
  br label %122

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* @QH_STATE_IDLE, align 4
  %68 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %69 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %71 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %72 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %71, i32 0, i32 4
  store %struct.usb_host_endpoint* %70, %struct.usb_host_endpoint** %72, align 8
  %73 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %74 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %75 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %74, i32 0, i32 3
  store %struct.usb_device* %73, %struct.usb_device** %75, align 8
  %76 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %78 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %77, i32 0, i32 1
  store %struct.uhci_qh* %76, %struct.uhci_qh** %78, align 8
  %79 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %80 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %66
  %85 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %86 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %84, %66
  %91 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %95 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %94, i32 0, i32 0
  %96 = call i32 @usb_endpoint_dir_in(%struct.TYPE_3__* %95)
  %97 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %98 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %104 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = call i32 @usb_calc_bus_time(i32 %93, i32 %96, i32 %102, i32 %107)
  %109 = sdiv i32 %108, 1000
  %110 = add nsw i32 %109, 1
  %111 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %112 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %90, %84
  br label %120

114:                                              ; preds = %18
  %115 = load i32, i32* @QH_STATE_ACTIVE, align 4
  %116 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %117 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  %119 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %118, i32 0, i32 0
  store i32 -1, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %113
  %121 = load %struct.uhci_qh*, %struct.uhci_qh** %9, align 8
  store %struct.uhci_qh* %121, %struct.uhci_qh** %4, align 8
  br label %122

122:                                              ; preds = %120, %58, %17
  %123 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  ret %struct.uhci_qh* %123
}

declare dso_local %struct.uhci_qh* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.uhci_qh*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_endpoint_type(%struct.TYPE_3__*) #1

declare dso_local i32 @uhci_alloc_td(%struct.uhci_hcd*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.uhci_qh*, i32) #1

declare dso_local i32 @usb_calc_bus_time(i32, i32, i32, i32) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.TYPE_3__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
