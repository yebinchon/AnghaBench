; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_line6_toneport = type { i32, i32, %struct.usb_line6 }
%struct.usb_line6 = type { %struct.usb_device* }
%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@toneport_pcm_properties = common dso_local global i32 0, align 4
@LINE6_DEVID_GUITARPORT = common dso_local global i64 0, align 8
@dev_attr_led_red = common dso_local global i32 0, align 4
@dev_attr_led_green = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @toneport_init(%struct.usb_interface* %0, %struct.usb_line6_toneport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_line6_toneport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_line6*, align 8
  %9 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_line6_toneport* %1, %struct.usb_line6_toneport** %5, align 8
  %10 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %5, align 8
  %11 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %10, i32 0, i32 2
  store %struct.usb_line6* %11, %struct.usb_line6** %8, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = icmp eq %struct.usb_interface* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %5, align 8
  %16 = icmp eq %struct.usb_line6_toneport* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %22 = call i32 @line6_init_audio(%struct.usb_line6* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = call i32 @toneport_destruct(%struct.usb_interface* %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %20
  %30 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %31 = call i32 @line6_init_pcm(%struct.usb_line6* %30, i32* @toneport_pcm_properties)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = call i32 @toneport_destruct(%struct.usb_interface* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %84

38:                                               ; preds = %29
  %39 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %40 = call i32 @line6_register_audio(%struct.usb_line6* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %45 = call i32 @toneport_destruct(%struct.usb_interface* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %84

47:                                               ; preds = %38
  %48 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %49 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %48, i32 0, i32 0
  %50 = load %struct.usb_device*, %struct.usb_device** %49, align 8
  store %struct.usb_device* %50, %struct.usb_device** %9, align 8
  %51 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %52 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %5, align 8
  %53 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %52, i32 0, i32 1
  %54 = call i32 @line6_read_serial_number(%struct.usb_line6* %51, i32* %53)
  %55 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %56 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %5, align 8
  %57 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %56, i32 0, i32 0
  %58 = call i32 @line6_read_data(%struct.usb_line6* %55, i32 32962, i32* %57, i32 1)
  %59 = call i64 (...) @get_seconds()
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.usb_line6*, %struct.usb_line6** %8, align 8
  %62 = call i32 @line6_write_data(%struct.usb_line6* %61, i32 32966, i32* %7, i32 4)
  %63 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %64 = call i32 @toneport_send_cmd(%struct.usb_device* %63, i32 769, i32 0)
  %65 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LINE6_DEVID_GUITARPORT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %47
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = call i32 @device_create_file(i32* %73, i32* @dev_attr_led_red)
  %75 = call i32 @CHECK_RETURN(i32 %74)
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 0
  %78 = call i32 @device_create_file(i32* %77, i32* @dev_attr_led_green)
  %79 = call i32 @CHECK_RETURN(i32 %78)
  %80 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 0
  %82 = call i32 @toneport_update_led(i32* %81)
  br label %83

83:                                               ; preds = %71, %47
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %43, %34, %25, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @line6_init_audio(%struct.usb_line6*) #1

declare dso_local i32 @toneport_destruct(%struct.usb_interface*) #1

declare dso_local i32 @line6_init_pcm(%struct.usb_line6*, i32*) #1

declare dso_local i32 @line6_register_audio(%struct.usb_line6*) #1

declare dso_local i32 @line6_read_serial_number(%struct.usb_line6*, i32*) #1

declare dso_local i32 @line6_read_data(%struct.usb_line6*, i32, i32*, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @line6_write_data(%struct.usb_line6*, i32, i32*, i32) #1

declare dso_local i32 @toneport_send_cmd(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @CHECK_RETURN(i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @toneport_update_led(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
