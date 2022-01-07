; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_id = type { i8* }
%struct.xenbus_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xenbus_device_id* (%struct.xenbus_device_id*, %struct.xenbus_device*)* @match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xenbus_device_id* @match_device(%struct.xenbus_device_id* %0, %struct.xenbus_device* %1) #0 {
  %3 = alloca %struct.xenbus_device_id*, align 8
  %4 = alloca %struct.xenbus_device_id*, align 8
  %5 = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device_id* %0, %struct.xenbus_device_id** %4, align 8
  store %struct.xenbus_device* %1, %struct.xenbus_device** %5, align 8
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %6
  %14 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i8* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %13
  %23 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %4, align 8
  store %struct.xenbus_device_id* %23, %struct.xenbus_device_id** %3, align 8
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %26, i32 1
  store %struct.xenbus_device_id* %27, %struct.xenbus_device_id** %4, align 8
  br label %6

28:                                               ; preds = %6
  store %struct.xenbus_device_id* null, %struct.xenbus_device_id** %3, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %3, align 8
  ret %struct.xenbus_device_id* %30
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
