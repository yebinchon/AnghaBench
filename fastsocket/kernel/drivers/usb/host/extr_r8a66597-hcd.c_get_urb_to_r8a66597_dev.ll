; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_get_urb_to_r8a66597_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_get_urb_to_r8a66597_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597_device = type { i32 }
%struct.r8a66597 = type { %struct.r8a66597_device }
%struct.urb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r8a66597_device* (%struct.r8a66597*, %struct.urb*)* @get_urb_to_r8a66597_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.r8a66597_device*, align 8
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %6 = load %struct.urb*, %struct.urb** %5, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @usb_pipedevice(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.r8a66597*, %struct.r8a66597** %4, align 8
  %13 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %12, i32 0, i32 0
  store %struct.r8a66597_device* %13, %struct.r8a66597_device** %3, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call %struct.r8a66597_device* @dev_get_drvdata(i32* %18)
  store %struct.r8a66597_device* %19, %struct.r8a66597_device** %3, align 8
  br label %20

20:                                               ; preds = %14, %11
  %21 = load %struct.r8a66597_device*, %struct.r8a66597_device** %3, align 8
  ret %struct.r8a66597_device* %21
}

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local %struct.r8a66597_device* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
