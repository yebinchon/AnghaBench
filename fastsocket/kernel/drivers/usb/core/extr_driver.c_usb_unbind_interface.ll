; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_unbind_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_unbind_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_driver = type { i32 (%struct.usb_interface*)*, i32 }
%struct.usb_interface = type { i32, i64, i32, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.usb_device = type { i32 }

@USB_INTERFACE_UNBINDING = common dso_local global i32 0, align 4
@DPM_ON = common dso_local global i64 0, align 8
@USB_INTERFACE_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @usb_unbind_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_unbind_interface(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_driver*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_driver* @to_usb_driver(i32 %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %3, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call %struct.usb_interface* @to_usb_interface(%struct.device* %13)
  store %struct.usb_interface* %14, %struct.usb_interface** %4, align 8
  %15 = load i32, i32* @USB_INTERFACE_UNBINDING, align 4
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %18)
  store %struct.usb_device* %19, %struct.usb_device** %5, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %21 = call i32 @usb_autoresume_device(%struct.usb_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = call i32 @usb_unlocked_disable_lpm(%struct.usb_device* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %25 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = call i32 @usb_disable_interface(%struct.usb_device* %29, %struct.usb_interface* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %34 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %34, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = call i32 %35(%struct.usb_interface* %36)
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = call i32 @usb_cancel_queued_reset(%struct.usb_interface* %38)
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = call i32 @usb_enable_interface(%struct.usb_device* %48, %struct.usb_interface* %49, i32 0)
  br label %82

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DPM_ON, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 3
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_set_interface(%struct.usb_device* %63, i32 %70, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %76 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %62
  br label %81

78:                                               ; preds = %54, %51
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %84 = call i32 @usb_set_intfdata(%struct.usb_interface* %83, i32* null)
  %85 = load i32, i32* @USB_INTERFACE_UNBOUND, align 4
  %86 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %87 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = call i32 @mark_quiesced(%struct.usb_interface* %88)
  %90 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %91 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %82
  %95 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %96 = call i32 @usb_unlocked_enable_lpm(%struct.usb_device* %95)
  br label %97

97:                                               ; preds = %94, %82
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %102 = call i32 @usb_autosuspend_device(%struct.usb_device* %101)
  br label %103

103:                                              ; preds = %100, %97
  ret i32 0
}

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_autoresume_device(%struct.usb_device*) #1

declare dso_local i32 @usb_unlocked_disable_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_disable_interface(%struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local i32 @usb_cancel_queued_reset(%struct.usb_interface*) #1

declare dso_local i32 @usb_enable_interface(%struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mark_quiesced(%struct.usb_interface*) #1

declare dso_local i32 @usb_unlocked_enable_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_autosuspend_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
