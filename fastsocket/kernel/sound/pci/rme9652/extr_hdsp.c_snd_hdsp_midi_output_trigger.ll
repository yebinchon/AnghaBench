; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.hdsp_midi = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }

@snd_hdsp_midi_output_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_hdsp_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdsp_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdsp_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hdsp_midi*
  store %struct.hdsp_midi* %12, %struct.hdsp_midi** %5, align 8
  %13 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %14 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %13, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %21 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %26 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %25, i32 0, i32 2
  %27 = call i32 @init_timer(%struct.TYPE_6__* %26)
  %28 = load i32, i32* @snd_hdsp_midi_output_timer, align 4
  %29 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %30 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %33 = ptrtoint %struct.hdsp_midi* %32 to i64
  %34 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %35 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* @jiffies, align 8
  %38 = add nsw i64 1, %37
  %39 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %40 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %43 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %42, i32 0, i32 2
  %44 = call i32 @add_timer(%struct.TYPE_6__* %43)
  %45 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %46 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %24, %19
  br label %66

50:                                               ; preds = %2
  %51 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %52 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %57 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %63 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %62, i32 0, i32 2
  %64 = call i32 @del_timer(%struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %61, %55, %50
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %68 = getelementptr inbounds %struct.hdsp_midi, %struct.hdsp_midi* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.hdsp_midi*, %struct.hdsp_midi** %5, align 8
  %75 = call i32 @snd_hdsp_midi_output_write(%struct.hdsp_midi* %74)
  br label %76

76:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_hdsp_midi_output_write(%struct.hdsp_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
