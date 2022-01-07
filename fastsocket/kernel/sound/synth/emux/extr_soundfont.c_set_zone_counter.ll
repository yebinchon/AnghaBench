; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_set_zone_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_set_zone_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sf_list = type { i64, i64 }
%struct.snd_soundfont = type { i32 }
%struct.snd_sf_zone = type { i64 }

@SNDRV_SFNT_PAT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sf_list*, %struct.snd_soundfont*, %struct.snd_sf_zone*)* @set_zone_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_zone_counter(%struct.snd_sf_list* %0, %struct.snd_soundfont* %1, %struct.snd_sf_zone* %2) #0 {
  %4 = alloca %struct.snd_sf_list*, align 8
  %5 = alloca %struct.snd_soundfont*, align 8
  %6 = alloca %struct.snd_sf_zone*, align 8
  store %struct.snd_sf_list* %0, %struct.snd_sf_list** %4, align 8
  store %struct.snd_soundfont* %1, %struct.snd_soundfont** %5, align 8
  store %struct.snd_sf_zone* %2, %struct.snd_sf_zone** %6, align 8
  %7 = load %struct.snd_sf_list*, %struct.snd_sf_list** %4, align 8
  %8 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %6, align 8
  %12 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.snd_soundfont*, %struct.snd_soundfont** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soundfont, %struct.snd_soundfont* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNDRV_SFNT_PAT_LOCKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.snd_sf_list*, %struct.snd_sf_list** %4, align 8
  %21 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.snd_sf_list*, %struct.snd_sf_list** %4, align 8
  %24 = getelementptr inbounds %struct.snd_sf_list, %struct.snd_sf_list* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
