; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_pcm_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_capture_pcm_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i64 }
%struct.hda_codec = type { %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64* }
%struct.snd_pcm_substream = type { i32 }

@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32)* @stac_capture_pcm_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac_capture_pcm_hook(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2, i32 %3) #0 {
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigmatel_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %13, align 8
  store %struct.sigmatel_spec* %14, %struct.sigmatel_spec** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %16 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %79

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %24 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %38 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %11, align 4
  br label %47

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %21

47:                                               ; preds = %41, %21
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %79 [
    i32 128, label %49
    i32 129, label %64
  ]

49:                                               ; preds = %47
  %50 = call i32 @msleep(i32 40)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %52 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %53 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %56 = load i32, i32* @AC_PWRST_D0, align 4
  %57 = call i32 @snd_hda_codec_write(%struct.hda_codec* %51, i64 %54, i32 0, i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %61 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %79

64:                                               ; preds = %47
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %67 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %70 = load i32, i32* @AC_PWRST_D3, align 4
  %71 = call i32 @snd_hda_codec_write(%struct.hda_codec* %65, i64 %68, i32 0, i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %9, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %19, %47, %64, %49
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
