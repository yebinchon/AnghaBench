; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_valid_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_valid_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { i64, %struct.usbip_device }
%struct.usbip_device = type { i64, i32 }
%struct.usbip_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SDEV_ST_USED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stub_device*, %struct.usbip_header*)* @valid_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_request(%struct.stub_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca %struct.usbip_header*, align 8
  %6 = alloca %struct.usbip_device*, align 8
  store %struct.stub_device* %0, %struct.stub_device** %4, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %5, align 8
  %7 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %8 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %7, i32 0, i32 1
  store %struct.usbip_device* %8, %struct.usbip_device** %6, align 8
  %9 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %10 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %14 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.usbip_device*, %struct.usbip_device** %6, align 8
  %19 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.usbip_device*, %struct.usbip_device** %6, align 8
  %22 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SDEV_ST_USED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.usbip_device*, %struct.usbip_device** %6, align 8
  %28 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.usbip_device*, %struct.usbip_device** %6, align 8
  %32 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
