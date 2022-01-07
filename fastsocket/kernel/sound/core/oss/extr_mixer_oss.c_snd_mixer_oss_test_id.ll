; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_test_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_test_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_mixer_oss = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol* (%struct.snd_mixer_oss*, i8*, i32)* @snd_mixer_oss_test_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_mixer_oss*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca %struct.snd_ctl_elem_id, align 4
  store %struct.snd_mixer_oss* %0, %struct.snd_mixer_oss** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %4, align 8
  %10 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %9, i32 0, i32 0
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %7, align 8
  %12 = call i32 @memset(%struct.snd_ctl_elem_id* %8, i32 0, i32 12)
  %13 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %14 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %8, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlcpy(i32 %16, i8* %17, i32 4)
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %22 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %21, %struct.snd_ctl_elem_id* %8)
  ret %struct.snd_kcontrol* %22
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
