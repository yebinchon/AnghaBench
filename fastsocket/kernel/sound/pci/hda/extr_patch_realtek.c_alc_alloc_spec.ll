; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_alloc_spec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_alloc_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @alc_alloc_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_alloc_spec(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alc_spec*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.alc_spec* @kzalloc(i32 8, i32 %8)
  store %struct.alc_spec* %9, %struct.alc_spec** %6, align 8
  %10 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %11 = icmp ne %struct.alc_spec* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 2
  store %struct.alc_spec* %16, %struct.alc_spec** %18, align 8
  %19 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 0
  %21 = call i32 @snd_hda_gen_spec_init(%struct.TYPE_2__* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %24 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %27 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = call i32 @alc_codec_rename_from_preset(%struct.hda_codec* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %15
  %38 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  %39 = call i32 @kfree(%struct.alc_spec* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.alc_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(%struct.TYPE_2__*) #1

declare dso_local i32 @alc_codec_rename_from_preset(%struct.hda_codec*) #1

declare dso_local i32 @kfree(%struct.alc_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
