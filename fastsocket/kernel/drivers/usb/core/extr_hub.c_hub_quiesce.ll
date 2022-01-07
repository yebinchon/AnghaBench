; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_quiesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.TYPE_2__, i32, i64, i32, i32, %struct.usb_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.usb_device = type { i32, i64* }

@HUB_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32)* @hub_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_quiesce(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %8 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %7, i32 0, i32 6
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %5, align 8
  %10 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 5
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %14 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @HUB_SUSPEND, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = call i32 @usb_disconnect(i64* %40)
  br label %42

42:                                               ; preds = %34, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %19

46:                                               ; preds = %19
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %49 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_kill_urb(i32 %50)
  %52 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %53 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %58 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %57, i32 0, i32 2
  %59 = call i32 @cancel_delayed_work_sync(i32* %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %62 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %68 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @cancel_work_sync(i32* %69)
  br label %71

71:                                               ; preds = %66, %60
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @usb_disconnect(i64*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
