; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_snd_soc_dapm_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_snd_soc_dapm_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@SND_SOC_DAPM_STREAM_NOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sync\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %4 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %5 = load i32, i32* @SND_SOC_DAPM_STREAM_NOP, align 4
  %6 = call i32 @dapm_power_widgets(%struct.snd_soc_codec* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %8 = call i32 @dump_dapm(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

declare dso_local i32 @dapm_power_widgets(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dump_dapm(%struct.snd_soc_codec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
