; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_default_interrupt_handler_wave_and_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_reset.c_snd_gf1_default_interrupt_handler_wave_and_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32 }
%struct.snd_gus_voice = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*, %struct.snd_gus_voice*)* @snd_gf1_default_interrupt_handler_wave_and_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_default_interrupt_handler_wave_and_volume(%struct.snd_gus_card* %0, %struct.snd_gus_voice* %1) #0 {
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca %struct.snd_gus_voice*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  store %struct.snd_gus_voice* %1, %struct.snd_gus_voice** %4, align 8
  %5 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %6 = call i32 @snd_gf1_i_ctrl_stop(%struct.snd_gus_card* %5, i32 0)
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %8 = call i32 @snd_gf1_i_ctrl_stop(%struct.snd_gus_card* %7, i32 13)
  ret void
}

declare dso_local i32 @snd_gf1_i_ctrl_stop(%struct.snd_gus_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
