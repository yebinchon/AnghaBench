; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.azx_dev*, %struct.TYPE_4__ }
%struct.azx_dev = type { i64, %struct.snd_pcm_substream* }
%struct.azx_pcm = type { i32, %struct.azx*, %struct.hda_pcm_stream** }
%struct.azx = type { i32, i32, i64 }
%struct.hda_pcm_stream = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.1*, i32, %struct.snd_pcm_substream*)* }
%struct.hda_pcm_stream.0 = type opaque
%struct.hda_pcm_stream.1 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@azx_pcm_hw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @azx_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.azx_pcm*, align 8
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.azx*, align 8
  %7 = alloca %struct.azx_dev*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.azx_pcm* %13, %struct.azx_pcm** %4, align 8
  %14 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %15 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %14, i32 0, i32 2
  %16 = load %struct.hda_pcm_stream**, %struct.hda_pcm_stream*** %15, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %16, i64 %19
  %21 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %20, align 8
  store %struct.hda_pcm_stream* %21, %struct.hda_pcm_stream** %5, align 8
  %22 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %22, i32 0, i32 1
  %24 = load %struct.azx*, %struct.azx** %23, align 8
  store %struct.azx* %24, %struct.azx** %6, align 8
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 1
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %26, align 8
  store %struct.snd_pcm_runtime* %27, %struct.snd_pcm_runtime** %8, align 8
  %28 = load %struct.azx*, %struct.azx** %6, align 8
  %29 = getelementptr inbounds %struct.azx, %struct.azx* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.azx*, %struct.azx** %6, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %33 = call %struct.azx_dev* @azx_assign_device(%struct.azx* %31, %struct.snd_pcm_substream* %32)
  store %struct.azx_dev* %33, %struct.azx_dev** %7, align 8
  %34 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %35 = icmp eq %struct.azx_dev* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.azx*, %struct.azx** %6, align 8
  %38 = getelementptr inbounds %struct.azx, %struct.azx* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %205

42:                                               ; preds = %1
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  %45 = bitcast %struct.TYPE_4__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 bitcast (%struct.TYPE_4__* @azx_pcm_hw to i8*), i64 16, i1 false)
  %46 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %47 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %53 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %59 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %65 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %71 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %70)
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %73 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %74 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %72, i32 %73)
  %75 = load %struct.azx*, %struct.azx** %6, align 8
  %76 = getelementptr inbounds %struct.azx, %struct.azx* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %42
  store i32 128, i32* %11, align 4
  br label %81

80:                                               ; preds = %42
  store i32 4, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %83 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %82, i32 0, i32 %83, i32 %84)
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %87 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %86, i32 0, i32 %87, i32 %88)
  %90 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %91 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snd_hda_power_up_d3wait(i32 %92)
  %94 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %95 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.0*, i32, %struct.snd_pcm_substream*)** %96, align 8
  %98 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %99 = bitcast %struct.hda_pcm_stream* %98 to %struct.hda_pcm_stream.0*
  %100 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %101 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %104 = call i32 %97(%struct.hda_pcm_stream.0* %99, i32 %102, %struct.snd_pcm_substream* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %81
  %108 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %109 = call i32 @azx_release_device(%struct.azx_dev* %108)
  %110 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %111 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @snd_hda_power_down(i32 %112)
  %114 = load %struct.azx*, %struct.azx** %6, align 8
  %115 = getelementptr inbounds %struct.azx, %struct.azx* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %205

118:                                              ; preds = %81
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %120 = call i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime* %119)
  %121 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @snd_BUG_ON(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %160, label %130

130:                                              ; preds = %118
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i64 @snd_BUG_ON(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %130
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i64 @snd_BUG_ON(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %140
  %151 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %152 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i64 @snd_BUG_ON(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %150, %140, %130, %118
  %161 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %162 = call i32 @azx_release_device(%struct.azx_dev* %161)
  %163 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %164 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32 (%struct.hda_pcm_stream.1*, i32, %struct.snd_pcm_substream*)*, i32 (%struct.hda_pcm_stream.1*, i32, %struct.snd_pcm_substream*)** %165, align 8
  %167 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %168 = bitcast %struct.hda_pcm_stream* %167 to %struct.hda_pcm_stream.1*
  %169 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %170 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %173 = call i32 %166(%struct.hda_pcm_stream.1* %168, i32 %171, %struct.snd_pcm_substream* %172)
  %174 = load %struct.azx_pcm*, %struct.azx_pcm** %4, align 8
  %175 = getelementptr inbounds %struct.azx_pcm, %struct.azx_pcm* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @snd_hda_power_down(i32 %176)
  %178 = load %struct.azx*, %struct.azx** %6, align 8
  %179 = getelementptr inbounds %struct.azx, %struct.azx* %178, i32 0, i32 0
  %180 = call i32 @mutex_unlock(i32* %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %2, align 4
  br label %205

183:                                              ; preds = %150
  %184 = load %struct.azx*, %struct.azx** %6, align 8
  %185 = getelementptr inbounds %struct.azx, %struct.azx* %184, i32 0, i32 1
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %189 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %190 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %189, i32 0, i32 1
  store %struct.snd_pcm_substream* %188, %struct.snd_pcm_substream** %190, align 8
  %191 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %192 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.azx*, %struct.azx** %6, align 8
  %194 = getelementptr inbounds %struct.azx, %struct.azx* %193, i32 0, i32 1
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @spin_unlock_irqrestore(i32* %194, i64 %195)
  %197 = load %struct.azx_dev*, %struct.azx_dev** %7, align 8
  %198 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %199 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %198, i32 0, i32 0
  store %struct.azx_dev* %197, %struct.azx_dev** %199, align 8
  %200 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %201 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %200)
  %202 = load %struct.azx*, %struct.azx** %6, align 8
  %203 = getelementptr inbounds %struct.azx, %struct.azx* %202, i32 0, i32 0
  %204 = call i32 @mutex_unlock(i32* %203)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %183, %160, %107, %36
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.azx_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.azx_dev* @azx_assign_device(%struct.azx*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_limit_hw_rates(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_power_up_d3wait(i32) #1

declare dso_local i32 @azx_release_device(%struct.azx_dev*) #1

declare dso_local i32 @snd_hda_power_down(i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
