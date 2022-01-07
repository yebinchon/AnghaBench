; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc1_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_get_recsrc1_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss_file = type { i32 }
%struct.snd_mixer_oss_slot = type { i64 }
%struct.slot = type { i32* }

@SNDRV_MIXER_OSS_ITEM_CSWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32*)* @snd_mixer_oss_get_recsrc1_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_get_recsrc1_sw(%struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_slot* %1, i32* %2) #0 {
  %4 = alloca %struct.snd_mixer_oss_file*, align 8
  %5 = alloca %struct.snd_mixer_oss_slot*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_mixer_oss_file* %0, %struct.snd_mixer_oss_file** %4, align 8
  store %struct.snd_mixer_oss_slot* %1, %struct.snd_mixer_oss_slot** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %11 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.slot*
  store %struct.slot* %13, %struct.slot** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %14 = load %struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_file** %4, align 8
  %15 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %5, align 8
  %16 = load %struct.slot*, %struct.slot** %7, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SNDRV_MIXER_OSS_ITEM_CSWITCH, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file* %14, %struct.snd_mixer_oss_slot* %15, i32 %21, i32* %8, i32* %9, i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ true, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @snd_mixer_oss_get_volume1_sw(%struct.snd_mixer_oss_file*, %struct.snd_mixer_oss_slot*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
