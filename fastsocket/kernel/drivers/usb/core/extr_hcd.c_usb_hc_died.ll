; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hc_died.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hc_died.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__, i32, i64, %struct.usb_hcd* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"HC died; cleaning up\0A\00", align 1
@hcd_root_hub_lock = common dso_local global i32 0, align 4
@HCD_FLAG_RH_RUNNING = common dso_local global i32 0, align 4
@HCD_FLAG_DEAD = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hc_died(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_err(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @hcd_root_hub_lock, i64 %9)
  %11 = load i32, i32* @HCD_FLAG_RH_RUNNING, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 1
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load i32, i32* @HCD_FLAG_DEAD, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %33 = call i32 @usb_set_device_state(i32 %31, i32 %32)
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_kick_khubd(i32 %37)
  br label %39

39:                                               ; preds = %23, %1
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %41 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 3
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %45, align 8
  %47 = icmp ne %struct.usb_hcd* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 3
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %50, align 8
  store %struct.usb_hcd* %51, %struct.usb_hcd** %2, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %48
  %57 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %58 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %58, i32 0, i32 1
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %66 = call i32 @usb_set_device_state(i32 %64, i32 %65)
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @usb_kick_khubd(i32 %70)
  br label %72

72:                                               ; preds = %56, %48
  br label %73

73:                                               ; preds = %72, %43, %39
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* @hcd_root_hub_lock, i64 %74)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_set_device_state(i32, i32) #1

declare dso_local i32 @usb_kick_khubd(i32) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
