; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hda_pcm_stream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, i32, i32, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque
%struct.hda_codec.1 = type opaque
%struct.snd_pcm_substream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_prepare(%struct.hda_codec* %0, %struct.hda_pcm_stream* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %18 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, i32, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, %struct.hda_codec.1*, i32, i32, %struct.snd_pcm_substream*)** %19, align 8
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %22 = bitcast %struct.hda_pcm_stream* %21 to %struct.hda_pcm_stream.0*
  %23 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %24 = bitcast %struct.hda_codec* %23 to %struct.hda_codec.1*
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %28 = call i32 %20(%struct.hda_pcm_stream.0* %22, %struct.hda_codec.1* %24, i32 %25, i32 %26, %struct.snd_pcm_substream* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %33 = call i32 @purify_inactive_streams(%struct.hda_codec* %32)
  br label %34

34:                                               ; preds = %31, %5
  %35 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %36 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @purify_inactive_streams(%struct.hda_codec*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
