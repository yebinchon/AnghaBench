; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_hp_mute_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_hp_mute_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hda_fixup = type { i32 }
%struct.dmi_device = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@DMI_DEV_TYPE_OEM_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HP_Mute_LED_%d_%x\00", align 1
@alc269_fixup_mic_mute_hook = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Detected mute LED for %x:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc269_fixup_hp_mute_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fixup_hp_mute_led(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  %8 = alloca %struct.dmi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.alc_spec*, %struct.alc_spec** %12, align 8
  store %struct.alc_spec* %13, %struct.alc_spec** %7, align 8
  store %struct.dmi_device* null, %struct.dmi_device** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %62

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* @DMI_DEV_TYPE_OEM_STRING, align 4
  %21 = load %struct.dmi_device*, %struct.dmi_device** %8, align 8
  %22 = call %struct.dmi_device* @dmi_find_device(i32 %20, i32* null, %struct.dmi_device* %21)
  store %struct.dmi_device* %22, %struct.dmi_device** %8, align 8
  %23 = icmp ne %struct.dmi_device* %22, null
  br i1 %23, label %24, label %62

24:                                               ; preds = %19
  %25 = load %struct.dmi_device*, %struct.dmi_device** %8, align 8
  %26 = getelementptr inbounds %struct.dmi_device, %struct.dmi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sscanf(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %19

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  br label %62

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %41 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 10
  %44 = add nsw i32 %43, 24
  %45 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %46 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @alc269_fixup_mic_mute_hook, align 4
  %48 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %49 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %53 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %56 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %59 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_printd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %17, %38, %37, %19
  ret void
}

declare dso_local %struct.dmi_device* @dmi_find_device(i32, i32*, %struct.dmi_device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

declare dso_local i32 @snd_printd(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
