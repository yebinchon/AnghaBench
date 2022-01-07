; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.acm = type { %struct.TYPE_2__, %struct.usb_interface*, %struct.usb_interface*, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device = type { i32 }
%struct.tty_struct = type { i32 }

@open_mutex = common dso_local global i32 0, align 4
@dev_attr_wCountryCodes = common dso_local global i32 0, align 4
@dev_attr_iCountryCodeRelDate = common dso_local global i32 0, align 4
@dev_attr_bmCapabilities = common dso_local global i32 0, align 4
@acm_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @acm_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.acm*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.acm* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.acm* %7, %struct.acm** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %8)
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load %struct.acm*, %struct.acm** %3, align 8
  %11 = icmp ne %struct.acm* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %106

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @open_mutex)
  %15 = load %struct.acm*, %struct.acm** %3, align 8
  %16 = getelementptr inbounds %struct.acm, %struct.acm* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.acm*, %struct.acm** %3, align 8
  %21 = getelementptr inbounds %struct.acm, %struct.acm* %20, i32 0, i32 1
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = call i32 @device_remove_file(i32* %23, i32* @dev_attr_wCountryCodes)
  %25 = load %struct.acm*, %struct.acm** %3, align 8
  %26 = getelementptr inbounds %struct.acm, %struct.acm* %25, i32 0, i32 1
  %27 = load %struct.usb_interface*, %struct.usb_interface** %26, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 @device_remove_file(i32* %28, i32* @dev_attr_iCountryCodeRelDate)
  br label %30

30:                                               ; preds = %19, %13
  %31 = load %struct.acm*, %struct.acm** %3, align 8
  %32 = getelementptr inbounds %struct.acm, %struct.acm* %31, i32 0, i32 1
  %33 = load %struct.usb_interface*, %struct.usb_interface** %32, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 0
  %35 = call i32 @device_remove_file(i32* %34, i32* @dev_attr_bmCapabilities)
  %36 = load %struct.acm*, %struct.acm** %3, align 8
  %37 = getelementptr inbounds %struct.acm, %struct.acm* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.acm*, %struct.acm** %3, align 8
  %39 = getelementptr inbounds %struct.acm, %struct.acm* %38, i32 0, i32 1
  %40 = load %struct.usb_interface*, %struct.usb_interface** %39, align 8
  %41 = call i32 @usb_set_intfdata(%struct.usb_interface* %40, i32* null)
  %42 = load %struct.acm*, %struct.acm** %3, align 8
  %43 = getelementptr inbounds %struct.acm, %struct.acm* %42, i32 0, i32 2
  %44 = load %struct.usb_interface*, %struct.usb_interface** %43, align 8
  %45 = call i32 @usb_set_intfdata(%struct.usb_interface* %44, i32* null)
  %46 = load %struct.acm*, %struct.acm** %3, align 8
  %47 = call i32 @stop_data_traffic(%struct.acm* %46)
  %48 = load %struct.acm*, %struct.acm** %3, align 8
  %49 = call i32 @acm_write_buffers_free(%struct.acm* %48)
  %50 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %51 = load %struct.acm*, %struct.acm** %3, align 8
  %52 = getelementptr inbounds %struct.acm, %struct.acm* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acm*, %struct.acm** %3, align 8
  %55 = getelementptr inbounds %struct.acm, %struct.acm* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.acm*, %struct.acm** %3, align 8
  %58 = getelementptr inbounds %struct.acm, %struct.acm* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_buffer_free(%struct.usb_device* %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.acm*, %struct.acm** %3, align 8
  %62 = call i32 @acm_read_buffers_free(%struct.acm* %61)
  %63 = load %struct.acm*, %struct.acm** %3, align 8
  %64 = getelementptr inbounds %struct.acm, %struct.acm* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %30
  %68 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %69 = load %struct.acm*, %struct.acm** %3, align 8
  %70 = getelementptr inbounds %struct.acm, %struct.acm* %69, i32 0, i32 1
  %71 = load %struct.usb_interface*, %struct.usb_interface** %70, align 8
  %72 = icmp eq %struct.usb_interface* %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.acm*, %struct.acm** %3, align 8
  %75 = getelementptr inbounds %struct.acm, %struct.acm* %74, i32 0, i32 2
  %76 = load %struct.usb_interface*, %struct.usb_interface** %75, align 8
  br label %81

77:                                               ; preds = %67
  %78 = load %struct.acm*, %struct.acm** %3, align 8
  %79 = getelementptr inbounds %struct.acm, %struct.acm* %78, i32 0, i32 1
  %80 = load %struct.usb_interface*, %struct.usb_interface** %79, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi %struct.usb_interface* [ %76, %73 ], [ %80, %77 ]
  %83 = call i32 @usb_driver_release_interface(i32* @acm_driver, %struct.usb_interface* %82)
  br label %84

84:                                               ; preds = %81, %30
  %85 = load %struct.acm*, %struct.acm** %3, align 8
  %86 = getelementptr inbounds %struct.acm, %struct.acm* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.acm*, %struct.acm** %3, align 8
  %92 = call i32 @acm_tty_unregister(%struct.acm* %91)
  %93 = call i32 @mutex_unlock(i32* @open_mutex)
  br label %106

94:                                               ; preds = %84
  %95 = call i32 @mutex_unlock(i32* @open_mutex)
  %96 = load %struct.acm*, %struct.acm** %3, align 8
  %97 = getelementptr inbounds %struct.acm, %struct.acm* %96, i32 0, i32 0
  %98 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_2__* %97)
  store %struct.tty_struct* %98, %struct.tty_struct** %5, align 8
  %99 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %100 = icmp ne %struct.tty_struct* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %103 = call i32 @tty_hangup(%struct.tty_struct* %102)
  %104 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %105 = call i32 @tty_kref_put(%struct.tty_struct* %104)
  br label %106

106:                                              ; preds = %12, %90, %101, %94
  ret void
}

declare dso_local %struct.acm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @stop_data_traffic(%struct.acm*) #1

declare dso_local i32 @acm_write_buffers_free(%struct.acm*) #1

declare dso_local i32 @usb_buffer_free(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @acm_read_buffers_free(%struct.acm*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @acm_tty_unregister(%struct.acm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_2__*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
