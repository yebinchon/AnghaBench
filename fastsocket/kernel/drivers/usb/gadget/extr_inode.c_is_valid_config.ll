; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_is_valid_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_is_valid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i64, i64, i64, i32 }

@USB_DT_CONFIG = common dso_local global i64 0, align 8
@USB_DT_CONFIG_SIZE = common dso_local global i64 0, align 8
@USB_CONFIG_ATT_ONE = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_config_descriptor*)* @is_valid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_config(%struct.usb_config_descriptor* %0) #0 {
  %2 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %2, align 8
  %3 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %2, align 8
  %4 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USB_DT_CONFIG, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_DT_CONFIG_SIZE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %2, align 8
  %16 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %2, align 8
  %21 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USB_CONFIG_ATT_ONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %2, align 8
  %28 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %26, %19, %14, %8, %1
  %34 = phi i1 [ false, %19 ], [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
