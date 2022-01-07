; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_helper.c_snd_usb_parse_datainterval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_helper.c_snd_usb_parse_datainterval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_host_interface = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @snd_usb_parse_datainterval(%struct.snd_usb_audio* %0, %struct.usb_host_interface* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.snd_usb_audio*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %4, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %5, align 8
  %6 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %4, align 8
  %7 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_usb_get_speed(i32 %8)
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %12 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %11, i32 0)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %18 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %17, i32 0)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 4
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %24 = call %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface* %23, i32 0)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %32

29:                                               ; preds = %16, %10
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %29
  store i8 0, i8* %3, align 1
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i8, i8* %3, align 1
  ret i8 %33
}

declare dso_local i32 @snd_usb_get_speed(i32) #1

declare dso_local %struct.TYPE_2__* @get_endpoint(%struct.usb_host_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
