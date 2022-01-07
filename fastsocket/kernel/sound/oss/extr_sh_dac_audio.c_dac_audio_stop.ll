; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_dac_audio_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sh_dac_audio.c_dac_audio_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HD64461_GPADR = common dso_local global i32 0, align 4
@HD64461_GPADR_SPEAKER = common dso_local global i32 0, align 4
@CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dac_audio_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac_audio_stop() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @dac_audio_stop_timer()
  %3 = call i64 (...) @mach_is_hp6xx()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @HD64461_GPADR, align 4
  %7 = call i32 @__raw_readw(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @HD64461_GPADR_SPEAKER, align 4
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @HD64461_GPADR, align 4
  %13 = call i32 @__raw_writew(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %5, %0
  %15 = load i32, i32* @CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL, align 4
  %16 = call i32 @sh_dac_output(i32 0, i32 %15)
  %17 = load i32, i32* @CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL, align 4
  %18 = call i32 @sh_dac_disable(i32 %17)
  ret void
}

declare dso_local i32 @dac_audio_stop_timer(...) #1

declare dso_local i64 @mach_is_hp6xx(...) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @sh_dac_output(i32, i32) #1

declare dso_local i32 @sh_dac_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
