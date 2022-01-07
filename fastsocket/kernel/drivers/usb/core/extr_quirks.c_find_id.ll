; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_quirks.c_find_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_quirks.c_find_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i64, i64, i64, i64 }
%struct.usb_device = type { i32 }

@usb_quirk_list = common dso_local global %struct.usb_device_id* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device_id* (%struct.usb_device*)* @find_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device_id* @find_id(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device_id*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device_id*, %struct.usb_device_id** @usb_quirk_list, align 8
  store %struct.usb_device_id* %5, %struct.usb_device_id** %4, align 8
  br label %6

6:                                                ; preds = %36, %1
  %7 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %6
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16, %11, %6
  %27 = phi i1 [ true, %16 ], [ true, %11 ], [ true, %6 ], [ %25, %21 ]
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %31 = call i64 @usb_match_device(%struct.usb_device* %29, %struct.usb_device_id* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  store %struct.usb_device_id* %34, %struct.usb_device_id** %2, align 8
  br label %40

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %37, i32 1
  store %struct.usb_device_id* %38, %struct.usb_device_id** %4, align 8
  br label %6

39:                                               ; preds = %26
  store %struct.usb_device_id* null, %struct.usb_device_id** %2, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.usb_device_id*, %struct.usb_device_id** %2, align 8
  ret %struct.usb_device_id* %41
}

declare dso_local i64 @usb_match_device(%struct.usb_device*, %struct.usb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
