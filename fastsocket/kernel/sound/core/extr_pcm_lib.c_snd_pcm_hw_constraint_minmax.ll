; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_constraint_minmax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_hw_constraint_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { %struct.snd_pcm_hw_constraints }
%struct.snd_pcm_hw_constraints = type { i32 }
%struct.snd_interval = type { i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_hw_constraints*, align 8
  %10 = alloca %struct.snd_interval, align 8
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  store %struct.snd_pcm_hw_constraints* %12, %struct.snd_pcm_hw_constraints** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.snd_pcm_hw_constraints*, %struct.snd_pcm_hw_constraints** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @constrs_interval(%struct.snd_pcm_hw_constraints* %20, i32 %21)
  %23 = call i32 @snd_interval_refine(i32 %22, %struct.snd_interval* %10)
  ret i32 %23
}

declare dso_local i32 @snd_interval_refine(i32, %struct.snd_interval*) #1

declare dso_local i32 @constrs_interval(%struct.snd_pcm_hw_constraints*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
