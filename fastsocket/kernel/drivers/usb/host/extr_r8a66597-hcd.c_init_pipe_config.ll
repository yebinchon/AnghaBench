; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_init_pipe_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_init_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.urb = type { i32 }
%struct.r8a66597_device = type { i32 }

@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.urb*)* @init_pipe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pipe_config(%struct.r8a66597* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.r8a66597_device*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %6, %struct.urb* %7)
  store %struct.r8a66597_device* %8, %struct.r8a66597_device** %5, align 8
  %9 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %10 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %11 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
