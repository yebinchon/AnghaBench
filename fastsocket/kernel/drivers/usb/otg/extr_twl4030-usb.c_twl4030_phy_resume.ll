; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_phy_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_phy_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_usb = type { i64, i64 }

@T2_USB_MODE_ULPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_usb*)* @twl4030_phy_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_phy_resume(%struct.twl4030_usb* %0) #0 {
  %2 = alloca %struct.twl4030_usb*, align 8
  store %struct.twl4030_usb* %0, %struct.twl4030_usb** %2, align 8
  %3 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %4 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %10 = call i32 @twl4030_phy_power(%struct.twl4030_usb* %9, i32 1)
  %11 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %12 = call i32 @twl4030_i2c_access(%struct.twl4030_usb* %11, i32 1)
  %13 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %14 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %15 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @twl4030_usb_set_mode(%struct.twl4030_usb* %13, i64 %16)
  %18 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %19 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @T2_USB_MODE_ULPI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %25 = call i32 @twl4030_i2c_access(%struct.twl4030_usb* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %8
  %27 = load %struct.twl4030_usb*, %struct.twl4030_usb** %2, align 8
  %28 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %7
  ret void
}

declare dso_local i32 @twl4030_phy_power(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @twl4030_i2c_access(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @twl4030_usb_set_mode(%struct.twl4030_usb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
