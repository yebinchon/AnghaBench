; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_hub_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_dummy_hub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.dummy = type { i32, i64, i32, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_SUSPEND = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@PORT_C_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"port status 0x%08x has changes\0A\00", align 1
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @dummy_hub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_hub_status(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dummy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.dummy* @hcd_to_dummy(%struct.usb_hcd* %8)
  store %struct.dummy* %9, %struct.dummy** %5, align 8
  %10 = load %struct.dummy*, %struct.dummy** %5, align 8
  %11 = getelementptr inbounds %struct.dummy, %struct.dummy* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.dummy*, %struct.dummy** %5, align 8
  %20 = getelementptr inbounds %struct.dummy, %struct.dummy* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.dummy*, %struct.dummy** %5, align 8
  %26 = getelementptr inbounds %struct.dummy, %struct.dummy* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @time_after_eq(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load i32, i32* @USB_PORT_STAT_C_SUSPEND, align 4
  %32 = shl i32 %31, 16
  %33 = load %struct.dummy*, %struct.dummy** %5, align 8
  %34 = getelementptr inbounds %struct.dummy, %struct.dummy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.dummy*, %struct.dummy** %5, align 8
  %40 = getelementptr inbounds %struct.dummy, %struct.dummy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.dummy*, %struct.dummy** %5, align 8
  %44 = call i32 @set_link_state(%struct.dummy* %43)
  br label %45

45:                                               ; preds = %30, %23, %18
  %46 = load %struct.dummy*, %struct.dummy** %5, align 8
  %47 = getelementptr inbounds %struct.dummy, %struct.dummy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PORT_C_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  store i8 2, i8* %53, align 1
  %54 = load %struct.dummy*, %struct.dummy** %5, align 8
  %55 = call i32 @dummy_dev(%struct.dummy* %54)
  %56 = load %struct.dummy*, %struct.dummy** %5, align 8
  %57 = getelementptr inbounds %struct.dummy, %struct.dummy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 1, i32* %7, align 4
  %60 = load %struct.dummy*, %struct.dummy** %5, align 8
  %61 = getelementptr inbounds %struct.dummy, %struct.dummy* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %67 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %66)
  br label %68

68:                                               ; preds = %65, %52
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %17
  %71 = load %struct.dummy*, %struct.dummy** %5, align 8
  %72 = getelementptr inbounds %struct.dummy, %struct.dummy* %71, i32 0, i32 2
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.dummy* @hcd_to_dummy(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @set_link_state(%struct.dummy*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dummy_dev(%struct.dummy*) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
