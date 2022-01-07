; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_usb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_LINK_UNKNOWN = common dso_local global i32 0, align 4
@USB_LINK_VBUS = common dso_local global i32 0, align 4
@USB_LINK_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl4030_usb_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_usb_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.twl4030_usb*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.twl4030_usb*
  store %struct.twl4030_usb* %8, %struct.twl4030_usb** %5, align 8
  %9 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %10 = call i32 @twl4030_usb_linkstat(%struct.twl4030_usb* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_LINK_UNKNOWN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @USB_LINK_VBUS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @twl4030charger_usb_en(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @USB_LINK_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %25 = call i32 @twl4030_phy_suspend(%struct.twl4030_usb* %24, i32 0)
  br label %29

26:                                               ; preds = %14
  %27 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %28 = call i32 @twl4030_phy_resume(%struct.twl4030_usb* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %32 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_notify(i32* %34, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @twl4030_usb_linkstat(%struct.twl4030_usb*) #1

declare dso_local i32 @twl4030charger_usb_en(i32) #1

declare dso_local i32 @twl4030_phy_suspend(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @twl4030_phy_resume(%struct.twl4030_usb*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
