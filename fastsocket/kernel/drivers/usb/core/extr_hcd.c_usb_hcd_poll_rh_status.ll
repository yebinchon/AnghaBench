; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_poll_rh_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_poll_rh_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.urb*, i64, i32, %struct.TYPE_2__* }
%struct.urb = type { i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*, i8*)* }

@hcd_root_hub_lock = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_poll_rh_status(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [6 x i8], align 1
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call i32 @HCD_RH_POLLABLE(%struct.usb_hcd* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 1
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %106

26:                                               ; preds = %20, %15
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i8*)** %30, align 8
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %34 = call i32 %31(%struct.usb_hcd* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_lock_irqsave(i32* @hcd_root_hub_lock, i64 %38)
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 1
  %42 = load %struct.urb*, %struct.urb** %41, align 8
  store %struct.urb* %42, %struct.urb** %3, align 8
  %43 = load %struct.urb*, %struct.urb** %3, align 8
  %44 = icmp ne %struct.urb* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load i32, i32* @HCD_FLAG_POLL_PENDING, align 4
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 3
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 1
  store %struct.urb* null, %struct.urb** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.urb*, %struct.urb** %3, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.urb*, %struct.urb** %3, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @memcpy(i32 %57, i8* %58, i32 %59)
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %62 = load %struct.urb*, %struct.urb** %3, align 8
  %63 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %61, %struct.urb* %62)
  %64 = call i32 @spin_unlock(i32* @hcd_root_hub_lock)
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %66 = load %struct.urb*, %struct.urb** %3, align 8
  %67 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %65, %struct.urb* %66, i32 0)
  %68 = call i32 @spin_lock(i32* @hcd_root_hub_lock)
  br label %74

69:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  %70 = load i32, i32* @HCD_FLAG_POLL_PENDING, align 4
  %71 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %72 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %71, i32 0, i32 3
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %45
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @hcd_root_hub_lock, i64 %75)
  br label %77

77:                                               ; preds = %74, %26
  %78 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %79 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %84 = call i32 @HCD_POLL_RH(%struct.usb_hcd* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %106

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 1
  %92 = load %struct.urb*, %struct.urb** %91, align 8
  %93 = icmp ne %struct.urb* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %89, %82
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %96 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %95, i32 0, i32 0
  %97 = load i32, i32* @jiffies, align 4
  %98 = load i32, i32* @HZ, align 4
  %99 = sdiv i32 %98, 4
  %100 = sdiv i32 %97, %99
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* @HZ, align 4
  %103 = sdiv i32 %102, 4
  %104 = mul nsw i32 %101, %103
  %105 = call i32 @mod_timer(i32* %96, i32 %104)
  br label %106

106:                                              ; preds = %14, %25, %94, %89, %86, %82
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_RH_POLLABLE(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @HCD_POLL_RH(%struct.usb_hcd*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
