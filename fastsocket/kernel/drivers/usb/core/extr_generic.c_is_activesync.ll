; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_generic.c_is_activesync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_generic.c_is_activesync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface_descriptor = type { i64, i32, i32 }

@USB_CLASS_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface_descriptor*)* @is_activesync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_activesync(%struct.usb_interface_descriptor* %0) #0 {
  %2 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.usb_interface_descriptor* %0, %struct.usb_interface_descriptor** %2, align 8
  %3 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %2, align 8
  %4 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USB_CLASS_MISC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %2, align 8
  %15 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 1
  br label %18

18:                                               ; preds = %13, %8, %1
  %19 = phi i1 [ false, %8 ], [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
