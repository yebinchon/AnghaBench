; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.snd_riptide = type { i32, %struct.cmdif* }
%struct.cmdif = type { i32 }
%struct.pcmhw = type { i32, i32, i32, i8*, i32, i64, i32, i32, i32, i32, %struct.sgd*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.sgd = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"prepare id %d ch: %d f:0x%x r:%d\0A\00", align 1
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"use sgdlist at 0x%p\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"create sgd size: 0x%x pages %d of size 0x%x for period 0x%x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IEOB_ENABLE = common dso_local global i32 0, align 4
@IEOS_ENABLE = common dso_local global i32 0, align 4
@IEOC_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_riptide*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.pcmhw*, align 8
  %7 = alloca %struct.cmdif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sgd*, align 8
  %21 = alloca %struct.sgd*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %24)
  store %struct.snd_riptide* %25, %struct.snd_riptide** %4, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %5, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = call %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream* %29)
  store %struct.pcmhw* %30, %struct.pcmhw** %6, align 8
  %31 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %32 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %31, i32 0, i32 1
  %33 = load %struct.cmdif*, %struct.cmdif** %32, align 8
  store %struct.cmdif* %33, %struct.cmdif** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %34 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %35 = icmp ne %struct.cmdif* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %38 = icmp ne %struct.pcmhw* %37, null
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %1
  %41 = phi i1 [ true, %1 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @snd_BUG_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %356

48:                                               ; preds = %40
  %49 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %50 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %63 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %12, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  switch i32 %75, label %112 [
    i32 1, label %76
    i32 2, label %94
  ]

76:                                               ; preds = %48
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 48000
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %85 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %8, align 8
  br label %93

88:                                               ; preds = %79, %76
  %89 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %90 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %89, i32 0, i32 12
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %112

94:                                               ; preds = %48
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 48000
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %103 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %102, i32 0, i32 12
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %8, align 8
  br label %111

106:                                              ; preds = %97, %94
  %107 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %108 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %8, align 8
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %48, %111, %93
  %113 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %114 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %120 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %119, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %260

124:                                              ; preds = %112
  store %struct.sgd* null, %struct.sgd** %21, align 8
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %125, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %130, i32 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %152, %124
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %17, align 4
  %139 = lshr i32 %138, 1
  %140 = add i32 %137, %139
  %141 = sub i32 %140, 1
  %142 = load i32, i32* %17, align 4
  %143 = shl i32 %142, 7
  %144 = icmp ule i32 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load i32, i32* %17, align 4
  %147 = shl i32 %146, 1
  %148 = load i32, i32* %19, align 4
  %149 = icmp ugt i32 %147, %148
  br label %150

150:                                              ; preds = %145, %136
  %151 = phi i1 [ false, %136 ], [ %149, %145 ]
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load i32, i32* %17, align 4
  %154 = lshr i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %136

155:                                              ; preds = %150
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add i32 %156, %157
  %159 = sub i32 %158, 1
  %160 = load i32, i32* %17, align 4
  %161 = udiv i32 %159, %160
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %164 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %167 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %19, align 4
  %172 = call i32 (i8*, i32, ...) @snd_printdd(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %169, i32 %170, i32 %171)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %173

173:                                              ; preds = %247, %155
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %16, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %250

177:                                              ; preds = %173
  %178 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %179 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %178, i32 0, i32 10
  %180 = load %struct.sgd*, %struct.sgd** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.sgd, %struct.sgd* %180, i64 %182
  store %struct.sgd* %183, %struct.sgd** %20, align 8
  %184 = load %struct.sgd*, %struct.sgd** %21, align 8
  %185 = icmp ne %struct.sgd* %184, null
  br i1 %185, label %186, label %200

186:                                              ; preds = %177
  %187 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %188 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %187, i32 0, i32 11
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = zext i32 %190 to i64
  %192 = load i32, i32* %13, align 4
  %193 = zext i32 %192 to i64
  %194 = mul i64 %193, 32
  %195 = add i64 %191, %194
  %196 = trunc i64 %195 to i32
  %197 = call i8* @cpu_to_le32(i32 %196)
  %198 = load %struct.sgd*, %struct.sgd** %21, align 8
  %199 = getelementptr inbounds %struct.sgd, %struct.sgd* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %186, %177
  %201 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %202 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %201, i32 0, i32 11
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.sgd*, %struct.sgd** %20, align 8
  %207 = getelementptr inbounds %struct.sgd, %struct.sgd* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @PAGE_SHIFT, align 4
  %210 = shl i32 %208, %209
  store i32 %210, i32* %22, align 4
  %211 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %212 = load i32, i32* %22, align 4
  %213 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %211, i32 %212)
  %214 = load i32, i32* %18, align 4
  %215 = add i32 %213, %214
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %23, align 4
  %217 = call i8* @cpu_to_le32(i32 %216)
  %218 = load %struct.sgd*, %struct.sgd** %20, align 8
  %219 = getelementptr inbounds %struct.sgd, %struct.sgd* %218, i32 0, i32 2
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %17, align 4
  %222 = add i32 %220, %221
  %223 = load i32, i32* @PAGE_SIZE, align 4
  %224 = urem i32 %222, %223
  store i32 %224, i32* %18, align 4
  %225 = load i32, i32* %18, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %200
  %228 = load i32, i32* %14, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %227, %200
  %231 = load i32, i32* %17, align 4
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.sgd*, %struct.sgd** %20, align 8
  %234 = getelementptr inbounds %struct.sgd, %struct.sgd* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* @IEOB_ENABLE, align 4
  %236 = load i32, i32* @IEOS_ENABLE, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @IEOC_ENABLE, align 4
  %239 = or i32 %237, %238
  %240 = call i8* @cpu_to_le32(i32 %239)
  %241 = load %struct.sgd*, %struct.sgd** %20, align 8
  %242 = getelementptr inbounds %struct.sgd, %struct.sgd* %241, i32 0, i32 1
  store i8* %240, i8** %242, align 8
  %243 = load %struct.sgd*, %struct.sgd** %20, align 8
  store %struct.sgd* %243, %struct.sgd** %21, align 8
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %15, align 4
  %246 = sub i32 %245, %244
  store i32 %246, i32* %15, align 4
  br label %247

247:                                              ; preds = %230
  %248 = load i32, i32* %13, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %13, align 4
  br label %173

250:                                              ; preds = %173
  %251 = load i32, i32* %15, align 4
  %252 = call i8* @cpu_to_le32(i32 %251)
  %253 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %254 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %253, i32 0, i32 10
  %255 = load %struct.sgd*, %struct.sgd** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.sgd, %struct.sgd* %255, i64 %257
  %259 = getelementptr inbounds %struct.sgd, %struct.sgd* %258, i32 0, i32 0
  store i8* %252, i8** %259, align 8
  br label %260

260:                                              ; preds = %250, %112
  %261 = load i8*, i8** %8, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %300

263:                                              ; preds = %260
  %264 = load i8*, i8** %8, align 8
  %265 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %266 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %264, %267
  br i1 %268, label %269, label %300

269:                                              ; preds = %263
  %270 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %271 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %270, i32 0, i32 3
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %283

274:                                              ; preds = %269
  %275 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %276 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %277 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %280 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %279, i32 0, i32 3
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @freelbuspath(%struct.cmdif* %275, i32 %278, i8* %281)
  br label %283

283:                                              ; preds = %274, %269
  %284 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %285 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %286 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %285, i32 0, i32 9
  %287 = load i32, i32* %286, align 4
  %288 = load i8*, i8** %8, align 8
  %289 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %290 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %289, i32 0, i32 8
  %291 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %292 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @alloclbuspath(%struct.cmdif* %284, i32 %287, i8* %288, i32* %290, i32 %293)
  %295 = load i8*, i8** %8, align 8
  %296 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %297 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %296, i32 0, i32 3
  store i8* %295, i8** %297, align 8
  %298 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %299 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %298, i32 0, i32 4
  store i32 0, i32* %299, align 8
  br label %300

300:                                              ; preds = %283, %263, %260
  %301 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %302 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %318, label %306

306:                                              ; preds = %300
  %307 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %308 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %12, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %318, label %312

312:                                              ; preds = %306
  %313 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %314 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %351

318:                                              ; preds = %312, %306, %300
  %319 = load i32, i32* %9, align 4
  %320 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %321 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 8
  %322 = load i64, i64* %12, align 8
  %323 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %324 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %323, i32 0, i32 5
  store i64 %322, i64* %324, align 8
  %325 = load i32, i32* %10, align 4
  %326 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %327 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %326, i32 0, i32 6
  store i32 %325, i32* %327, align 8
  %328 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %329 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %330 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %333 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = load i64, i64* %12, align 8
  %337 = call i64 @setsampleformat(%struct.cmdif* %328, i32 %331, i32 %334, i32 %335, i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %318
  %340 = load %struct.cmdif*, %struct.cmdif** %7, align 8
  %341 = load %struct.pcmhw*, %struct.pcmhw** %6, align 8
  %342 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %9, align 4
  %345 = call i64 @setsamplerate(%struct.cmdif* %340, i32 %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %339, %318
  %348 = load i32, i32* @EIO, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %11, align 4
  br label %350

350:                                              ; preds = %347, %339
  br label %351

351:                                              ; preds = %350, %312
  %352 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %353 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %352, i32 0, i32 0
  %354 = call i32 @spin_unlock_irq(i32* %353)
  %355 = load i32, i32* %11, align 4
  store i32 %355, i32* %2, align 4
  br label %356

356:                                              ; preds = %351, %45
  %357 = load i32, i32* %2, align 4
  ret i32 %357
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @freelbuspath(%struct.cmdif*, i32, i8*) #1

declare dso_local i32 @alloclbuspath(%struct.cmdif*, i32, i8*, i32*, i32) #1

declare dso_local i64 @setsampleformat(%struct.cmdif*, i32, i32, i32, i64) #1

declare dso_local i64 @setsamplerate(%struct.cmdif*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
