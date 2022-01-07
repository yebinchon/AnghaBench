; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_substream_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_substream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_usb_midi* }
%struct.snd_usb_midi = type { i64, i32, i32, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @substream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @substream_open(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_midi*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %10, align 8
  store %struct.snd_usb_midi* %11, %struct.snd_usb_midi** %5, align 8
  %12 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %13 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %20, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %25 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %24, i32 0, i32 3
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %25, align 8
  %27 = icmp ne %struct.snd_kcontrol* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %30 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %29, i32 0, i32 3
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %30, align 8
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %6, align 8
  %32 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %32
  store i32 %39, i32* %37, align 4
  %40 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %41 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = call i32 @snd_ctl_notify(i32 %42, i32 %43, i32* %45)
  %47 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %48 = call i32 @update_roland_altsetting(%struct.snd_usb_midi* %47)
  br label %49

49:                                               ; preds = %28, %23, %17
  br label %82

50:                                               ; preds = %2
  %51 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %52 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %58 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %57, i32 0, i32 3
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %58, align 8
  %60 = icmp ne %struct.snd_kcontrol* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %63 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %62, i32 0, i32 3
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %63, align 8
  store %struct.snd_kcontrol* %64, %struct.snd_kcontrol** %6, align 8
  %65 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %68 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %66
  store i32 %73, i32* %71, align 4
  %74 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %75 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %78 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %78, i32 0, i32 0
  %80 = call i32 @snd_ctl_notify(i32 %76, i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %61, %56, %50
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %5, align 8
  %84 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @update_roland_altsetting(%struct.snd_usb_midi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
