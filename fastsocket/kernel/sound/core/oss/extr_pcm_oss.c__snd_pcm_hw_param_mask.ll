; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c__snd_pcm_hw_param_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c__snd_pcm_hw_param_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32 }
%struct.snd_mask = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, i32, %struct.snd_mask*)* @_snd_pcm_hw_param_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_snd_pcm_hw_param_mask(%struct.snd_pcm_hw_params* %0, i32 %1, %struct.snd_mask* %2) #0 {
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mask*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_mask* %2, %struct.snd_mask** %6, align 8
  %8 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %8, i32 %9)
  %11 = load %struct.snd_mask*, %struct.snd_mask** %6, align 8
  %12 = call i32 @snd_mask_refine(i32 %10, %struct.snd_mask* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %15, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @snd_mask_refine(i32, %struct.snd_mask*) #1

declare dso_local i32 @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
