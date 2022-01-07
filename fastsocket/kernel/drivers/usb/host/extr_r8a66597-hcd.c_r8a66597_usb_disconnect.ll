; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.r8a66597_device* }
%struct.r8a66597_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i32)* @r8a66597_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_usb_disconnect(%struct.r8a66597* %0, i32 %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8a66597_device*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.r8a66597_device*, %struct.r8a66597_device** %12, align 8
  store %struct.r8a66597_device* %13, %struct.r8a66597_device** %5, align 8
  %14 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %15 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %16 = call i32 @disable_r8a66597_pipe_all(%struct.r8a66597* %14, %struct.r8a66597_device* %15)
  %17 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %18 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %19 = call i32 @free_usb_address(%struct.r8a66597* %17, %struct.r8a66597_device* %18)
  %20 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @start_root_hub_sampling(%struct.r8a66597* %20, i32 %21, i32 0)
  ret void
}

declare dso_local i32 @disable_r8a66597_pipe_all(%struct.r8a66597*, %struct.r8a66597_device*) #1

declare dso_local i32 @free_usb_address(%struct.r8a66597*, %struct.r8a66597_device*) #1

declare dso_local i32 @start_root_hub_sampling(%struct.r8a66597*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
