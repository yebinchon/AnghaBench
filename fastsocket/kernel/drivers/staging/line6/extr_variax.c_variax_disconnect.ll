; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_variax.c_variax_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }

@dev_attr_model = common dso_local global i32 0, align 4
@dev_attr_volume = common dso_local global i32 0, align 4
@dev_attr_tone = common dso_local global i32 0, align 4
@dev_attr_name = common dso_local global i32 0, align 4
@dev_attr_bank = common dso_local global i32 0, align 4
@dev_attr_dump = common dso_local global i32 0, align 4
@dev_attr_active = common dso_local global i32 0, align 4
@dev_attr_raw = common dso_local global i32 0, align 4
@dev_attr_raw2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @variax_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = icmp eq %struct.usb_interface* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @variax_remove_files(i32 0, i32 0, %struct.device* %13)
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @device_remove_file(%struct.device* %15, i32* @dev_attr_model)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @device_remove_file(%struct.device* %17, i32* @dev_attr_volume)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_remove_file(%struct.device* %19, i32* @dev_attr_tone)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @device_remove_file(%struct.device* %21, i32* @dev_attr_name)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @device_remove_file(%struct.device* %23, i32* @dev_attr_bank)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @device_remove_file(%struct.device* %25, i32* @dev_attr_dump)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @device_remove_file(%struct.device* %27, i32* @dev_attr_active)
  br label %29

29:                                               ; preds = %12, %7
  %30 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %31 = call i32 @variax_destruct(%struct.usb_interface* %30)
  br label %32

32:                                               ; preds = %29, %6
  ret void
}

declare dso_local i32 @variax_remove_files(i32, i32, %struct.device*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @variax_destruct(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
