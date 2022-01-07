; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_snd_pcm_plugin_build_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_snd_pcm_plugin_build_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_format = type { i32, i64, i32 }
%struct.snd_pcm_plugin = type { i32, i32, i32, i32, i64 }
%struct.rate_priv = type { i32, i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rate conversion\00", align 1
@SHIFT = common dso_local global i32 0, align 4
@resample_expand = common dso_local global i32 0, align 4
@resample_shrink = common dso_local global i32 0, align 4
@rate_transfer = common dso_local global i32 0, align 4
@rate_src_frames = common dso_local global i32 0, align 4
@rate_dst_frames = common dso_local global i32 0, align 4
@rate_action = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_plugin_format*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format*, align 8
  %9 = alloca %struct.snd_pcm_plugin**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rate_priv*, align 8
  %12 = alloca %struct.snd_pcm_plugin*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_plugin_format* %1, %struct.snd_pcm_plugin_format** %7, align 8
  store %struct.snd_pcm_plugin_format* %2, %struct.snd_pcm_plugin_format** %8, align 8
  store %struct.snd_pcm_plugin** %3, %struct.snd_pcm_plugin*** %9, align 8
  %13 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  %14 = icmp ne %struct.snd_pcm_plugin** %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %177

22:                                               ; preds = %4
  %23 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %23, align 8
  %24 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @snd_BUG_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %177

37:                                               ; preds = %22
  %38 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %177

48:                                               ; preds = %37
  %49 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @snd_BUG_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %177

60:                                               ; preds = %48
  %61 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @snd_BUG_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %177

72:                                               ; preds = %60
  %73 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @snd_BUG_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %177

86:                                               ; preds = %72
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %88 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %89 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %90 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = add i64 40, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %88, %struct.snd_pcm_plugin_format* %89, i32 %96, %struct.snd_pcm_plugin** %12)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %86
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %5, align 4
  br label %177

102:                                              ; preds = %86
  %103 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.rate_priv*
  store %struct.rate_priv* %106, %struct.rate_priv** %11, align 8
  %107 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %102
  %115 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 1
  %124 = add nsw i32 %119, %123
  %125 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %124, %127
  %129 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %130 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @resample_expand, align 4
  %132 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %133 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  br label %154

134:                                              ; preds = %102
  %135 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %8, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %142, 1
  %144 = add nsw i32 %139, %143
  %145 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %7, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sdiv i32 %144, %147
  %149 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %150 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @resample_shrink, align 4
  %152 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %153 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %134, %114
  %155 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %156 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %158 = call i32 @rate_init(%struct.snd_pcm_plugin* %157)
  %159 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %160 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.rate_priv*, %struct.rate_priv** %11, align 8
  %162 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @rate_transfer, align 4
  %164 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %165 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @rate_src_frames, align 4
  %167 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* @rate_dst_frames, align 4
  %170 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @rate_action, align 4
  %173 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %12, align 8
  %176 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %9, align 8
  store %struct.snd_pcm_plugin* %175, %struct.snd_pcm_plugin** %176, align 8
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %154, %100, %83, %69, %57, %45, %34, %19
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @rate_init(%struct.snd_pcm_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
