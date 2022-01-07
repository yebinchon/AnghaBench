; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32 }

@SNDRV_GF1_GB_SOUND_BLASTER_CONTROL = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_stop(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %3 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %4 = load i32, i32* @SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, align 4
  %5 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %3, i32 %4, i32 0)
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %7 = call i32 @snd_gf1_stop_voices(%struct.snd_gus_card* %6, i32 0, i32 31)
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %9 = load i32, i32* @SNDRV_GF1_GB_RESET, align 4
  %10 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %8, i32 %9, i32 1)
  %11 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %12 = call i32 @snd_gf1_timers_done(%struct.snd_gus_card* %11)
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %14 = call i32 @snd_gf1_mem_done(%struct.snd_gus_card* %13)
  ret i32 0
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_stop_voices(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_timers_done(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gf1_mem_done(%struct.snd_gus_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
