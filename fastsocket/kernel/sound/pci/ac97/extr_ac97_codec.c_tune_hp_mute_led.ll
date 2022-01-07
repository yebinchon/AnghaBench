; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_tune_hp_mute_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_tune_hp_mute_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.snd_kcontrol = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@hp_master_mute_sw_put = common dso_local global i32 0, align 4
@bind_hp_volsw_put = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"External Amplifier\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Headphone Playback\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@AC97_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @tune_hp_mute_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_hp_mute_led(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %7 = call %struct.snd_kcontrol* @ctl_find(%struct.snd_ac97* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.snd_kcontrol* %7, %struct.snd_kcontrol** %4, align 8
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %9 = call %struct.snd_kcontrol* @ctl_find(%struct.snd_ac97* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.snd_kcontrol* %9, %struct.snd_kcontrol** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = icmp ne %struct.snd_kcontrol* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %14 = icmp ne %struct.snd_kcontrol* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %12
  %19 = load i32, i32* @hp_master_mute_sw_put, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @bind_hp_volsw_put, align 4
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %26 = call i32 @snd_ac97_remove_ctl(%struct.snd_ac97* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %28 = call i32 @snd_ac97_remove_ctl(%struct.snd_ac97* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %30 = call i32 @snd_ac97_remove_ctl(%struct.snd_ac97* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %32 = load i32, i32* @AC97_POWERDOWN, align 4
  %33 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %31, i32 %32, i32 32768, i32 32768)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.snd_kcontrol* @ctl_find(%struct.snd_ac97*, i8*, i32*) #1

declare dso_local i32 @snd_ac97_remove_ctl(%struct.snd_ac97*, i8*, i8*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
