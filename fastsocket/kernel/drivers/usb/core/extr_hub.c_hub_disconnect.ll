; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_hub = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@hub_event_lock = common dso_local global i32 0, align 4
@HUB_DISCONNECT = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i32 0, align 4
@hub_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @hub_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_hub*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_hub* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_hub* %5, %struct.usb_hub** %3, align 8
  %6 = call i32 @spin_lock_irq(i32* @hub_event_lock)
  %7 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %8 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %7, i32 0, i32 9
  %9 = call i32 @list_del_init(i32* %8)
  %10 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = call i32 @spin_unlock_irq(i32* @hub_event_lock)
  %13 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %14 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = load i32, i32* @HUB_DISCONNECT, align 4
  %17 = call i32 @hub_quiesce(%struct.usb_hub* %15, i32 %16)
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = call i32 @usb_set_intfdata(%struct.usb_interface* %18, i32* null)
  %20 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %21 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %20, i32 0, i32 7
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %25 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %24, i32 0, i32 7
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_SPEED_HIGH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @highspeed_hubs, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* @highspeed_hubs, align 4
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %36 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_free_urb(i32 %37)
  %39 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %40 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kfree(i32 %41)
  %43 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %44 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(i32 %45)
  %47 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %48 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  %51 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %52 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @kfree(i32 %53)
  %55 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %56 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %55, i32 0, i32 1
  %57 = load i32, i32* @hub_release, align 4
  %58 = call i32 @kref_put(i32* %56, i32 %57)
  ret void
}

declare dso_local %struct.usb_hub* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hub_quiesce(%struct.usb_hub*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
