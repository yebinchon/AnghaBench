; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_resample_expand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_resample_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.rate_priv = type { i32, i64, %struct.rate_channel* }
%struct.rate_channel = type { i16, i16 }

@R_MASK = common dso_local global i32 0, align 4
@BITS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32, i32)* @resample_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resample_expand(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rate_priv*, align 8
  %23 = alloca %struct.rate_channel*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rate_priv*
  store %struct.rate_priv* %27, %struct.rate_priv** %22, align 8
  %28 = load %struct.rate_priv*, %struct.rate_priv** %22, align 8
  %29 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %28, i32 0, i32 2
  %30 = load %struct.rate_channel*, %struct.rate_channel** %29, align 8
  store %struct.rate_channel* %30, %struct.rate_channel** %23, align 8
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %217, %5
  %32 = load i32, i32* %17, align 4
  %33 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %220

38:                                               ; preds = %31
  %39 = load %struct.rate_priv*, %struct.rate_priv** %22, align 8
  %40 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.rate_channel*, %struct.rate_channel** %23, align 8
  %43 = getelementptr inbounds %struct.rate_channel, %struct.rate_channel* %42, i32 0, i32 0
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %13, align 2
  %45 = load %struct.rate_channel*, %struct.rate_channel** %23, align 8
  %46 = getelementptr inbounds %struct.rate_channel, %struct.rate_channel* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %14, align 2
  %48 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %48, i64 %50
  %52 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %38
  %56 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %57 = load i32, i32* %17, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %56, i64 %58
  %60 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %64, i64 %66
  %68 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %67, i32 0, i32 1
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snd_pcm_area_silence(%struct.TYPE_6__* %68, i32 0, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %63, %55
  %76 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %77 = load i32, i32* %17, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %76, i64 %78
  %80 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %217

81:                                               ; preds = %38
  %82 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %83 = load i32, i32* %17, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %82, i64 %84
  %86 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %87, i64 %89
  %91 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i16*
  %95 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %96 = load i32, i32* %17, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %95, i64 %97
  %99 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %101, 8
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %94, i64 %104
  store i16* %105, i16** %15, align 8
  %106 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %106, i64 %108
  %110 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i16*
  %114 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %115 = load i32, i32* %17, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %114, i64 %116
  %118 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 8
  %122 = sdiv i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %113, i64 %123
  store i16* %124, i16** %16, align 8
  %125 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %126 = load i32, i32* %17, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %125, i64 %127
  %129 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %131, 8
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %18, align 4
  %134 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %135 = load i32, i32* %17, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %134, i64 %136
  %138 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 8
  %142 = sdiv i32 %141, 2
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %21, align 4
  br label %145

145:                                              ; preds = %193, %81
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %21, align 4
  %148 = icmp sgt i32 %146, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @R_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load i32, i32* @R_MASK, align 4
  %157 = load i32, i32* %11, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %11, align 4
  %159 = load i16, i16* %14, align 2
  store i16 %159, i16* %13, align 2
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %20, align 4
  %162 = icmp sgt i32 %160, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i16*, i16** %15, align 8
  %165 = load i16, i16* %164, align 2
  store i16 %165, i16* %14, align 2
  %166 = load i32, i32* %18, align 4
  %167 = load i16*, i16** %15, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i16, i16* %167, i64 %168
  store i16* %169, i16** %15, align 8
  br label %170

170:                                              ; preds = %163, %155
  br label %171

171:                                              ; preds = %170, %149
  %172 = load i16, i16* %13, align 2
  %173 = sext i16 %172 to i32
  %174 = load i16, i16* %14, align 2
  %175 = sext i16 %174 to i32
  %176 = load i16, i16* %13, align 2
  %177 = sext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  %179 = load i32, i32* %11, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i16, i16* @BITS, align 2
  %182 = sext i16 %181 to i32
  %183 = sdiv i32 %180, %182
  %184 = add nsw i32 %173, %183
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %185, -32768
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  store i32 -32768, i32* %12, align 4
  br label %193

188:                                              ; preds = %171
  %189 = load i32, i32* %12, align 4
  %190 = icmp sgt i32 %189, 32767
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 32767, i32* %12, align 4
  br label %192

192:                                              ; preds = %191, %188
  br label %193

193:                                              ; preds = %192, %187
  %194 = load i32, i32* %12, align 4
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %16, align 8
  store i16 %195, i16* %196, align 2
  %197 = load i32, i32* %19, align 4
  %198 = load i16*, i16** %16, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i16, i16* %198, i64 %199
  store i16* %200, i16** %16, align 8
  %201 = load %struct.rate_priv*, %struct.rate_priv** %22, align 8
  %202 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = zext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %11, align 4
  br label %145

208:                                              ; preds = %145
  %209 = load i16, i16* %13, align 2
  %210 = load %struct.rate_channel*, %struct.rate_channel** %23, align 8
  %211 = getelementptr inbounds %struct.rate_channel, %struct.rate_channel* %210, i32 0, i32 0
  store i16 %209, i16* %211, align 2
  %212 = load i16, i16* %14, align 2
  %213 = load %struct.rate_channel*, %struct.rate_channel** %23, align 8
  %214 = getelementptr inbounds %struct.rate_channel, %struct.rate_channel* %213, i32 0, i32 1
  store i16 %212, i16* %214, align 2
  %215 = load %struct.rate_channel*, %struct.rate_channel** %23, align 8
  %216 = getelementptr inbounds %struct.rate_channel, %struct.rate_channel* %215, i32 1
  store %struct.rate_channel* %216, %struct.rate_channel** %23, align 8
  br label %217

217:                                              ; preds = %208, %75
  %218 = load i32, i32* %17, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %17, align 4
  br label %31

220:                                              ; preds = %31
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.rate_priv*, %struct.rate_priv** %22, align 8
  %223 = getelementptr inbounds %struct.rate_priv, %struct.rate_priv* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  ret void
}

declare dso_local i32 @snd_pcm_area_silence(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
