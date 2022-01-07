; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c___oxu_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c___oxu_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.oxu_hcd = type { i32 }
%struct.list_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @__oxu_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__oxu_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.oxu_hcd*, align 8
  %9 = alloca %struct.list_head, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %11 = call %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd* %10)
  store %struct.oxu_hcd* %11, %struct.oxu_hcd** %8, align 8
  %12 = call i32 @INIT_LIST_HEAD(%struct.list_head* %9)
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_pipetype(i32 %15)
  switch i32 %16, label %18 [
    i32 130, label %17
    i32 131, label %17
    i32 129, label %32
    i32 128, label %46
  ]

17:                                               ; preds = %3, %3
  br label %18

18:                                               ; preds = %3, %17
  %19 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @qh_urb_transaction(%struct.oxu_hcd* %19, %struct.urb* %20, %struct.list_head* %9, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @submit_async(%struct.oxu_hcd* %28, %struct.urb* %29, %struct.list_head* %9, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @qh_urb_transaction(%struct.oxu_hcd* %33, %struct.urb* %34, %struct.list_head* %9, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %64

41:                                               ; preds = %32
  %42 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @intr_submit(%struct.oxu_hcd* %42, %struct.urb* %43, %struct.list_head* %9, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %64

46:                                               ; preds = %3
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @USB_SPEED_HIGH, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @itd_submit(%struct.oxu_hcd* %55, %struct.urb* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %46
  %60 = load %struct.oxu_hcd*, %struct.oxu_hcd** %8, align 8
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @sitd_submit(%struct.oxu_hcd* %60, %struct.urb* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %54, %41, %38, %27, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.oxu_hcd* @hcd_to_oxu(%struct.usb_hcd*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @qh_urb_transaction(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @submit_async(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @intr_submit(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32) #1

declare dso_local i32 @itd_submit(%struct.oxu_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @sitd_submit(%struct.oxu_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
