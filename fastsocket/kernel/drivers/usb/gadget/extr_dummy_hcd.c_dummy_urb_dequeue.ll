; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.dummy = type { i64, i32, i32, i32 }

@DUMMY_RH_RUNNING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @dummy_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dummy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.dummy* @hcd_to_dummy(%struct.usb_hcd* %10)
  store %struct.dummy* %11, %struct.dummy** %7, align 8
  %12 = load %struct.dummy*, %struct.dummy** %7, align 8
  %13 = getelementptr inbounds %struct.dummy, %struct.dummy* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %16, %struct.urb* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %3
  %23 = load %struct.dummy*, %struct.dummy** %7, align 8
  %24 = getelementptr inbounds %struct.dummy, %struct.dummy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DUMMY_RH_RUNNING, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.dummy*, %struct.dummy** %7, align 8
  %30 = getelementptr inbounds %struct.dummy, %struct.dummy* %29, i32 0, i32 3
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.dummy*, %struct.dummy** %7, align 8
  %35 = getelementptr inbounds %struct.dummy, %struct.dummy* %34, i32 0, i32 2
  %36 = load i32, i32* @jiffies, align 4
  %37 = call i32 @mod_timer(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %28, %22, %3
  %39 = load %struct.dummy*, %struct.dummy** %7, align 8
  %40 = getelementptr inbounds %struct.dummy, %struct.dummy* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local %struct.dummy* @hcd_to_dummy(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
