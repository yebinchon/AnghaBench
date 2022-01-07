; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_recursively_mark_NOTATTACHED.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_recursively_mark_NOTATTACHED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i64, i32, i32, %struct.usb_device** }

@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @recursively_mark_NOTATTACHED to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recursively_mark_NOTATTACHED(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 4
  %13 = load %struct.usb_device**, %struct.usb_device*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %13, i64 %15
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %18 = icmp ne %struct.usb_device* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 4
  %22 = load %struct.usb_device**, %struct.usb_device*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %22, i64 %24
  %26 = load %struct.usb_device*, %struct.usb_device** %25, align 8
  call void @recursively_mark_NOTATTACHED(%struct.usb_device* %26)
  br label %27

27:                                               ; preds = %19, %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %4

31:                                               ; preds = %4
  %32 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %37, %31
  %48 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
