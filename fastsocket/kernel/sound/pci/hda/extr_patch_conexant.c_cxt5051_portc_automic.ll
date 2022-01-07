; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_portc_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5051_portc_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i64*, i64, i32, i32 }

@AUTO_MIC_PORTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5051_portc_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5051_portc_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  store %struct.conexant_spec* %8, %struct.conexant_spec** %3, align 8
  %9 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %10 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AUTO_MIC_PORTC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %17, i32 24)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %23 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %26 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %29 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %32 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %38 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %27
  %42 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %43 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %50 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @__snd_hda_codec_cleanup_stream(%struct.hda_codec* %48, i64 %51, i32 1)
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %55 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %59 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %62 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %56, i64 %57, i32 %60, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %15, %47, %41, %27
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @__snd_hda_codec_cleanup_stream(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
