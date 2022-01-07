; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_linkstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_linkstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@USB_LINK_UNKNOWN = common dso_local global i32 0, align 4
@TWL4030_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@STS_HW_CONDITIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"USB link status err %d\0A\00", align 1
@USB_LINK_ID = common dso_local global i32 0, align 4
@USB_LINK_VBUS = common dso_local global i32 0, align 4
@USB_LINK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"HW_CONDITIONS 0x%02x/%d; link %d\0A\00", align 1
@OTG_STATE_A_IDLE = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_usb*)* @twl4030_usb_linkstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_usb_linkstat(%struct.twl4030_usb* %0) #0 {
  %2 = alloca %struct.twl4030_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %2, align 8
  %5 = load i32, i32* @USB_LINK_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %7 = load i32, i32* @TWL4030_MODULE_PM_MASTER, align 4
  %8 = load i32, i32* @STS_HW_CONDITIONS, align 4
  %9 = call i32 @twl4030_readb(%struct.twl4030_usb* %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %14 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %38

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @BIT(i32 7)
  %21 = call i32 @BIT(i32 2)
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @BIT(i32 2)
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @USB_LINK_ID, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @USB_LINK_VBUS, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %37

35:                                               ; preds = %18
  %36 = load i32, i32* @USB_LINK_NONE, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %34
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %40 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %47 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_irq(i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %51 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @USB_LINK_ID, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %57 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @OTG_STATE_A_IDLE, align 4
  %60 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %61 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  br label %71

63:                                               ; preds = %38
  %64 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %65 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %68 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %69 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %73 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @twl4030_readb(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
