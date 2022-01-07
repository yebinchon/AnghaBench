; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_portspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_portspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"5.0 Gb/s\00", align 1
@USB_PORT_FEAT_HIGHSPEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"480 Mb/s\00", align 1
@USB_PORT_FEAT_LOWSPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"1.5 Mb/s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"12 Mb/s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_hub*, i32)* @portspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @portspeed(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %7 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @hub_is_superspeed(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @USB_PORT_FEAT_HIGHSPEED, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @USB_PORT_FEAT_LOWSPEED, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %27

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %25, %18, %11
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i64 @hub_is_superspeed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
