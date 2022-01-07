; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, %struct.cxacru_data* }
%struct.cxacru_data = type { i32, i32, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.cxacru_modem_type*, %struct.usbatm_data* }
%struct.cxacru_modem_type = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cxacru_bind: no memory for instance data\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CXPOLL_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cxacru_bind: no memory for rcv_buf\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cxacru_bind: no memory for snd_buf\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"cxacru_bind: no memory for rcv_urb\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"cxacru_bind: no memory for snd_urb\00", align 1
@CXACRU_EP_CMD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@cxacru_blocking_completion = common dso_local global i32 0, align 4
@cxacru_poll_status = common dso_local global i32 0, align 4
@UDSL_SKIP_HEAVY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*, %struct.usb_device_id*)* @cxacru_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_bind(%struct.usbatm_data* %0, %struct.usb_interface* %1, %struct.usb_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbatm_data*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_device_id*, align 8
  %8 = alloca %struct.cxacru_data*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store %struct.usb_device_id* %2, %struct.usb_device_id** %7, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cxacru_data* @kzalloc(i32 88, i32 %13)
  store %struct.cxacru_data* %14, %struct.cxacru_data** %8, align 8
  %15 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %16 = icmp ne %struct.cxacru_data* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %170

21:                                               ; preds = %3
  %22 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %23 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %24 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %23, i32 0, i32 14
  store %struct.usbatm_data* %22, %struct.usbatm_data** %24, align 8
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %7, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cxacru_modem_type*
  %29 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %30 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %29, i32 0, i32 13
  store %struct.cxacru_modem_type* %28, %struct.cxacru_modem_type** %30, align 8
  %31 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %32 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %31, i32 0, i32 12
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load i32, i32* @CXPOLL_STOPPED, align 4
  %35 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %36 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %38 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  %39 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %40 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  %41 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %42 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %41, i32 0, i32 10
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64 @__get_free_page(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %48 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %50 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %21
  %54 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %148

57:                                               ; preds = %21
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i64 @__get_free_page(i32 %58)
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %62 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %61, i32 0, i32 5
  store i32* %60, i32** %62, align 8
  %63 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %64 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %148

71:                                               ; preds = %57
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @usb_alloc_urb(i32 0, i32 %72)
  %74 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %75 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %77 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %148

84:                                               ; preds = %71
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @usb_alloc_urb(i32 0, i32 %85)
  %87 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %88 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %90 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %94 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %148

97:                                               ; preds = %84
  %98 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %99 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %102 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %103 = load i32, i32* @CXACRU_EP_CMD, align 4
  %104 = call i32 @usb_rcvintpipe(%struct.usb_device* %102, i32 %103)
  %105 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %106 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @PAGE_SIZE, align 4
  %109 = load i32, i32* @cxacru_blocking_completion, align 4
  %110 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %111 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %110, i32 0, i32 9
  %112 = call i32 @usb_fill_int_urb(i8* %100, %struct.usb_device* %101, i32 %104, i32* %107, i32 %108, i32 %109, i32* %111, i32 1)
  %113 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %114 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %117 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %118 = load i32, i32* @CXACRU_EP_CMD, align 4
  %119 = call i32 @usb_sndintpipe(%struct.usb_device* %117, i32 %118)
  %120 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %121 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* @cxacru_blocking_completion, align 4
  %125 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %126 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %125, i32 0, i32 8
  %127 = call i32 @usb_fill_int_urb(i8* %115, %struct.usb_device* %116, i32 %119, i32* %122, i32 %123, i32 %124, i32* %126, i32 4)
  %128 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %129 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %128, i32 0, i32 7
  %130 = call i32 @mutex_init(i32* %129)
  %131 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %132 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %131, i32 0, i32 6
  %133 = load i32, i32* @cxacru_poll_status, align 4
  %134 = call i32 @INIT_DELAYED_WORK(i32* %132, i32 %133)
  %135 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %136 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %137 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %136, i32 0, i32 1
  store %struct.cxacru_data* %135, %struct.cxacru_data** %137, align 8
  %138 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %139 = call i64 @cxacru_card_status(%struct.cxacru_data* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %97
  br label %144

142:                                              ; preds = %97
  %143 = load i32, i32* @UDSL_SKIP_HEAVY_INIT, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ 0, %141 ], [ %143, %142 ]
  %146 = load %struct.usbatm_data*, %struct.usbatm_data** %5, align 8
  %147 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %4, align 4
  br label %170

148:                                              ; preds = %93, %80, %67, %53
  %149 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %150 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = ptrtoint i32* %151 to i64
  %153 = call i32 @free_page(i64 %152)
  %154 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %155 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = ptrtoint i32* %156 to i64
  %158 = call i32 @free_page(i64 %157)
  %159 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %160 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @usb_free_urb(i8* %161)
  %163 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %164 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @usb_free_urb(i8* %165)
  %167 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %168 = call i32 @kfree(%struct.cxacru_data* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %148, %144, %17
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.cxacru_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i8*, %struct.usb_device*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @cxacru_card_status(%struct.cxacru_data*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @usb_free_urb(i8*) #1

declare dso_local i32 @kfree(%struct.cxacru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
