; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_clock.c_snd_usb_find_clock_multiplier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_clock.c_snd_usb_find_clock_multiplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uac_clock_multiplier_descriptor = type { i32 }
%struct.usb_host_interface = type { i32, i32 }

@UAC2_CLOCK_MULTIPLIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uac_clock_multiplier_descriptor* (%struct.usb_host_interface*, i32)* @snd_usb_find_clock_multiplier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uac_clock_multiplier_descriptor* @snd_usb_find_clock_multiplier(%struct.usb_host_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.uac_clock_multiplier_descriptor*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uac_clock_multiplier_descriptor*, align 8
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uac_clock_multiplier_descriptor* null, %struct.uac_clock_multiplier_descriptor** %6, align 8
  br label %7

7:                                                ; preds = %26, %2
  %8 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %9 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uac_clock_multiplier_descriptor*, %struct.uac_clock_multiplier_descriptor** %6, align 8
  %15 = load i32, i32* @UAC2_CLOCK_MULTIPLIER, align 4
  %16 = call %struct.uac_clock_multiplier_descriptor* @snd_usb_find_csint_desc(i32 %10, i32 %13, %struct.uac_clock_multiplier_descriptor* %14, i32 %15)
  store %struct.uac_clock_multiplier_descriptor* %16, %struct.uac_clock_multiplier_descriptor** %6, align 8
  %17 = icmp ne %struct.uac_clock_multiplier_descriptor* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load %struct.uac_clock_multiplier_descriptor*, %struct.uac_clock_multiplier_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.uac_clock_multiplier_descriptor, %struct.uac_clock_multiplier_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.uac_clock_multiplier_descriptor*, %struct.uac_clock_multiplier_descriptor** %6, align 8
  store %struct.uac_clock_multiplier_descriptor* %25, %struct.uac_clock_multiplier_descriptor** %3, align 8
  br label %28

26:                                               ; preds = %18
  br label %7

27:                                               ; preds = %7
  store %struct.uac_clock_multiplier_descriptor* null, %struct.uac_clock_multiplier_descriptor** %3, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.uac_clock_multiplier_descriptor*, %struct.uac_clock_multiplier_descriptor** %3, align 8
  ret %struct.uac_clock_multiplier_descriptor* %29
}

declare dso_local %struct.uac_clock_multiplier_descriptor* @snd_usb_find_csint_desc(i32, i32, %struct.uac_clock_multiplier_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
