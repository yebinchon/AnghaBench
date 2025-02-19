; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_update_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_toneport.c_toneport_update_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_line6_toneport = type { %struct.usb_line6 }
%struct.usb_line6 = type { i32 }

@led_red = common dso_local global i32 0, align 4
@led_green = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @toneport_update_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toneport_update_led(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_line6_toneport*, align 8
  %5 = alloca %struct.usb_line6*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.usb_interface* @to_usb_interface(%struct.device* %6)
  store %struct.usb_interface* %7, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.usb_line6_toneport* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usb_line6_toneport* %9, %struct.usb_line6_toneport** %4, align 8
  %10 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %4, align 8
  %11 = icmp ne %struct.usb_line6_toneport* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.usb_line6_toneport*, %struct.usb_line6_toneport** %4, align 8
  %15 = getelementptr inbounds %struct.usb_line6_toneport, %struct.usb_line6_toneport* %14, i32 0, i32 0
  store %struct.usb_line6* %15, %struct.usb_line6** %5, align 8
  %16 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %17 = icmp ne %struct.usb_line6* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.usb_line6*, %struct.usb_line6** %5, align 8
  %20 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @led_red, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %23, 2
  %25 = load i32, i32* @led_green, align 4
  %26 = call i32 @toneport_send_cmd(i32 %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %12, %18, %13
  ret void
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_line6_toneport* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @toneport_send_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
