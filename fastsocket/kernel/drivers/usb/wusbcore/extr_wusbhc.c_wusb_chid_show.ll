; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_chid_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_chid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_ckhdid = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wusbhc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wusb_ckhdid }

@wusb_ckhdid_zero = common dso_local global %struct.wusb_ckhdid zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wusb_chid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_chid_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wusbhc*, align 8
  %8 = alloca %struct.wusb_ckhdid*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wusbhc* @usbhc_dev_to_wusbhc(%struct.device* %10)
  store %struct.wusbhc* %11, %struct.wusbhc** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %18 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.wusb_ckhdid* %20, %struct.wusb_ckhdid** %8, align 8
  br label %22

21:                                               ; preds = %3
  store %struct.wusb_ckhdid* @wusb_ckhdid_zero, %struct.wusb_ckhdid** %8, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %8, align 8
  %26 = call i32 @ckhdid_printf(i8* %23, i32 %24, %struct.wusb_ckhdid* %25)
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.wusbhc* @usbhc_dev_to_wusbhc(%struct.device*) #1

declare dso_local i32 @ckhdid_printf(i8*, i32, %struct.wusb_ckhdid*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
