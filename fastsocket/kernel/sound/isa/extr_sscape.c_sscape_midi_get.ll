; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_midi_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_sscape.c_sscape_midi_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_wss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.soundscape = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @sscape_midi_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sscape_midi_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_wss*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.soundscape*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_wss* %10, %struct.snd_wss** %5, align 8
  %11 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %12 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %11, i32 0, i32 0
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %6, align 8
  %14 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %15 = call %struct.soundscape* @get_card_soundscape(%struct.snd_card* %14)
  store %struct.soundscape* %15, %struct.soundscape** %7, align 8
  %16 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %17 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %21 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %22, i32* %28, align 4
  %29 = load %struct.soundscape*, %struct.soundscape** %7, align 8
  %30 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret i32 0
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.soundscape* @get_card_soundscape(%struct.snd_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
