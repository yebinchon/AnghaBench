; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_soc_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai_link*, %struct.snd_soc_device* }
%struct.snd_soc_dai_link = type { %struct.TYPE_4__*, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.TYPE_4__ = type { {}* }
%struct.snd_soc_dai = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* }
%struct.snd_soc_device = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { %struct.snd_soc_codec*, %struct.snd_soc_platform* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_soc_platform = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@pcm_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @soc_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_dai_link*, align 8
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_platform*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %4, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %18, align 8
  store %struct.snd_soc_dai_link* %19, %struct.snd_soc_dai_link** %5, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %21, align 8
  store %struct.snd_soc_card* %22, %struct.snd_soc_card** %6, align 8
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 1
  %25 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %24, align 8
  store %struct.snd_soc_platform* %25, %struct.snd_soc_platform** %7, align 8
  %26 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %26, i32 0, i32 2
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %8, align 8
  %29 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %29, i32 0, i32 1
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %30, align 8
  store %struct.snd_soc_dai* %31, %struct.snd_soc_dai** %9, align 8
  %32 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %33 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %32, i32 0, i32 0
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %33, align 8
  store %struct.snd_soc_codec* %34, %struct.snd_soc_codec** %10, align 8
  %35 = call i32 @mutex_lock(i32* @pcm_mutex)
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %42 = call i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.snd_pcm_substream*)**
  %54 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %53, align 8
  %55 = icmp ne i32 (%struct.snd_pcm_substream*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.snd_pcm_substream*)**
  %62 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %61, align 8
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %64 = call i32 %62(%struct.snd_pcm_substream* %63)
  br label %65

65:                                               ; preds = %56, %48, %43
  %66 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %67 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.snd_pcm_substream*)**
  %71 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %70, align 8
  %72 = icmp ne i32 (%struct.snd_pcm_substream*)* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.snd_pcm_substream*)**
  %79 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %78, align 8
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %81 = call i32 %79(%struct.snd_pcm_substream* %80)
  br label %82

82:                                               ; preds = %73, %65
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %86, align 8
  %88 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %93, align 8
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %96 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %97 = call i32 %94(%struct.snd_pcm_substream* %95, %struct.snd_soc_dai* %96)
  br label %98

98:                                               ; preds = %89, %82
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %102, align 8
  %104 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %107 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)** %109, align 8
  %111 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %113 = call i32 %110(%struct.snd_pcm_substream* %111, %struct.snd_soc_dai* %112)
  br label %114

114:                                              ; preds = %105, %98
  %115 = call i32 @mutex_unlock(i32* @pcm_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
