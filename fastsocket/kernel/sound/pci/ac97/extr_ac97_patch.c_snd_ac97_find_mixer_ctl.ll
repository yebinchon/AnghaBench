; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_find_mixer_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_find_mixer_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ac97 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol* (%struct.snd_ac97*, i8*)* @snd_ac97_find_mixer_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 8)
  %7 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %8 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcpy(i32 %10, i8* %11)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_kcontrol* @snd_ctl_find_id(i32 %17, %struct.snd_ctl_elem_id* %5)
  ret %struct.snd_kcontrol* %18
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(i32, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
