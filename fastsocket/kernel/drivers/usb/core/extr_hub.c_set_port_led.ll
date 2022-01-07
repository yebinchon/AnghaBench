; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_set_port_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32 }

@USB_PORT_FEAT_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"port %d indicator %s status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"amber\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32, i32)* @set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_port_led(%struct.usb_hub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_PORT_FEAT_INDICATOR, align 4
  %18 = call i32 @set_port_feature(i32 %12, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %23 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %31 [
    i32 131, label %27
    i32 129, label %28
    i32 128, label %29
    i32 130, label %30
  ]

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %32

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %32

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %32

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  ret void
}

declare dso_local i32 @set_port_feature(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
