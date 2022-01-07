; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ohci_hcd = type { i32 }

@ED_OPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @ohci_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ohci_hcd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %11)
  store %struct.ohci_hcd* %12, %struct.ohci_hcd** %7, align 8
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %14 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %17, %struct.urb* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @HC_IS_RUNNING(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %10, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ED_OPER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @start_ed_unlink(%struct.ohci_hcd* %45, %struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %44, %36
  br label %51

51:                                               ; preds = %50, %30
  br label %63

52:                                               ; preds = %24
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %59 = load %struct.urb*, %struct.urb** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @finish_urb(%struct.ohci_hcd* %58, %struct.urb* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %23
  %65 = load %struct.ohci_hcd*, %struct.ohci_hcd** %7, align 8
  %66 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %65, i32 0, i32 0
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @start_ed_unlink(%struct.ohci_hcd*, %struct.TYPE_4__*) #1

declare dso_local i32 @finish_urb(%struct.ohci_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
