; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_neep_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_neep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.hwarc* }
%struct.hwarc = type { i32*, i32*, %struct.usb_interface* }
%struct.usb_interface = type { %struct.TYPE_4__*, %struct.device }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to allocate notification's read buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to allocate notification URB\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@hwarc_neep_cb = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot submit notification URB: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @hwarc_neep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwarc_neep_init(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.hwarc*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %11 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %10, i32 0, i32 0
  %12 = load %struct.hwarc*, %struct.hwarc** %11, align 8
  store %struct.hwarc* %12, %struct.hwarc** %4, align 8
  %13 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %14 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %13, i32 0, i32 2
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  store %struct.usb_interface* %15, %struct.usb_interface** %5, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %6, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 1
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %26, %struct.usb_endpoint_descriptor** %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @__get_free_page(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %32 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %34 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %95

40:                                               ; preds = %1
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @usb_alloc_urb(i32 0, i32 %41)
  %43 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %44 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %46 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %89

52:                                               ; preds = %40
  %53 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %54 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usb_rcvintpipe(%struct.usb_device* %57, i32 %60)
  %62 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %63 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @hwarc_neep_cb, align 4
  %67 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_fill_int_urb(i32* %55, %struct.usb_device* %56, i32 %61, i32* %64, i32 %65, i32 %66, %struct.hwarc* %67, i32 %70)
  %72 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %73 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32 @usb_submit_urb(i32* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %52
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %98

84:                                               ; preds = %79
  %85 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %86 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @usb_free_urb(i32* %87)
  br label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.hwarc*, %struct.hwarc** %4, align 8
  %91 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = call i32 @free_page(i64 %93)
  br label %95

95:                                               ; preds = %89, %37
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %83
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.usb_device*, i32, i32*, i32, i32, %struct.hwarc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
