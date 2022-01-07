; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_rule_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_rule_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_pcm_hw_rule_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_rule_step(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %6 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %10 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %9, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @snd_interval_step(i32 %13, i32 0, i64 %14)
  ret i32 %15
}

declare dso_local i32 @snd_interval_step(i32, i32, i64) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
