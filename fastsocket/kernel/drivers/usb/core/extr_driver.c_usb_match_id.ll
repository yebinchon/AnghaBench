; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_driver.c_usb_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_device_id*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %6 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %7 = icmp eq %struct.usb_device_id* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.usb_device_id* null, %struct.usb_device_id** %3, align 8
  br label %49

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %45, %9
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25, %20, %15, %10
  %36 = phi i1 [ true, %25 ], [ true, %20 ], [ true, %15 ], [ true, %10 ], [ %34, %30 ]
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %40 = call i64 @usb_match_one_id(%struct.usb_interface* %38, %struct.usb_device_id* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  store %struct.usb_device_id* %43, %struct.usb_device_id** %3, align 8
  br label %49

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %46, i32 1
  store %struct.usb_device_id* %47, %struct.usb_device_id** %5, align 8
  br label %10

48:                                               ; preds = %35
  store %struct.usb_device_id* null, %struct.usb_device_id** %3, align 8
  br label %49

49:                                               ; preds = %48, %42, %8
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  ret %struct.usb_device_id* %50
}

declare dso_local i64 @usb_match_one_id(%struct.usb_interface*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
