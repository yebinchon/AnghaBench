; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i64, i32, i64, i64, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format }
%struct.snd_pcm_plugin_channel = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.snd_pcm_plugin_format = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, i32)* @snd_pcm_plugin_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_plugin_alloc(%struct.snd_pcm_plugin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_plugin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_plugin_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %17, i32 0, i32 6
  store %struct.snd_pcm_plugin_format* %18, %struct.snd_pcm_plugin_format** %6, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %20, i32 0, i32 5
  store %struct.snd_pcm_plugin_format* %21, %struct.snd_pcm_plugin_format** %6, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_pcm_format_physical_width(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %194

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = urem i64 %39, 8
  %41 = call i64 @snd_BUG_ON(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %194

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = udiv i64 %47, 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @vfree(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @vmalloc(i64 %59)
  %61 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %54, %46
  %67 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %194

76:                                               ; preds = %66
  %77 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %77, i32 0, i32 4
  %79 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %78, align 8
  store %struct.snd_pcm_plugin_channel* %79, %struct.snd_pcm_plugin_channel** %10, align 8
  %80 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %120, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %97 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul i32 %106, %107
  %109 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %92
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %123, i32 1
  store %struct.snd_pcm_plugin_channel* %124, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %86

125:                                              ; preds = %86
  br label %193

126:                                              ; preds = %76
  %127 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %128 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %189

132:                                              ; preds = %126
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = urem i64 %133, %137
  %139 = call i64 @snd_BUG_ON(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %194

144:                                              ; preds = %132
  %145 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %8, align 8
  %150 = udiv i64 %149, %148
  store i64 %150, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %183, %144
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format** %6, align 8
  %154 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ult i32 %152, %155
  br i1 %156, label %157, label %188

157:                                              ; preds = %151
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  %165 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %4, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %8, align 8
  %171 = mul i64 %169, %170
  %172 = add i64 %167, %171
  %173 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  store i64 %172, i64* %175, align 8
  %176 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %177 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %181 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  br label %183

183:                                              ; preds = %157
  %184 = load i32, i32* %9, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %187 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %186, i32 1
  store %struct.snd_pcm_plugin_channel* %187, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %151

188:                                              ; preds = %151
  br label %192

189:                                              ; preds = %126
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %194

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %125
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %189, %141, %71, %43, %28
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i64 @snd_BUG_ON(i64) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i64 @vmalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
