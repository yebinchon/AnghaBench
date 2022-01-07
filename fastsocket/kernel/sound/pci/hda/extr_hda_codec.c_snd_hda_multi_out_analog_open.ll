; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i32, i32, i64, i32, i32, i64, i64, i64, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hda_pcm_stream = type { i32, i32, i64 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_multi_out_analog_open(%struct.hda_codec* %0, %struct.hda_multi_out* %1, %struct.snd_pcm_substream* %2, %struct.hda_pcm_stream* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.hda_multi_out*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hda_pcm_stream*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  store %struct.hda_pcm_stream* %3, %struct.hda_pcm_stream** %8, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %9, align 8
  %13 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %14 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %20 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %146

23:                                               ; preds = %4
  %24 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %25 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %30 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %33 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %35 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %38 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %40 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %43 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %62

44:                                               ; preds = %23
  %45 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %46 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %52 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %58 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %61 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %44, %28
  %63 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %64 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %62
  %68 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %69 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %70 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %73 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %72, i32 0, i32 3
  %74 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %75 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %74, i32 0, i32 4
  %76 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %77 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %76, i32 0, i32 5
  %78 = call i32 @snd_hda_query_supported_pcm(%struct.hda_codec* %68, i64 %71, i32* %73, i32* %75, i64* %77)
  br label %79

79:                                               ; preds = %67, %62
  %80 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %84 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %142

87:                                               ; preds = %79
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %93 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %138

97:                                               ; preds = %87
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %103 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %97
  %108 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %109 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %117 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %125 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %128 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %107
  %132 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %133 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %8, align 8
  %136 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %107
  br label %141

138:                                              ; preds = %97, %87
  %139 = load %struct.hda_multi_out*, %struct.hda_multi_out** %6, align 8
  %140 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %139, i32 0, i32 6
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %137
  br label %142

142:                                              ; preds = %141, %79
  %143 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %144 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %143, i32 0, i32 0
  %145 = call i32 @mutex_unlock(i32* %144)
  br label %146

146:                                              ; preds = %142, %4
  %147 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %148 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %147, i32 0, i32 0
  %149 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %148, align 8
  %150 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %151 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %149, i32 0, i32 %150, i32 2)
  ret i32 %151
}

declare dso_local i32 @snd_hda_query_supported_pcm(%struct.hda_codec*, i64, i32*, i32*, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
