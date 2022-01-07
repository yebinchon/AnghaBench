; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_midi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.hdspm_midi* }
%struct.hdspm_midi = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }

@snd_hdspm_midi_output_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_hdspm_midi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_midi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdspm_midi*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.hdspm_midi*, %struct.hdspm_midi** %10, align 8
  store %struct.hdspm_midi* %11, %struct.hdspm_midi** %5, align 8
  %12 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %13 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %20 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %18
  %24 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %25 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %24, i32 0, i32 2
  %26 = call i32 @init_timer(%struct.TYPE_6__* %25)
  %27 = load i32, i32* @snd_hdspm_midi_output_timer, align 4
  %28 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %29 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %32 = ptrtoint %struct.hdspm_midi* %31 to i64
  %33 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %34 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i64, i64* @jiffies, align 8
  %37 = add nsw i64 1, %36
  %38 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %39 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  %41 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %42 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %41, i32 0, i32 2
  %43 = call i32 @add_timer(%struct.TYPE_6__* %42)
  %44 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %45 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %23, %18
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %51 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %56 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %62 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %61, i32 0, i32 2
  %63 = call i32 @del_timer(%struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %60, %54, %49
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %67 = getelementptr inbounds %struct.hdspm_midi, %struct.hdspm_midi* %66, i32 0, i32 1
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.hdspm_midi*, %struct.hdspm_midi** %5, align 8
  %74 = call i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi* %73)
  br label %75

75:                                               ; preds = %72, %65
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_hdspm_midi_output_write(%struct.hdspm_midi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
