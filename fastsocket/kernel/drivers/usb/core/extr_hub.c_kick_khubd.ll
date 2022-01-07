; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_kick_khubd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_kick_khubd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@hub_event_lock = common dso_local global i32 0, align 4
@hub_event_list = common dso_local global i32 0, align 4
@khubd_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*)* @kick_khubd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kick_khubd(%struct.usb_hub* %0) #0 {
  %2 = alloca %struct.usb_hub*, align 8
  %3 = alloca i64, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %2, align 8
  %4 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_2__* @to_usb_interface(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @atomic_set(i32* %8, i32 1)
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @hub_event_lock, i64 %10)
  %12 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %18 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %17, i32 0, i32 0
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.usb_hub*, %struct.usb_hub** %2, align 8
  %23 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %23, i32* @hub_event_list)
  %25 = call i32 @wake_up(i32* @khubd_wait)
  br label %26

26:                                               ; preds = %21, %16, %1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @hub_event_lock, i64 %27)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @to_usb_interface(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
