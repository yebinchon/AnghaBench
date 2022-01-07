; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.TYPE_4__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.twl4030_priv* }
%struct.twl4030_priv = type { i64, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_soc_dai = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @twl4030_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 2
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_device*, %struct.snd_soc_device** %13, align 8
  store %struct.snd_soc_device* %14, %struct.snd_soc_device** %6, align 8
  %15 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %18, align 8
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %7, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 0
  %22 = load %struct.twl4030_priv*, %struct.twl4030_priv** %21, align 8
  store %struct.twl4030_priv* %22, %struct.twl4030_priv** %8, align 8
  %23 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %24 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %23, i32 0, i32 1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = icmp eq %struct.snd_pcm_substream* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %30 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %29, i32 0, i32 2
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %30, align 8
  %32 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %33 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %32, i32 0, i32 1
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %36 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %35, i32 0, i32 2
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %36, align 8
  %37 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %38 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %37, i32 0, i32 1
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %38, align 8
  %40 = icmp ne %struct.snd_pcm_substream* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %43 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %57

44:                                               ; preds = %34
  %45 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %46 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %45, i32 0, i32 1
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %46, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %55 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @twl4030_tdm_enable(%struct.snd_soc_codec* %65, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %64, %57
  ret void
}

declare dso_local i32 @twl4030_tdm_enable(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
