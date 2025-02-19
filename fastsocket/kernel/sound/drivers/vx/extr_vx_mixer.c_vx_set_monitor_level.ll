; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_set_monitor_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_vx_set_monitor_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32*, i32* }
%struct.vx_audio_level = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vx_set_monitor_level(%struct.vx_core* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vx_audio_level, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.vx_audio_level* %9, i32 0, i32 16)
  %11 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %9, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %9, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %9, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.vx_audio_level, %struct.vx_audio_level* %9, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %22 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %29 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @vx_adjust_audio_level(%struct.vx_core* %34, i32 %35, i32 0, %struct.vx_audio_level* %9)
  ret i32 %36
}

declare dso_local i32 @memset(%struct.vx_audio_level*, i32, i32) #1

declare dso_local i32 @vx_adjust_audio_level(%struct.vx_core*, i32, i32, %struct.vx_audio_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
