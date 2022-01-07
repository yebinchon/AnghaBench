; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_add_vmaster_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_add_vmaster_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_vmaster_mute_hook = type { i32, %struct.hda_codec*, i32, i32 }
%struct.snd_kcontrol = type { i32 }

@HDA_VMUTE_FOLLOW_MASTER = common dso_local global i32 0, align 4
@vmaster_mute_mode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_vmaster_hook(%struct.hda_codec* %0, %struct.hda_vmaster_mute_hook* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_vmaster_mute_hook*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_vmaster_mute_hook* %1, %struct.hda_vmaster_mute_hook** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %10 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %15 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %49

19:                                               ; preds = %13
  %20 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %21 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %24 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %27 = call i32 @snd_ctl_add_vmaster_hook(i32 %22, i32 %25, %struct.hda_codec* %26)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %29 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %30 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %29, i32 0, i32 1
  store %struct.hda_codec* %28, %struct.hda_codec** %30, align 8
  %31 = load i32, i32* @HDA_VMUTE_FOLLOW_MASTER, align 4
  %32 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %33 = getelementptr inbounds %struct.hda_vmaster_mute_hook, %struct.hda_vmaster_mute_hook* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %49

37:                                               ; preds = %19
  %38 = load %struct.hda_vmaster_mute_hook*, %struct.hda_vmaster_mute_hook** %6, align 8
  %39 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @vmaster_mute_mode, %struct.hda_vmaster_mute_hook* %38)
  store %struct.snd_kcontrol* %39, %struct.snd_kcontrol** %8, align 8
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %41 = icmp ne %struct.snd_kcontrol* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %48 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %46, i32 0, %struct.snd_kcontrol* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %42, %36, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @snd_ctl_add_vmaster_hook(i32, i32, %struct.hda_codec*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.hda_vmaster_mute_hook*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
