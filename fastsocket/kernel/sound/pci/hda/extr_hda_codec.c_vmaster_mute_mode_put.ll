; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_vmaster_mute_mode_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_vmaster_mute_mode_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hda_vmaster_mute_hook = type { i32 }

@HDA_VMUTE_FOLLOW_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @vmaster_mute_mode_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmaster_mute_mode_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.hda_vmaster_mute_hook*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.hda_vmaster_mute_hook* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.hda_vmaster_mute_hook* %9, %struct.hda_vmaster_mute_hook** %6, align 8
  %10 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %11 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %21 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %23 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HDA_VMUTE_FOLLOW_MASTER, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @HDA_VMUTE_FOLLOW_MASTER, align 4
  %29 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %30 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %34 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %40 = call i32 @snd_hda_sync_vmaster_hook(%struct.hda_vmaster_mute_hook* %39)
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.hda_vmaster_mute_hook* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_hda_sync_vmaster_hook(%struct.hda_vmaster_mute_hook*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
