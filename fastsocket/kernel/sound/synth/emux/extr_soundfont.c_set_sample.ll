; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_set_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_set_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_sample = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }
%struct.snd_soundfont = type { i32 }
%struct.soundfont_voice_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_sf_sample* (%struct.snd_soundfont*, %struct.soundfont_voice_info*)* @set_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_sf_sample* @set_sample(%struct.snd_soundfont* %0, %struct.soundfont_voice_info* %1) #0 {
  %3 = alloca %struct.snd_sf_sample*, align 8
  %4 = alloca %struct.snd_soundfont*, align 8
  %5 = alloca %struct.soundfont_voice_info*, align 8
  %6 = alloca %struct.snd_sf_sample*, align 8
  store %struct.snd_soundfont* %0, %struct.snd_soundfont** %4, align 8
  store %struct.soundfont_voice_info* %1, %struct.soundfont_voice_info** %5, align 8
  %7 = load %struct.snd_soundfont*, %struct.snd_soundfont** %4, align 8
  %8 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %9 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.snd_sf_sample* @find_sample(%struct.snd_soundfont* %7, i32 %10)
  store %struct.snd_sf_sample* %11, %struct.snd_sf_sample** %6, align 8
  %12 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %13 = icmp eq %struct.snd_sf_sample* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.snd_sf_sample* null, %struct.snd_sf_sample** %3, align 8
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %17 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %21 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %27 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %31 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %37 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %41 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %47 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %51 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  %57 = getelementptr inbounds %struct.snd_sf_sample, %struct.snd_sf_sample* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.soundfont_voice_info*, %struct.soundfont_voice_info** %5, align 8
  %61 = getelementptr inbounds %struct.soundfont_voice_info, %struct.soundfont_voice_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %6, align 8
  store %struct.snd_sf_sample* %62, %struct.snd_sf_sample** %3, align 8
  br label %63

63:                                               ; preds = %15, %14
  %64 = load %struct.snd_sf_sample*, %struct.snd_sf_sample** %3, align 8
  ret %struct.snd_sf_sample* %64
}

declare dso_local %struct.snd_sf_sample* @find_sample(%struct.snd_soundfont*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
