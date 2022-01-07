; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.usb_device = type { i32 }

@hfa384x_usbctlx_reaper_task = common dso_local global i32 0, align 4
@hfa384x_usbctlx_completion_task = common dso_local global i32 0, align 4
@prism2sta_processing_defer = common dso_local global i32 0, align 4
@hfa384x_usb_defer = common dso_local global i32 0, align 4
@hfa384x_usb_throttlefn = common dso_local global i32 0, align 4
@hfa384x_usbctlx_resptimerfn = common dso_local global i32 0, align 4
@hfa384x_usbctlx_reqtimerfn = common dso_local global i32 0, align 4
@HFA384x_LINK_NOTCONNECTED = common dso_local global i32 0, align 4
@HFA384x_STATE_INIT = common dso_local global i32 0, align 4
@prism2sta_commsqual_defer = common dso_local global i32 0, align 4
@prism2sta_commsqual_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfa384x_create(%struct.TYPE_7__* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @memset(%struct.TYPE_7__* %5, i32 0, i32 152)
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 19
  store %struct.usb_device* %7, %struct.usb_device** %9, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %10, i32 1)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 18
  store i32 %11, i32* %13, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %15 = call i32 @usb_sndbulkpipe(%struct.usb_device* %14, i32 2)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 17
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 16
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 15
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 15
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 14
  %43 = call i32 @skb_queue_head_init(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 13
  %46 = load i32, i32* @hfa384x_usbctlx_reaper_task, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = ptrtoint %struct.TYPE_7__* %47 to i64
  %49 = call i32 @tasklet_init(i32* %45, i32 %46, i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 12
  %52 = load i32, i32* @hfa384x_usbctlx_completion_task, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = ptrtoint %struct.TYPE_7__* %53 to i64
  %55 = call i32 @tasklet_init(i32* %51, i32 %52, i64 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 11
  %58 = load i32, i32* @prism2sta_processing_defer, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 10
  %62 = load i32, i32* @hfa384x_usb_defer, align 4
  %63 = call i32 @INIT_WORK(i32* %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 9
  %66 = call i32 @init_timer(%struct.TYPE_8__* %65)
  %67 = load i32, i32* @hfa384x_usb_throttlefn, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = ptrtoint %struct.TYPE_7__* %71 to i64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 8
  %78 = call i32 @init_timer(%struct.TYPE_8__* %77)
  %79 = load i32, i32* @hfa384x_usbctlx_resptimerfn, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = ptrtoint %struct.TYPE_7__* %83 to i64
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 7
  %90 = call i32 @init_timer(%struct.TYPE_8__* %89)
  %91 = load i32, i32* @hfa384x_usbctlx_reqtimerfn, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = ptrtoint %struct.TYPE_7__* %95 to i64
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 6
  %102 = call i32 @usb_init_urb(i32* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = call i32 @usb_init_urb(i32* %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = call i32 @usb_init_urb(i32* %107)
  %109 = load i32, i32* @HFA384x_LINK_NOTCONNECTED, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @HFA384x_STATE_INIT, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* @prism2sta_commsqual_defer, align 4
  %118 = call i32 @INIT_WORK(i32* %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @init_timer(%struct.TYPE_8__* %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = ptrtoint %struct.TYPE_7__* %122 to i64
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load i32, i32* @prism2sta_commsqual_timer, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_init_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
