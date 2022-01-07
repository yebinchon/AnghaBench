; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_snd_usbmidi_emagic_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi_in_endpoint = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi_in_endpoint*, i32*, i32)* @snd_usbmidi_emagic_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_usbmidi_emagic_input(%struct.snd_usb_midi_in_endpoint* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_usb_midi_in_endpoint*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_usb_midi_in_endpoint* %0, %struct.snd_usb_midi_in_endpoint** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %6, align 4
  br label %25

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %19, %8
  %26 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %77

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %98, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 245
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %36

52:                                               ; preds = %47, %36
  %53 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %54 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %55 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint* %53, i32 %56, i32* %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %101

70:                                               ; preds = %52
  %71 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %72 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %70, %30
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %101

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 128
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %90, 15
  %92 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %93 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %86, %81
  %99 = load %struct.snd_usb_midi_in_endpoint*, %struct.snd_usb_midi_in_endpoint** %4, align 8
  %100 = getelementptr inbounds %struct.snd_usb_midi_in_endpoint, %struct.snd_usb_midi_in_endpoint* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  br label %32

101:                                              ; preds = %80, %69, %32
  ret void
}

declare dso_local i32 @snd_usbmidi_input_data(%struct.snd_usb_midi_in_endpoint*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
