; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_dai* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.TYPE_4__*, i32 }
%struct.omap_mcbsp_data = type { i32, i32, i32, %struct.omap_mcbsp_reg_cfg }
%struct.omap_mcbsp_reg_cfg = type { i32, i32, i32, i32, i32, i32 }

@OMAP_DMA_SYNC_ELEMENT = common dso_local global i32 0, align 4
@omap1_dma_reqs = common dso_local global i32** null, align 8
@omap1_mcbsp_port = common dso_local global i64** null, align 8
@omap24xx_dma_reqs = common dso_local global i32** null, align 8
@omap2420_mcbsp_port = common dso_local global i64** null, align 8
@omap2430_mcbsp_port = common dso_local global i64** null, align 8
@omap34xx_mcbsp_port = common dso_local global i64** null, align 8
@omap_mcbsp_set_threshold = common dso_local global i32 0, align 4
@omap_mcbsp_dai_dma_params = common dso_local global %struct.TYPE_4__** null, align 8
@MCBSP_DMA_MODE_THRESHOLD = common dso_local global i64 0, align 8
@OMAP_DMA_SYNC_FRAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Audio Capture\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Audio Playback\00", align 1
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RPHASE = common dso_local global i32 0, align 4
@XPHASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP_MCBSP_WORD_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @omap_mcbsp_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.omap_mcbsp_data*, align 8
  %11 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %22, align 8
  store %struct.snd_soc_pcm_runtime* %23, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %27, align 8
  store %struct.snd_soc_dai* %28, %struct.snd_soc_dai** %9, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.omap_mcbsp_data* @to_mcbsp(i32 %31)
  store %struct.omap_mcbsp_data* %32, %struct.omap_mcbsp_data** %10, align 8
  %33 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %33, i32 0, i32 3
  store %struct.omap_mcbsp_reg_cfg* %34, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %35 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %36 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @OMAP_DMA_SYNC_ELEMENT, align 4
  store i32 %41, i32* %18, align 4
  %42 = call i64 (...) @cpu_class_is_omap1()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %3
  %45 = load i32**, i32*** @omap1_dma_reqs, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i64**, i64*** @omap1_mcbsp_port, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64*, i64** %55, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %19, align 8
  br label %161

65:                                               ; preds = %3
  %66 = call i64 (...) @cpu_is_omap2420()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i32**, i32*** @omap24xx_dma_reqs, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i64**, i64*** @omap2420_mcbsp_port, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %19, align 8
  br label %160

89:                                               ; preds = %65
  %90 = call i64 (...) @cpu_is_omap2430()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load i32**, i32*** @omap24xx_dma_reqs, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i64**, i64*** @omap2430_mcbsp_port, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64*, i64** %103, i64 %105
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %109 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %19, align 8
  br label %159

113:                                              ; preds = %89
  %114 = call i64 (...) @cpu_is_omap343x()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %113
  %117 = load i32**, i32*** @omap24xx_dma_reqs, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i64**, i64*** @omap34xx_mcbsp_port, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64*, i64** %127, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %133 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %19, align 8
  %137 = load i32, i32* @omap_mcbsp_set_threshold, align 4
  %138 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %138, i64 %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  store i32 %137, i32* %147, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i64 @omap_mcbsp_get_dma_op_mode(i32 %148)
  %150 = load i64, i64* @MCBSP_DMA_MODE_THRESHOLD, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %116
  %153 = load i32, i32* @OMAP_DMA_SYNC_FRAME, align 4
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %152, %116
  br label %158

155:                                              ; preds = %113
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %357

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %92
  br label %160

160:                                              ; preds = %159, %68
  br label %161

161:                                              ; preds = %160, %44
  %162 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)
  %168 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %168, i64 %170
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i8* %167, i8** %177, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %179, i64 %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %185 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i32 %178, i32* %188, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %190, i64 %192
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %196 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  store i64 %189, i64* %199, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %201, i64 %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %207 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  store i32 %200, i32* %210, align 8
  %211 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @omap_mcbsp_dai_dma_params, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %211, i64 %213
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %217 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %218
  %220 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %221 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %220, i32 0, i32 1
  store %struct.TYPE_4__* %219, %struct.TYPE_4__** %221, align 8
  %222 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %223 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %357

227:                                              ; preds = %161
  %228 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %229 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %232 = and i32 %230, %231
  store i32 %232, i32* %20, align 4
  %233 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %234 = call i32 @params_channels(%struct.snd_pcm_hw_params* %233)
  store i32 %234, i32* %16, align 4
  store i32 %234, i32* %17, align 4
  %235 = load i32, i32* %16, align 4
  switch i32 %235, label %282 [
    i32 2, label %236
    i32 1, label %267
    i32 4, label %267
  ]

236:                                              ; preds = %227
  %237 = load i32, i32* %20, align 4
  %238 = icmp eq i32 %237, 128
  br i1 %238, label %239, label %266

239:                                              ; preds = %236
  %240 = load i32, i32* @RPHASE, align 4
  %241 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %242 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* @XPHASE, align 4
  %246 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %247 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = load i32, i32* %17, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = sub nsw i32 %252, 1
  %254 = call i32 @RFRLEN2(i32 %253)
  %255 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %256 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %17, align 4
  %260 = sub nsw i32 %259, 1
  %261 = call i32 @XFRLEN2(i32 %260)
  %262 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %263 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %239, %236
  br label %267

267:                                              ; preds = %227, %227, %266
  %268 = load i32, i32* %17, align 4
  %269 = sub nsw i32 %268, 1
  %270 = call i32 @RFRLEN1(i32 %269)
  %271 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %272 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %17, align 4
  %276 = sub nsw i32 %275, 1
  %277 = call i32 @XFRLEN1(i32 %276)
  %278 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %279 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %285

282:                                              ; preds = %227
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %357

285:                                              ; preds = %267
  %286 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %287 = call i32 @params_format(%struct.snd_pcm_hw_params* %286)
  switch i32 %287, label %313 [
    i32 131, label %288
  ]

288:                                              ; preds = %285
  store i32 16, i32* %15, align 4
  %289 = load i32, i32* @OMAP_MCBSP_WORD_16, align 4
  %290 = call i32 @RWDLEN2(i32 %289)
  %291 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %292 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load i32, i32* @OMAP_MCBSP_WORD_16, align 4
  %296 = call i32 @RWDLEN1(i32 %295)
  %297 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %298 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* @OMAP_MCBSP_WORD_16, align 4
  %302 = call i32 @XWDLEN2(i32 %301)
  %303 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %304 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* @OMAP_MCBSP_WORD_16, align 4
  %308 = call i32 @XWDLEN1(i32 %307)
  %309 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %310 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %311, %308
  store i32 %312, i32* %310, align 4
  br label %316

313:                                              ; preds = %285
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %4, align 4
  br label %357

316:                                              ; preds = %288
  %317 = load i32, i32* %20, align 4
  switch i32 %317, label %350 [
    i32 128, label %318
    i32 130, label %335
    i32 129, label %335
  ]

318:                                              ; preds = %316
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %16, align 4
  %321 = mul nsw i32 %319, %320
  %322 = sub nsw i32 %321, 1
  %323 = call i32 @FPER(i32 %322)
  %324 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %325 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load i32, i32* %15, align 4
  %329 = sub nsw i32 %328, 1
  %330 = call i32 @FWID(i32 %329)
  %331 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %332 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %350

335:                                              ; preds = %316, %316
  %336 = load i32, i32* %15, align 4
  %337 = load i32, i32* %16, align 4
  %338 = mul nsw i32 %336, %337
  %339 = sub nsw i32 %338, 1
  %340 = call i32 @FPER(i32 %339)
  %341 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %342 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = call i32 @FWID(i32 0)
  %346 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %11, align 8
  %347 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %316, %335, %318
  %351 = load i32, i32* %13, align 4
  %352 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %353 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %352, i32 0, i32 3
  %354 = call i32 @omap_mcbsp_config(i32 %351, %struct.omap_mcbsp_reg_cfg* %353)
  %355 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %10, align 8
  %356 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %355, i32 0, i32 1
  store i32 1, i32* %356, align 4
  store i32 0, i32* %4, align 4
  br label %357

357:                                              ; preds = %350, %313, %282, %226, %155
  %358 = load i32, i32* %4, align 4
  ret i32 %358
}

declare dso_local %struct.omap_mcbsp_data* @to_mcbsp(i32) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i64 @cpu_is_omap2420(...) #1

declare dso_local i64 @cpu_is_omap2430(...) #1

declare dso_local i64 @cpu_is_omap343x(...) #1

declare dso_local i64 @omap_mcbsp_get_dma_op_mode(i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @RFRLEN2(i32) #1

declare dso_local i32 @XFRLEN2(i32) #1

declare dso_local i32 @RFRLEN1(i32) #1

declare dso_local i32 @XFRLEN1(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @RWDLEN2(i32) #1

declare dso_local i32 @RWDLEN1(i32) #1

declare dso_local i32 @XWDLEN2(i32) #1

declare dso_local i32 @XWDLEN1(i32) #1

declare dso_local i32 @FPER(i32) #1

declare dso_local i32 @FWID(i32) #1

declare dso_local i32 @omap_mcbsp_config(i32, %struct.omap_mcbsp_reg_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
