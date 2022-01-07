; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-nep.c_wa_nep_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-nep.c_wa_nep_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32*, i32*, i32 }
%struct.usb_interface = type { %struct.TYPE_4__*, %struct.device }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to allocate notification's read buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to allocate notification URB\0A\00", align 1
@wa_nep_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot submit notification URB: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wa_nep_create(%struct.wahc* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wahc*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %8, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.wahc*, %struct.wahc** %4, align 8
  %15 = getelementptr inbounds %struct.wahc, %struct.wahc* %14, i32 0, i32 3
  %16 = call i32 @edc_init(i32* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %23, %struct.usb_endpoint_descriptor** %7, align 8
  %24 = load %struct.wahc*, %struct.wahc** %4, align 8
  %25 = getelementptr inbounds %struct.wahc, %struct.wahc* %24, i32 0, i32 0
  store i32 1024, i32* %25, align 8
  %26 = load %struct.wahc*, %struct.wahc** %4, align 8
  %27 = getelementptr inbounds %struct.wahc, %struct.wahc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmalloc(i32 %28, i32 %29)
  %31 = load %struct.wahc*, %struct.wahc** %4, align 8
  %32 = getelementptr inbounds %struct.wahc, %struct.wahc* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.wahc*, %struct.wahc** %4, align 8
  %34 = getelementptr inbounds %struct.wahc, %struct.wahc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %94

40:                                               ; preds = %2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @usb_alloc_urb(i32 0, i32 %41)
  %43 = load %struct.wahc*, %struct.wahc** %4, align 8
  %44 = getelementptr inbounds %struct.wahc, %struct.wahc* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.wahc*, %struct.wahc** %4, align 8
  %46 = getelementptr inbounds %struct.wahc, %struct.wahc* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %89

52:                                               ; preds = %40
  %53 = load %struct.wahc*, %struct.wahc** %4, align 8
  %54 = getelementptr inbounds %struct.wahc, %struct.wahc* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usb_rcvintpipe(%struct.usb_device* %57, i32 %60)
  %62 = load %struct.wahc*, %struct.wahc** %4, align 8
  %63 = getelementptr inbounds %struct.wahc, %struct.wahc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.wahc*, %struct.wahc** %4, align 8
  %66 = getelementptr inbounds %struct.wahc, %struct.wahc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @wa_nep_cb, align 4
  %69 = load %struct.wahc*, %struct.wahc** %4, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_fill_int_urb(i32* %55, %struct.usb_device* %56, i32 %61, i32* %64, i32 %67, i32 %68, %struct.wahc* %69, i32 %72)
  %74 = load %struct.wahc*, %struct.wahc** %4, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @wa_nep_arm(%struct.wahc* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %52
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %97

84:                                               ; preds = %79
  %85 = load %struct.wahc*, %struct.wahc** %4, align 8
  %86 = getelementptr inbounds %struct.wahc, %struct.wahc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @usb_free_urb(i32* %87)
  br label %89

89:                                               ; preds = %84, %49
  %90 = load %struct.wahc*, %struct.wahc** %4, align 8
  %91 = getelementptr inbounds %struct.wahc, %struct.wahc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @kfree(i32* %92)
  br label %94

94:                                               ; preds = %89, %37
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %83
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @edc_init(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.usb_device*, i32, i32*, i32, i32, %struct.wahc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @wa_nep_arm(%struct.wahc*, i32) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
