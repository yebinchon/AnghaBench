; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_sample_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_patch.c_snd_emu8000_sample_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_sample_reset(%struct.snd_emux* %0) #0 {
  %2 = alloca %struct.snd_emux*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %2, align 8
  %3 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %4 = call i32 @snd_emux_terminate_all(%struct.snd_emux* %3)
  ret void
}

declare dso_local i32 @snd_emux_terminate_all(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
