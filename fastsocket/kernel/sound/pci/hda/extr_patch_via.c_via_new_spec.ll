; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_new_spec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_via_new_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_spec = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hda_codec = type { %struct.via_spec* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i64 0, align 8
@VT1708S = common dso_local global i64 0, align 8
@via_playback_pcm_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.via_spec* (%struct.hda_codec*)* @via_new_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.via_spec* @via_new_spec(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.via_spec*, align 8
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.via_spec* @kzalloc(i32 24, i32 %5)
  store %struct.via_spec* %6, %struct.via_spec** %4, align 8
  %7 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %8 = icmp eq %struct.via_spec* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.via_spec* null, %struct.via_spec** %2, align 8
  br label %44

10:                                               ; preds = %1
  %11 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  store %struct.via_spec* %11, %struct.via_spec** %13, align 8
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 2
  %16 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_2__* %15)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %18 = call i64 @get_codec_type(%struct.hda_codec* %17)
  %19 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %20 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %22 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VT1708BCE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load i64, i64* @VT1708S, align 8
  %28 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %29 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %10
  %31 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %32 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %34 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %37 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @via_playback_pcm_hook, align 4
  %40 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %41 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  store %struct.via_spec* %43, %struct.via_spec** %2, align 8
  br label %44

44:                                               ; preds = %30, %9
  %45 = load %struct.via_spec*, %struct.via_spec** %2, align 8
  ret %struct.via_spec* %45
}

declare dso_local %struct.via_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_2__*) #1

declare dso_local i64 @get_codec_type(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
