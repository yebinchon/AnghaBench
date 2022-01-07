; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_rh_queue_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_rh_queue_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, %struct.urb*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32, %struct.usb_hcd*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@hcd_root_hub_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"not queuing rh status urb\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*)* @rh_queue_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rh_queue_status(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 8
  %14 = add nsw i32 1, %13
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @hcd_root_hub_lock, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 2
  %19 = load %struct.urb*, %struct.urb** %18, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.urb*, %struct.urb** %4, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %2
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %76

35:                                               ; preds = %21
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %37 = load %struct.urb*, %struct.urb** %4, align 8
  %38 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %36, %struct.urb* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %76

42:                                               ; preds = %35
  %43 = load %struct.urb*, %struct.urb** %4, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 2
  store %struct.urb* %43, %struct.urb** %45, align 8
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %47 = load %struct.urb*, %struct.urb** %4, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  store %struct.usb_hcd* %46, %struct.usb_hcd** %48, align 8
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %42
  %54 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %54, i32 0, i32 0
  %56 = load i32, i32* @jiffies, align 4
  %57 = load i32, i32* @HZ, align 4
  %58 = sdiv i32 %57, 4
  %59 = sdiv i32 %56, %58
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @HZ, align 4
  %62 = sdiv i32 %61, 4
  %63 = mul nsw i32 %60, %62
  %64 = call i32 @mod_timer(i32* %55, i32 %63)
  br label %75

65:                                               ; preds = %42
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %67 = call i64 @HCD_POLL_PENDING(%struct.usb_hcd* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 0
  %72 = load i32, i32* @jiffies, align 4
  %73 = call i32 @mod_timer(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %53
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %41, %27
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* @hcd_root_hub_lock, i64 %77)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i64 @HCD_POLL_PENDING(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
