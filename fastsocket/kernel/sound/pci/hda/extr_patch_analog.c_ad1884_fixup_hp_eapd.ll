; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1884_fixup_hp_eapd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1884_fixup_hp_eapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ad198x_spec* }
%struct.ad198x_spec = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hda_fixup = type { i32 }

@ad_vmaster_eapd_hook = common dso_local global i32 0, align 4
@AUTO_PIN_SPEAKER_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @ad1884_fixup_hp_eapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1884_fixup_hp_eapd(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ad198x_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ad198x_spec*, %struct.ad198x_spec** %9, align 8
  store %struct.ad198x_spec* %10, %struct.ad198x_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %47 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @ad_vmaster_eapd_hook, align 4
  %14 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %15 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %20 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AUTO_PIN_SPEAKER_OUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %28 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %35 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %46

36:                                               ; preds = %18
  %37 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %38 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ad198x_spec*, %struct.ad198x_spec** %7, align 8
  %45 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %36, %26
  br label %47

47:                                               ; preds = %3, %46, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
