; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_8__*, i32, i32, %struct.snd_pcm_runtime* }
%struct.TYPE_8__ = type { {}*, i32 (%struct.snd_pcm_substream*)* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@SNDRV_PCM_TSTAMP_NONE = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %246

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 3
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %6, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %21)
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %29 [
    i32 130, label %28
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %17, %17, %17
  br label %34

29:                                               ; preds = %17
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %30)
  %32 = load i32, i32* @EBADFD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %246

34:                                               ; preds = %28
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 2
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EBADFD, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %246

44:                                               ; preds = %34
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream* %47, %struct.snd_pcm_hw_params* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %227

53:                                               ; preds = %44
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %56 = call i32 @snd_pcm_hw_params_choose(%struct.snd_pcm_substream* %54, %struct.snd_pcm_hw_params* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %227

60:                                               ; preds = %53
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = bitcast {}** %64 to i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)**
  %66 = load i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)** %65, align 8
  %67 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)**
  %74 = load i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)*, i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)** %73, align 8
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %77 = call i32 %74(%struct.snd_pcm_substream* %75, %struct.snd_pcm_hw_params* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %227

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %60
  %83 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %84 = call i32 @params_access(%struct.snd_pcm_hw_params* %83)
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 22
  store i32 %84, i32* %86, align 8
  %87 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %88 = call i32 @params_format(%struct.snd_pcm_hw_params* %87)
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 15
  store i32 %88, i32* %90, align 4
  %91 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %92 = call i32 @params_subformat(%struct.snd_pcm_hw_params* %91)
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 21
  store i32 %92, i32* %94, align 4
  %95 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %96 = call i32 @params_channels(%struct.snd_pcm_hw_params* %95)
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %100 = call i32 @params_rate(%struct.snd_pcm_hw_params* %99)
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 20
  store i32 %100, i32* %102, align 8
  %103 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %104 = call i32 @params_period_size(%struct.snd_pcm_hw_params* %103)
  %105 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 8
  %107 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %108 = call i32 @params_periods(%struct.snd_pcm_hw_params* %107)
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 19
  store i32 %108, i32* %110, align 4
  %111 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %112 = call i32 @params_buffer_size(%struct.snd_pcm_hw_params* %111)
  %113 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %118, i32 0, i32 18
  store i32 %117, i32* %119, align 8
  %120 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %123, i32 0, i32 17
  store i32 %122, i32* %124, align 4
  %125 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 16
  store i32 %127, i32* %129, align 8
  %130 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %131 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @snd_pcm_format_physical_width(i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %138 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = mul i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  store i32 1, i32* %10, align 4
  br label %145

145:                                              ; preds = %149, %82
  %146 = load i32, i32* %9, align 4
  %147 = urem i32 %146, 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %9, align 4
  %151 = mul i32 %150, 2
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = mul nsw i32 %152, 2
  store i32 %153, i32* %10, align 4
  br label %145

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  %156 = udiv i32 %155, 8
  %157 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %158 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @SNDRV_PCM_TSTAMP_NONE, align 4
  %163 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %164 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %163, i32 0, i32 14
  store i32 %162, i32* %164, align 8
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 6
  store i32 1, i32* %166, align 8
  %167 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %170, i32 0, i32 13
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 4
  %174 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %175 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %174, i32 0, i32 7
  store i32 1, i32* %175, align 4
  %176 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %177 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %180 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  %181 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %182 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %181, i32 0, i32 11
  store i64 0, i64* %182, align 8
  %183 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %184 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %183, i32 0, i32 10
  store i64 0, i64* %184, align 8
  %185 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %186 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %189 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %201, %154
  %191 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %192 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %193, 2
  %195 = load i32, i32* @LONG_MAX, align 4
  %196 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %197 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %195, %198
  %200 = icmp sle i32 %194, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %203 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 2
  store i32 %205, i32* %203, align 4
  br label %190

206:                                              ; preds = %190
  %207 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %208 = call i32 @snd_pcm_timer_resolution_change(%struct.snd_pcm_substream* %207)
  %209 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %210 = call i32 @snd_pcm_set_state(%struct.snd_pcm_substream* %209, i32 128)
  %211 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %212 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %213 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @pm_qos_remove_requirement(i32 %211, i32 %214)
  %216 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %217 = call i32 @period_to_usecs(%struct.snd_pcm_runtime* %216)
  store i32 %217, i32* %8, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %206
  %220 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %221 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %222 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @pm_qos_add_requirement(i32 %220, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %206
  store i32 0, i32* %3, align 4
  br label %246

227:                                              ; preds = %80, %59, %52
  %228 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %229 = call i32 @snd_pcm_set_state(%struct.snd_pcm_substream* %228, i32 130)
  %230 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %231 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %230, i32 0, i32 0
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %233, align 8
  %235 = icmp ne i32 (%struct.snd_pcm_substream*)* %234, null
  br i1 %235, label %236, label %244

236:                                              ; preds = %227
  %237 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %238 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %237, i32 0, i32 0
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %240, align 8
  %242 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %243 = call i32 %241(%struct.snd_pcm_substream* %242)
  br label %244

244:                                              ; preds = %236, %227
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %226, %41, %29, %14
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_hw_params_choose(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_access(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_subformat(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_buffer_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_pcm_timer_resolution_change(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_set_state(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @pm_qos_remove_requirement(i32, i32) #1

declare dso_local i32 @period_to_usecs(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @pm_qos_add_requirement(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
