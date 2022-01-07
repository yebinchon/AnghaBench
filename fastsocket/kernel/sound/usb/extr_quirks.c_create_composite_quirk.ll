; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_create_composite_quirk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_quirks.c_create_composite_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_audio = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_driver = type { i32 }
%struct.snd_usb_audio_quirk = type { i32, %struct.snd_usb_audio_quirk* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*)* @create_composite_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_composite_quirk(%struct.snd_usb_audio* %0, %struct.usb_interface* %1, %struct.usb_driver* %2, %struct.snd_usb_audio_quirk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_usb_audio*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_driver*, align 8
  %9 = alloca %struct.snd_usb_audio_quirk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_usb_audio* %0, %struct.snd_usb_audio** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store %struct.usb_driver* %2, %struct.usb_driver** %8, align 8
  store %struct.snd_usb_audio_quirk* %3, %struct.snd_usb_audio_quirk** %9, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @get_iface_desc(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %19 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %18, i32 0, i32 1
  %20 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %19, align 8
  store %struct.snd_usb_audio_quirk* %20, %struct.snd_usb_audio_quirk** %9, align 8
  br label %21

21:                                               ; preds = %69, %4
  %22 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %23 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %28 = getelementptr inbounds %struct.snd_usb_audio, %struct.snd_usb_audio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %31 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %29, i32 %32)
  store %struct.usb_interface* %33, %struct.usb_interface** %7, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %35 = icmp ne %struct.usb_interface* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %69

37:                                               ; preds = %26
  %38 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %39 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %45 = call i64 @usb_interface_claimed(%struct.usb_interface* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %69

48:                                               ; preds = %43, %37
  %49 = load %struct.snd_usb_audio*, %struct.snd_usb_audio** %6, align 8
  %50 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %51 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %52 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %53 = call i32 @snd_usb_create_quirk(%struct.snd_usb_audio* %49, %struct.usb_interface* %50, %struct.usb_driver* %51, %struct.snd_usb_audio_quirk* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %73

58:                                               ; preds = %48
  %59 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %60 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.usb_driver*, %struct.usb_driver** %8, align 8
  %66 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %67 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %65, %struct.usb_interface* %66, i8* inttoptr (i64 -1 to i8*))
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %47, %36
  %70 = load %struct.snd_usb_audio_quirk*, %struct.snd_usb_audio_quirk** %9, align 8
  %71 = getelementptr inbounds %struct.snd_usb_audio_quirk, %struct.snd_usb_audio_quirk* %70, i32 1
  store %struct.snd_usb_audio_quirk* %71, %struct.snd_usb_audio_quirk** %9, align 8
  br label %21

72:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_2__* @get_iface_desc(i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i64 @usb_interface_claimed(%struct.usb_interface*) #1

declare dso_local i32 @snd_usb_create_quirk(%struct.snd_usb_audio*, %struct.usb_interface*, %struct.usb_driver*, %struct.snd_usb_audio_quirk*) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
