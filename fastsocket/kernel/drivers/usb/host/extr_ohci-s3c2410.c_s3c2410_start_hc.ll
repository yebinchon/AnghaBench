; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_start_hc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_start_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s3c2410_hcd_info* }
%struct.s3c2410_hcd_info = type { i32 (%struct.s3c2410_hcd_info*, i32)*, i32, %struct.usb_hcd* }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"s3c2410_start_hc:\0A\00", align 1
@usb_clk = common dso_local global i32 0, align 4
@clk = common dso_local global i32 0, align 4
@s3c2410_hcd_oc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.usb_hcd*)* @s3c2410_start_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_start_hc(%struct.platform_device* %0, %struct.usb_hcd* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.s3c2410_hcd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.usb_hcd* %1, %struct.usb_hcd** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %8, align 8
  store %struct.s3c2410_hcd_info* %9, %struct.s3c2410_hcd_info** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(%struct.TYPE_2__* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @usb_clk, align 4
  %14 = call i32 @clk_enable(i32 %13)
  %15 = call i32 @mdelay(i32 2)
  %16 = load i32, i32* @clk, align 4
  %17 = call i32 @clk_enable(i32 %16)
  %18 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %19 = icmp ne %struct.s3c2410_hcd_info* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %22 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %23 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %22, i32 0, i32 2
  store %struct.usb_hcd* %21, %struct.usb_hcd** %23, align 8
  %24 = load i32, i32* @s3c2410_hcd_oc, align 4
  %25 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %26 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %28 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %27, i32 0, i32 0
  %29 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.s3c2410_hcd_info*, i32)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %33 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %32, i32 0, i32 0
  %34 = load i32 (%struct.s3c2410_hcd_info*, i32)*, i32 (%struct.s3c2410_hcd_info*, i32)** %33, align 8
  %35 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %5, align 8
  %36 = call i32 %34(%struct.s3c2410_hcd_info* %35, i32 1)
  br label %37

37:                                               ; preds = %31, %20
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
