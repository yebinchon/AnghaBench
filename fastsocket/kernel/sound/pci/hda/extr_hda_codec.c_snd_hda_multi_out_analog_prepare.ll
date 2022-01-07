; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_multi_out_analog_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_multi_out = type { i64*, i64, i64, i64*, i64*, i32, i32, i64, i64 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hda_spdif_out = type { i32 }

@HDA_DIG_EXCLUSIVE = common dso_local global i64 0, align 8
@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@HDA_DIG_ANALOG_DUP = common dso_local global i64 0, align 8
@HDA_FRONT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec* %0, %struct.hda_multi_out* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.hda_multi_out*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hda_spdif_out*, align 8
  %14 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.hda_multi_out* %1, %struct.hda_multi_out** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %15 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %16 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %11, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %27 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %28 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec* %26, i64 %29)
  store %struct.hda_spdif_out* %30, %struct.hda_spdif_out** %13, align 8
  %31 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %32 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %5
  %36 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %37 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %42 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HDA_DIG_EXCLUSIVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %51 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %52 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @snd_hda_is_supported_format(%struct.hda_codec* %50, i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %13, align 8
  %59 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* @HDA_DIG_ANALOG_DUP, align 8
  %66 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %67 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %69 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %70 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @setup_dig_out_stream(%struct.hda_codec* %68, i64 %71, i32 %72, i32 %73)
  br label %83

75:                                               ; preds = %57, %49, %46
  %76 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %77 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %79 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %80 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @cleanup_dig_out_stream(%struct.hda_codec* %78, i64 %81)
  br label %83

83:                                               ; preds = %75, %64
  br label %84

84:                                               ; preds = %83, %40, %35, %5
  %85 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %86 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* @HDA_FRONT, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %88, i64 %92, i32 %93, i32 0, i32 %94)
  %96 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %97 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %84
  %101 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %102 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %100
  %106 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %107 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* @HDA_FRONT, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %105
  %115 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %116 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %117 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %115, i64 %118, i32 %119, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %114, %105, %100, %84
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %157, %122
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %126 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @ARRAY_SIZE(i64* %127)
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %123
  %131 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %132 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %130
  %136 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %137 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %135
  %145 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %146 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %147 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %146, i32 0, i32 3
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %145, i64 %152, i32 %153, i32 0, i32 %154)
  br label %156

156:                                              ; preds = %144, %135, %130
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %123

160:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %195, %160
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %164 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %163, i32 0, i32 4
  %165 = load i64*, i64** %164, align 8
  %166 = call i32 @ARRAY_SIZE(i64* %165)
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %161
  %169 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %170 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %194, label %173

173:                                              ; preds = %168
  %174 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %175 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %174, i32 0, i32 4
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %173
  %183 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %184 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %185 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %184, i32 0, i32 4
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %183, i64 %190, i32 %191, i32 0, i32 %192)
  br label %194

194:                                              ; preds = %182, %173, %168
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %161

198:                                              ; preds = %161
  store i32 1, i32* %14, align 4
  br label %199

199:                                              ; preds = %240, %198
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %202 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %243

205:                                              ; preds = %199
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  %209 = mul nsw i32 %208, 2
  %210 = icmp sge i32 %206, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %213 = load i64*, i64** %11, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %14, align 4
  %220 = mul nsw i32 %219, 2
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %212, i64 %217, i32 %218, i32 %220, i32 %221)
  br label %239

223:                                              ; preds = %205
  %224 = load %struct.hda_multi_out*, %struct.hda_multi_out** %7, align 8
  %225 = getelementptr inbounds %struct.hda_multi_out, %struct.hda_multi_out* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %223
  %229 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %230 = load i64*, i64** %11, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @snd_hda_codec_setup_stream(%struct.hda_codec* %229, i64 %234, i32 %235, i32 0, i32 %236)
  br label %238

238:                                              ; preds = %228, %223
  br label %239

239:                                              ; preds = %238, %211
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %199

243:                                              ; preds = %199
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec*, i64) #1

declare dso_local i64 @snd_hda_is_supported_format(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @setup_dig_out_stream(%struct.hda_codec*, i64, i32, i32) #1

declare dso_local i32 @cleanup_dig_out_stream(%struct.hda_codec*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_hda_codec_setup_stream(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
