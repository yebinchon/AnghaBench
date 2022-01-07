; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32, i64, %struct.snd_pcm*, i64, %struct.TYPE_5__, i32, i32, %struct.snd_card* }
%struct.snd_pcm = type { i64, i32, %struct.TYPE_4__*, i32, i32, %struct.snd_gus_card* }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"AMD InterWave\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GF1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_gf1_pcm_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_gf1_pcm_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" rev %c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (synth)\00", align 1
@snd_gf1_pcm_volume_control1 = common dso_local global i32 0, align 4
@snd_gf1_pcm_volume_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_pcm_new(%struct.snd_gus_card* %0, i32 %1, i32 %2, %struct.snd_pcm** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm**, align 8
  %10 = alloca %struct.snd_card*, align 8
  %11 = alloca %struct.snd_kcontrol*, align 8
  %12 = alloca %struct.snd_pcm*, align 8
  %13 = alloca %struct.snd_pcm_substream*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_pcm** %3, %struct.snd_pcm*** %9, align 8
  %16 = load %struct.snd_pcm**, %struct.snd_pcm*** %9, align 8
  %17 = icmp ne %struct.snd_pcm** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.snd_pcm**, %struct.snd_pcm*** %9, align 8
  store %struct.snd_pcm* null, %struct.snd_pcm** %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 7
  %23 = load %struct.snd_card*, %struct.snd_card** %22, align 8
  store %struct.snd_card* %23, %struct.snd_card** %10, align 8
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %25 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %20
  %29 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %30 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %35 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %33, %28, %20
  %40 = phi i1 [ false, %28 ], [ false, %20 ], [ %38, %33 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %14, align 4
  %43 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %44 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %45 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %52 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 2
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @snd_pcm_new(%struct.snd_card* %43, i8* %49, i32 %50, i32 %55, i32 %56, %struct.snd_pcm** %12)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %202

62:                                               ; preds = %39
  %63 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %64 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %65 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %64, i32 0, i32 5
  store %struct.snd_gus_card* %63, %struct.snd_gus_card** %65, align 8
  %66 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %67 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %68 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %66, i64 %67, i32* @snd_gf1_pcm_playback_ops)
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %70 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %74, align 8
  store %struct.snd_pcm_substream* %75, %struct.snd_pcm_substream** %13, align 8
  br label %76

76:                                               ; preds = %91, %62
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %78 = icmp ne %struct.snd_pcm_substream* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %81 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %82 = call i32 (...) @snd_dma_isa_data()
  %83 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %84 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 3
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 131072, i32 65536
  %90 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %80, i32 %81, i32 %82, i32 65536, i32 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %93, align 8
  store %struct.snd_pcm_substream* %94, %struct.snd_pcm_substream** %13, align 8
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %97 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %96, i32 0, i32 3
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %99 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %100 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %95
  %104 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %105 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %106 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %104, i64 %105, i32* @snd_gf1_pcm_capture_ops)
  %107 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %108 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %112 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %118 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %119 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %103
  %123 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %124 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %128, align 8
  %130 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %131 = call i32 (...) @snd_dma_isa_data()
  %132 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %133 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 3
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 131072, i32 65536
  %139 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %129, i32 %130, i32 %131, i32 65536, i32 %138)
  br label %140

140:                                              ; preds = %122, %95
  %141 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %142 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %145 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strcpy(i64 %143, i32 %146)
  %148 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %149 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %140
  %153 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %154 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %157 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @strlen(i64 %158)
  %160 = add nsw i64 %155, %159
  %161 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %162 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 65
  %165 = call i32 @sprintf(i64 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %152, %140
  %167 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %168 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @strcat(i64 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %172 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %173 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %172, i32 0, i32 2
  store %struct.snd_pcm* %171, %struct.snd_pcm** %173, align 8
  %174 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %175 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %180 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_gf1_pcm_volume_control1, %struct.snd_gus_card* %179)
  store %struct.snd_kcontrol* %180, %struct.snd_kcontrol** %11, align 8
  br label %184

181:                                              ; preds = %166
  %182 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %183 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_gf1_pcm_volume_control, %struct.snd_gus_card* %182)
  store %struct.snd_kcontrol* %183, %struct.snd_kcontrol** %11, align 8
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  %186 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %187 = call i32 @snd_ctl_add(%struct.snd_card* %185, %struct.snd_kcontrol* %186)
  store i32 %187, i32* %15, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %15, align 4
  store i32 %190, i32* %5, align 4
  br label %202

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %194 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 4
  %196 = load %struct.snd_pcm**, %struct.snd_pcm*** %9, align 8
  %197 = icmp ne %struct.snd_pcm** %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load %struct.snd_pcm*, %struct.snd_pcm** %12, align 8
  %200 = load %struct.snd_pcm**, %struct.snd_pcm*** %9, align 8
  store %struct.snd_pcm* %199, %struct.snd_pcm** %200, align 8
  br label %201

201:                                              ; preds = %198, %191
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %189, %60
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_isa_data(...) #1

declare dso_local i32 @strcpy(i64, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @strcat(i64, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_gus_card*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
