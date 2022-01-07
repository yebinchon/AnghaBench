; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_find_port_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_find_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64, i32 }
%struct.snd_usb_midi = type { i64 }

@snd_usbmidi_port_info = common dso_local global %struct.port_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.port_info* (%struct.snd_usb_midi*, i32)* @find_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.port_info* @find_port_info(%struct.snd_usb_midi* %0, i32 %1) #0 {
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.snd_usb_midi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.port_info*, %struct.port_info** @snd_usbmidi_port_info, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.port_info* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.port_info*, %struct.port_info** @snd_usbmidi_port_info, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i64 %15
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %4, align 8
  %20 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = load %struct.port_info*, %struct.port_info** @snd_usbmidi_port_info, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i64 %26
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.port_info*, %struct.port_info** @snd_usbmidi_port_info, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i64 %35
  store %struct.port_info* %36, %struct.port_info** %3, align 8
  br label %42

37:                                               ; preds = %23, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store %struct.port_info* null, %struct.port_info** %3, align 8
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.port_info*, %struct.port_info** %3, align 8
  ret %struct.port_info* %43
}

declare dso_local i32 @ARRAY_SIZE(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
