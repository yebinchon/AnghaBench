; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_info_mono.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_tumbler_info_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.tumbler_mono_vol = type { i64 }

@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @tumbler_info_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tumbler_info_mono(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.tumbler_mono_vol*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.tumbler_mono_vol*
  store %struct.tumbler_mono_vol* %9, %struct.tumbler_mono_vol** %5, align 8
  %10 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_INTEGER, align 4
  %11 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.tumbler_mono_vol*, %struct.tumbler_mono_vol** %5, align 8
  %20 = getelementptr inbounds %struct.tumbler_mono_vol, %struct.tumbler_mono_vol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
