; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, %struct.TYPE_4__**, i32, i32 }
%struct.TYPE_4__ = type { %struct.gus_pcm_private*, i8*, i8*, i8* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_gus_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_gf1_mem_block = type { i32 }

@SNDRV_GF1_MEM_OWNER_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"GF1 PCM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_GF1_VOICE_TYPE_PCM = common dso_local global i32 0, align 4
@snd_gf1_pcm_interrupt_wave = common dso_local global i8* null, align 8
@snd_gf1_pcm_interrupt_volume = common dso_local global i8* null, align 8
@snd_gf1_pcm_volume_change = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_gf1_pcm_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.gus_pcm_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_gus_card* %12, %struct.snd_gus_card** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %7, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %17, align 8
  store %struct.gus_pcm_private* %18, %struct.gus_pcm_private** %8, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %20)
  %22 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %19, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %203

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %31 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %36 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %39 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_gf1_mem_free(i32* %37, i32 %40)
  %42 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %43 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %29
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* @SNDRV_GF1_MEM_OWNER_DRIVER, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.snd_gf1_mem_block* @snd_gf1_mem_alloc(i32* %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51, i32 1, i32 32, i32* null)
  store %struct.snd_gf1_mem_block* %52, %struct.snd_gf1_mem_block** %10, align 8
  %53 = icmp eq %struct.snd_gf1_mem_block* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %203

57:                                               ; preds = %44
  %58 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %10, align 8
  %59 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %62 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %26
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i32 @params_channels(%struct.snd_pcm_hw_params* %64)
  %66 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %67 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %69 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp eq %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %118

74:                                               ; preds = %63
  %75 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %76 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SNDRV_GF1_VOICE_TYPE_PCM, align 4
  %79 = call i8* @snd_gf1_alloc_voice(i32 %77, i32 %78, i32 0, i32 0)
  %80 = bitcast i8* %79 to %struct.TYPE_4__*
  %81 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %82 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 0
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %84, align 8
  %85 = icmp eq %struct.TYPE_4__* %80, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %203

89:                                               ; preds = %74
  %90 = load i8*, i8** @snd_gf1_pcm_interrupt_wave, align 8
  %91 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %92 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i8* %90, i8** %96, align 8
  %97 = load i8*, i8** @snd_gf1_pcm_interrupt_volume, align 8
  %98 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %99 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %100, i64 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i8* %97, i8** %103, align 8
  %104 = load i8*, i8** @snd_gf1_pcm_volume_change, align 8
  %105 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %106 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i64 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i8* %104, i8** %110, align 8
  %111 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %112 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %113 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %114, i64 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store %struct.gus_pcm_private* %111, %struct.gus_pcm_private** %117, align 8
  br label %118

118:                                              ; preds = %89, %63
  %119 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %120 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %174

123:                                              ; preds = %118
  %124 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %125 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = icmp eq %struct.TYPE_4__* %128, null
  br i1 %129, label %130, label %174

130:                                              ; preds = %123
  %131 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %132 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SNDRV_GF1_VOICE_TYPE_PCM, align 4
  %135 = call i8* @snd_gf1_alloc_voice(i32 %133, i32 %134, i32 0, i32 0)
  %136 = bitcast i8* %135 to %struct.TYPE_4__*
  %137 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %138 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 1
  store %struct.TYPE_4__* %136, %struct.TYPE_4__** %140, align 8
  %141 = icmp eq %struct.TYPE_4__* %136, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %130
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %203

145:                                              ; preds = %130
  %146 = load i8*, i8** @snd_gf1_pcm_interrupt_wave, align 8
  %147 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %148 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store i8* %146, i8** %152, align 8
  %153 = load i8*, i8** @snd_gf1_pcm_interrupt_volume, align 8
  %154 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %155 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %156, i64 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store i8* %153, i8** %159, align 8
  %160 = load i8*, i8** @snd_gf1_pcm_volume_change, align 8
  %161 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %162 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %163, i64 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store i8* %160, i8** %166, align 8
  %167 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %168 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %169 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store %struct.gus_pcm_private* %167, %struct.gus_pcm_private** %173, align 8
  br label %202

174:                                              ; preds = %123, %118
  %175 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %176 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %201

179:                                              ; preds = %174
  %180 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %181 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %180, i32 0, i32 1
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %182, i64 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = icmp ne %struct.TYPE_4__* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %179
  %187 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %188 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %191 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %192, i64 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = call i32 @snd_gf1_free_voice(i32 %189, %struct.TYPE_4__* %194)
  %196 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %8, align 8
  %197 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %198, i64 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %199, align 8
  br label %200

200:                                              ; preds = %186, %179
  br label %201

201:                                              ; preds = %200, %174
  br label %202

202:                                              ; preds = %201, %145
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %142, %86, %54, %24
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_gf1_mem_free(i32*, i32) #1

declare dso_local %struct.snd_gf1_mem_block* @snd_gf1_mem_alloc(i32*, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @snd_gf1_alloc_voice(i32, i32, i32, i32) #1

declare dso_local i32 @snd_gf1_free_voice(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
