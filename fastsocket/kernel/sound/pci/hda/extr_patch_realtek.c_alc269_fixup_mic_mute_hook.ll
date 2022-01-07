; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_mic_mute_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc269_fixup_mic_mute_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, i64 }

@AC_PINCTL_IN_EN = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_HIZ = common dso_local global i32 0, align 4
@AC_PINCTL_VREF_80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @alc269_fixup_mic_mute_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fixup_mic_mute_hook(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.alc_spec*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hda_codec*
  store %struct.hda_codec* %9, %struct.hda_codec** %5, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.alc_spec*, %struct.alc_spec** %11, align 8
  store %struct.alc_spec* %12, %struct.alc_spec** %6, align 8
  %13 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %14 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @AC_PINCTL_IN_EN, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @AC_PINCTL_VREF_HIZ, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @AC_PINCTL_VREF_80, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = or i32 %23, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %34 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %39 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %40 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %38, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
