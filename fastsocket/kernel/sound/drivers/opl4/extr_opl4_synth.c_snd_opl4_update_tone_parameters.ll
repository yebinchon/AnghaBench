; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_tone_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_update_tone_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }
%struct.opl4_voice = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OPL4_REG_ATTACK_DECAY1 = common dso_local global i64 0, align 8
@OPL4_REG_LEVEL_DECAY2 = common dso_local global i64 0, align 8
@OPL4_REG_RELEASE_CORRECTION = common dso_local global i64 0, align 8
@OPL4_REG_TREMOLO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_opl4*, %struct.opl4_voice*)* @snd_opl4_update_tone_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_opl4_update_tone_parameters(%struct.snd_opl4* %0, %struct.opl4_voice* %1) #0 {
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca %struct.opl4_voice*, align 8
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  store %struct.opl4_voice* %1, %struct.opl4_voice** %4, align 8
  %5 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %6 = load i64, i64* @OPL4_REG_ATTACK_DECAY1, align 8
  %7 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %8 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %12 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @snd_opl4_write(%struct.snd_opl4* %5, i64 %10, i32 %15)
  %17 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %18 = load i64, i64* @OPL4_REG_LEVEL_DECAY2, align 8
  %19 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %20 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %24 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_opl4_write(%struct.snd_opl4* %17, i64 %22, i32 %27)
  %29 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %30 = load i64, i64* @OPL4_REG_RELEASE_CORRECTION, align 8
  %31 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %32 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %36 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_opl4_write(%struct.snd_opl4* %29, i64 %34, i32 %39)
  %41 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %42 = load i64, i64* @OPL4_REG_TREMOLO, align 8
  %43 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %44 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.opl4_voice*, %struct.opl4_voice** %4, align 8
  %48 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_opl4_write(%struct.snd_opl4* %41, i64 %46, i32 %51)
  ret void
}

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
