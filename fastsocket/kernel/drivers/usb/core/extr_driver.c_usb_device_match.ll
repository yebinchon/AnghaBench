; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_device_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.usb_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @usb_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.usb_driver*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @is_usb_device(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %14 = call i64 @is_usb_device_driver(%struct.device_driver* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @is_usb_interface(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %24 = call i64 @is_usb_device_driver(%struct.device_driver* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %50

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call %struct.usb_interface* @to_usb_interface(%struct.device* %28)
  store %struct.usb_interface* %29, %struct.usb_interface** %6, align 8
  %30 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %31 = call %struct.usb_driver* @to_usb_driver(%struct.device_driver* %30)
  store %struct.usb_driver* %31, %struct.usb_driver** %7, align 8
  %32 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %33 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %34 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %32, i32 %35)
  store %struct.usb_device_id* %36, %struct.usb_device_id** %8, align 8
  %37 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %38 = icmp ne %struct.usb_device_id* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %50

40:                                               ; preds = %27
  %41 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %42 = load %struct.usb_driver*, %struct.usb_driver** %7, align 8
  %43 = call %struct.usb_device_id* @usb_match_dynamic_id(%struct.usb_interface* %41, %struct.usb_driver* %42)
  store %struct.usb_device_id* %43, %struct.usb_device_id** %8, align 8
  %44 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %45 = icmp ne %struct.usb_device_id* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %18
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %39, %26, %17, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @is_usb_device(%struct.device*) #1

declare dso_local i64 @is_usb_device_driver(%struct.device_driver*) #1

declare dso_local i64 @is_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_driver* @to_usb_driver(%struct.device_driver*) #1

declare dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface*, i32) #1

declare dso_local %struct.usb_device_id* @usb_match_dynamic_id(%struct.usb_interface*, %struct.usb_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
