; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_patch_ad1884_basic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_patch_ad1884_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, %struct.ad198x_spec* }
%struct.ad198x_spec = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32*, i32*, i32*, i32, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@HDA_OUTPUT = common dso_local global i32 0, align 4
@ad1884_dac_nids = common dso_local global i8* null, align 8
@AD1884_SPDIF_OUT = common dso_local global i32 0, align 4
@ad1884_adc_nids = common dso_local global i8* null, align 8
@ad1884_capsrc_nids = common dso_local global i32 0, align 4
@ad1884_capture_source = common dso_local global i32 0, align 4
@ad1884_base_mixers = common dso_local global i32 0, align 4
@ad1884_init_verbs = common dso_local global i32 0, align 4
@ad1884_slave_vols = common dso_local global i32 0, align 4
@ad198x_patch_ops = common dso_local global i32 0, align 4
@ad1884_loopbacks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_ad1884_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1884_basic(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_ad_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  %15 = load %struct.ad198x_spec*, %struct.ad198x_spec** %14, align 8
  store %struct.ad198x_spec* %15, %struct.ad198x_spec** %4, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = call i32 @snd_hda_attach_beep_device(%struct.hda_codec* %16, i32 16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = call i32 @ad198x_free(%struct.hda_codec* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %12
  %25 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %26 = load i32, i32* @HDA_OUTPUT, align 4
  %27 = call i32 @set_beep_amp(%struct.ad198x_spec* %25, i32 16, i32 0, i32 %26)
  %28 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %29 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = load i8*, i8** @ad1884_dac_nids, align 8
  %32 = call i8* @ARRAY_SIZE(i8* %31)
  %33 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %34 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @ad1884_dac_nids, align 8
  %37 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %38 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @AD1884_SPDIF_OUT, align 4
  %41 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %42 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i8*, i8** @ad1884_adc_nids, align 8
  %45 = call i8* @ARRAY_SIZE(i8* %44)
  %46 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %47 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @ad1884_adc_nids, align 8
  %49 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %50 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @ad1884_capsrc_nids, align 4
  %52 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %53 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %55 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %54, i32 0, i32 9
  store i32* @ad1884_capture_source, i32** %55, align 8
  %56 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %57 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @ad1884_base_mixers, align 4
  %59 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %60 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %64 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @ad1884_init_verbs, align 4
  %66 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %67 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %71 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %73 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %72, i32 0, i32 2
  store i32 4, i32* %73, align 8
  %74 = load i32, i32* @ad1884_slave_vols, align 4
  %75 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %76 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %78 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* @ad198x_patch_ops, align 4
  %80 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %83 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %24, %20, %10
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @alloc_ad_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_attach_beep_device(%struct.hda_codec*, i32) #1

declare dso_local i32 @ad198x_free(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.ad198x_spec*, i32, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
