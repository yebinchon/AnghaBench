; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_change_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_change_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i64, i32 }
%struct.snd_pcm_hw_params = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.snd_pcm_sw_params = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.snd_mask = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64, i32, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@EINTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"No memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No usable accesses\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_LAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot find a format!!!\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"client: access = %i, format = %i, channels = %i, rate = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"slave: access = %i, format = %i, channels = %i, rate = %i\0A\00", align 1
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_HW_PARAMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"HW_PARAMS failed: %i\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_TSTAMP_NONE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_IOCTL_SW_PARAMS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"SW_PARAMS failed: %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"oss: period bytes = %i, buffer bytes = %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"slave: period_size = %i, buffer_size = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_pcm_oss_change_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_change_params(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_sw_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_mask, align 4
  %17 = alloca %struct.snd_mask, align 4
  %18 = alloca i8*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 2
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %4, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 6
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINTR, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %608

31:                                               ; preds = %1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.snd_pcm_sw_params* @kmalloc(i32 40, i32 %32)
  store %struct.snd_pcm_sw_params* %33, %struct.snd_pcm_sw_params** %7, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.snd_pcm_sw_params* @kmalloc(i32 40, i32 %34)
  %36 = bitcast %struct.snd_pcm_sw_params* %35 to %struct.snd_pcm_hw_params*
  store %struct.snd_pcm_hw_params* %36, %struct.snd_pcm_hw_params** %5, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.snd_pcm_sw_params* @kmalloc(i32 40, i32 %37)
  %39 = bitcast %struct.snd_pcm_sw_params* %38 to %struct.snd_pcm_hw_params*
  store %struct.snd_pcm_hw_params* %39, %struct.snd_pcm_hw_params** %6, align 8
  %40 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %41 = icmp ne %struct.snd_pcm_sw_params* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %44 = icmp ne %struct.snd_pcm_hw_params* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = icmp ne %struct.snd_pcm_hw_params* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45, %42, %31
  %49 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %593

52:                                               ; preds = %45
  %53 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %53, i32 0, i32 1
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %65

58:                                               ; preds = %52
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %59)
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %58, %57
  %66 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %67 = bitcast %struct.snd_pcm_hw_params* %66 to %struct.snd_pcm_sw_params*
  %68 = call i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_sw_params* %67)
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = bitcast %struct.snd_pcm_hw_params* %69 to %struct.snd_pcm_sw_params*
  %71 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %72 = call i32 @_snd_pcm_hw_param_setinteger(%struct.snd_pcm_sw_params* %70, i32 %71)
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %74 = bitcast %struct.snd_pcm_hw_params* %73 to %struct.snd_pcm_sw_params*
  %75 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %76 = call i32 @_snd_pcm_hw_param_min(%struct.snd_pcm_sw_params* %74, i32 %75, i32 2, i32 0)
  %77 = call i32 @snd_mask_none(%struct.snd_mask* %17)
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 1
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_INTERLEAVED, align 4
  %84 = call i32 @snd_mask_set(%struct.snd_mask* %17, i32 %83)
  br label %94

85:                                               ; preds = %65
  %86 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %87 = call i32 @snd_mask_set(%struct.snd_mask* %17, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 4
  %92 = call i32 @snd_mask_set(%struct.snd_mask* %17, i32 %91)
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %96 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %97 = bitcast %struct.snd_pcm_hw_params* %96 to %struct.snd_pcm_sw_params*
  %98 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %99 = call i32 @snd_pcm_hw_param_mask(%struct.snd_pcm_substream* %95, %struct.snd_pcm_sw_params* %97, i32 %98, %struct.snd_mask* %17)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %593

106:                                              ; preds = %94
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %108 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %109 = bitcast %struct.snd_pcm_hw_params* %108 to %struct.snd_pcm_sw_params*
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %111 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %110)
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @choose_rate(%struct.snd_pcm_substream* %107, %struct.snd_pcm_sw_params* %109, i32 %114)
  %116 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %118 = bitcast %struct.snd_pcm_hw_params* %117 to %struct.snd_pcm_sw_params*
  %119 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %121 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %120)
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream* %116, %struct.snd_pcm_sw_params* %118, i32 %119, i32 %124, i32* null)
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %127 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %126)
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 11
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @snd_pcm_oss_format_from(i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %133 = bitcast %struct.snd_pcm_hw_params* %132 to %struct.snd_pcm_sw_params*
  %134 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %135 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_sw_params* %133, i32 %134)
  %136 = bitcast %struct.snd_mask* %16 to i8*
  %137 = bitcast %struct.snd_mask* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %106
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %14, align 4
  br label %145

142:                                              ; preds = %106
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @snd_pcm_plug_slave_format(i32 %143, %struct.snd_mask* %16)
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %142, %140
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %14, align 4
  %150 = call i64 @snd_mask_test(%struct.snd_mask* %16, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %179, label %152

152:                                              ; preds = %148, %145
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %167, %152
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %156 = icmp sle i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i32, i32* %14, align 4
  %159 = call i64 @snd_mask_test(%struct.snd_mask* %16, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @snd_pcm_oss_format_to(i32 %162)
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %170

166:                                              ; preds = %161, %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %153

170:                                              ; preds = %165, %153
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %11, align 4
  br label %593

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %178, %148
  %180 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %181 = bitcast %struct.snd_pcm_hw_params* %180 to %struct.snd_pcm_sw_params*
  %182 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params* %181, i32 %182, i32 %183, i32 0)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %593

188:                                              ; preds = %179
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %193 = bitcast %struct.snd_pcm_hw_params* %192 to %struct.snd_pcm_sw_params*
  %194 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %195 = bitcast %struct.snd_pcm_hw_params* %194 to %struct.snd_pcm_sw_params*
  %196 = call i32 @memcpy(%struct.snd_pcm_sw_params* %193, %struct.snd_pcm_sw_params* %195, i32 40)
  br label %249

197:                                              ; preds = %188
  %198 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %199 = bitcast %struct.snd_pcm_hw_params* %198 to %struct.snd_pcm_sw_params*
  %200 = call i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_sw_params* %199)
  %201 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %202 = bitcast %struct.snd_pcm_hw_params* %201 to %struct.snd_pcm_sw_params*
  %203 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %204 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %205 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params* %202, i32 %203, i32 %204, i32 0)
  %206 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %207 = bitcast %struct.snd_pcm_hw_params* %206 to %struct.snd_pcm_sw_params*
  %208 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %209 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %210 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %209)
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 11
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @snd_pcm_oss_format_from(i32 %213)
  %215 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params* %207, i32 %208, i32 %214, i32 0)
  %216 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %217 = bitcast %struct.snd_pcm_hw_params* %216 to %struct.snd_pcm_sw_params*
  %218 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %219 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %220 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %219)
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params* %217, i32 %218, i32 %223, i32 0)
  %225 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %226 = bitcast %struct.snd_pcm_hw_params* %225 to %struct.snd_pcm_sw_params*
  %227 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %228 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %229 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %228)
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params* %226, i32 %227, i32 %232, i32 0)
  %234 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %235 = bitcast %struct.snd_pcm_hw_params* %234 to %struct.snd_pcm_sw_params*
  %236 = call i32 @params_access(%struct.snd_pcm_sw_params* %235)
  %237 = sext i32 %236 to i64
  %238 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %239 = bitcast %struct.snd_pcm_hw_params* %238 to %struct.snd_pcm_sw_params*
  %240 = call i32 @params_format(%struct.snd_pcm_sw_params* %239)
  %241 = sext i32 %240 to i64
  %242 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %243 = bitcast %struct.snd_pcm_hw_params* %242 to %struct.snd_pcm_sw_params*
  %244 = call i32 @params_channels(%struct.snd_pcm_sw_params* %243)
  %245 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %246 = bitcast %struct.snd_pcm_hw_params* %245 to %struct.snd_pcm_sw_params*
  %247 = call i32 @params_rate(%struct.snd_pcm_sw_params* %246)
  %248 = call i32 (i8*, i64, i64, ...) @pdprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %237, i64 %241, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %197, %191
  %250 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %251 = bitcast %struct.snd_pcm_hw_params* %250 to %struct.snd_pcm_sw_params*
  %252 = call i32 @params_access(%struct.snd_pcm_sw_params* %251)
  %253 = sext i32 %252 to i64
  %254 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %255 = bitcast %struct.snd_pcm_hw_params* %254 to %struct.snd_pcm_sw_params*
  %256 = call i32 @params_format(%struct.snd_pcm_sw_params* %255)
  %257 = sext i32 %256 to i64
  %258 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %259 = bitcast %struct.snd_pcm_hw_params* %258 to %struct.snd_pcm_sw_params*
  %260 = call i32 @params_channels(%struct.snd_pcm_sw_params* %259)
  %261 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %262 = bitcast %struct.snd_pcm_hw_params* %261 to %struct.snd_pcm_sw_params*
  %263 = call i32 @params_rate(%struct.snd_pcm_sw_params* %262)
  %264 = call i32 (i8*, i64, i64, ...) @pdprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %253, i64 %257, i32 %260, i32 %263)
  %265 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %266 = bitcast %struct.snd_pcm_hw_params* %265 to %struct.snd_pcm_sw_params*
  %267 = call i32 @params_format(%struct.snd_pcm_sw_params* %266)
  %268 = call i32 @snd_pcm_format_physical_width(i32 %267)
  %269 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %270 = bitcast %struct.snd_pcm_hw_params* %269 to %struct.snd_pcm_sw_params*
  %271 = call i32 @params_channels(%struct.snd_pcm_sw_params* %270)
  %272 = mul nsw i32 %268, %271
  %273 = sdiv i32 %272, 8
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %10, align 8
  %275 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %276 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %277 = bitcast %struct.snd_pcm_hw_params* %276 to %struct.snd_pcm_sw_params*
  %278 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %279 = bitcast %struct.snd_pcm_hw_params* %278 to %struct.snd_pcm_sw_params*
  %280 = call i32 @snd_pcm_oss_period_size(%struct.snd_pcm_substream* %275, %struct.snd_pcm_sw_params* %277, %struct.snd_pcm_sw_params* %279)
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %249
  br label %593

284:                                              ; preds = %249
  %285 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %286 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %287 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %286)
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %10, align 8
  %292 = udiv i64 %290, %291
  %293 = call i32 @snd_pcm_plug_slave_size(%struct.snd_pcm_substream* %285, i64 %292)
  store i32 %293, i32* %15, align 4
  %294 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %295 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %296 = bitcast %struct.snd_pcm_hw_params* %295 to %struct.snd_pcm_sw_params*
  %297 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream* %294, %struct.snd_pcm_sw_params* %296, i32 %297, i32 %298, i32* null)
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %11, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %284
  br label %593

303:                                              ; preds = %284
  %304 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %305 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %306 = bitcast %struct.snd_pcm_hw_params* %305 to %struct.snd_pcm_sw_params*
  %307 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %308 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %309 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %308)
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream* %304, %struct.snd_pcm_sw_params* %306, i32 %307, i32 %312, i32* null)
  store i32 %313, i32* %11, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %303
  br label %593

317:                                              ; preds = %303
  %318 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %319 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  %320 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %318, i32 %319, %struct.snd_pcm_sw_params* null)
  %321 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %322 = load i32, i32* @SNDRV_PCM_IOCTL_HW_PARAMS, align 4
  %323 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %324 = bitcast %struct.snd_pcm_hw_params* %323 to %struct.snd_pcm_sw_params*
  %325 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %321, i32 %322, %struct.snd_pcm_sw_params* %324)
  store i32 %325, i32* %11, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %317
  %328 = load i32, i32* %11, align 4
  %329 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %328)
  br label %593

330:                                              ; preds = %317
  %331 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %332 = call i32 @memset(%struct.snd_pcm_sw_params* %331, i32 0, i32 40)
  %333 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %334 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %333)
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 13
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %330
  %340 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %341 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %340, i32 0, i32 0
  store i32 1, i32* %341, align 8
  br label %348

342:                                              ; preds = %330
  %343 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %344 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %347 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %346, i32 0, i32 0
  store i32 %345, i32* %347, align 8
  br label %348

348:                                              ; preds = %342, %339
  %349 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %350 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %349, i32 0, i32 1
  %351 = call i64 @atomic_read(i32* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %359, label %353

353:                                              ; preds = %348
  %354 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %355 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %353, %348
  %360 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %361 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %364 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  br label %371

365:                                              ; preds = %353
  %366 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %367 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %370 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  br label %371

371:                                              ; preds = %365, %359
  %372 = load i32, i32* @SNDRV_PCM_TSTAMP_NONE, align 4
  %373 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %374 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %373, i32 0, i32 6
  store i32 %372, i32* %374, align 8
  %375 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %376 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %375, i32 0, i32 2
  store i32 1, i32* %376, align 8
  %377 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %378 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %371
  br label %387

383:                                              ; preds = %371
  %384 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %385 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  br label %387

387:                                              ; preds = %383, %382
  %388 = phi i32 [ 1, %382 ], [ %386, %383 ]
  %389 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %390 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %389, i32 0, i32 3
  store i32 %388, i32* %390, align 4
  %391 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %392 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %391, i32 0, i32 1
  %393 = call i64 @atomic_read(i32* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %403, label %395

395:                                              ; preds = %387
  %396 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %397 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %396)
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %395, %387
  %404 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %405 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %404, i32 0, i32 5
  store i8* null, i8** %405, align 8
  %406 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %407 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %406, i32 0, i32 4
  store i8* null, i8** %407, align 8
  br label %435

408:                                              ; preds = %395
  %409 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %410 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = add nsw i32 %411, 16
  %413 = sext i32 %412 to i64
  %414 = inttoptr i64 %413 to i8*
  store i8* %414, i8** %18, align 8
  %415 = load i8*, i8** %18, align 8
  %416 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %417 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  %420 = inttoptr i64 %419 to i8*
  %421 = icmp ugt i8* %415, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %408
  %423 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %424 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = inttoptr i64 %426 to i8*
  store i8* %427, i8** %18, align 8
  br label %428

428:                                              ; preds = %422, %408
  %429 = load i8*, i8** %18, align 8
  %430 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %431 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %430, i32 0, i32 5
  store i8* %429, i8** %431, align 8
  %432 = load i8*, i8** %18, align 8
  %433 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %434 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %433, i32 0, i32 4
  store i8* %432, i8** %434, align 8
  br label %435

435:                                              ; preds = %428, %403
  %436 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %437 = load i32, i32* @SNDRV_PCM_IOCTL_SW_PARAMS, align 4
  %438 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %439 = call i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %436, i32 %437, %struct.snd_pcm_sw_params* %438)
  store i32 %439, i32* %11, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %435
  %442 = load i32, i32* %11, align 4
  %443 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %442)
  br label %593

444:                                              ; preds = %435
  %445 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %446 = bitcast %struct.snd_pcm_hw_params* %445 to %struct.snd_pcm_sw_params*
  %447 = call i32 @params_periods(%struct.snd_pcm_sw_params* %446)
  %448 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %449 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %448)
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 3
  store i32 %447, i32* %451, align 8
  %452 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %453 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %454 = bitcast %struct.snd_pcm_hw_params* %453 to %struct.snd_pcm_sw_params*
  %455 = call i64 @params_period_size(%struct.snd_pcm_sw_params* %454)
  %456 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %452, i64 %455)
  store i64 %456, i64* %9, align 8
  %457 = load i64, i64* %9, align 8
  %458 = icmp ult i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %444
  %460 = load i32, i32* @EINVAL, align 4
  %461 = sub nsw i32 0, %460
  store i32 %461, i32* %11, align 4
  br label %593

462:                                              ; preds = %444
  %463 = load i64, i64* %10, align 8
  %464 = load i64, i64* %9, align 8
  %465 = mul i64 %464, %463
  store i64 %465, i64* %9, align 8
  %466 = load i64, i64* %9, align 8
  %467 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %468 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %467)
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 8
  %472 = sext i32 %471 to i64
  %473 = mul i64 %466, %472
  store i64 %473, i64* %8, align 8
  %474 = load i64, i64* %8, align 8
  %475 = icmp ult i64 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %462
  %477 = load i32, i32* @EINVAL, align 4
  %478 = sub nsw i32 0, %477
  store i32 %478, i32* %11, align 4
  br label %593

479:                                              ; preds = %462
  %480 = load i64, i64* %9, align 8
  %481 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %482 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %481)
  %483 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 2
  store i64 %480, i64* %484, align 8
  %485 = load i64, i64* %8, align 8
  %486 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %487 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %486)
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 4
  store i64 %485, i64* %489, align 8
  %490 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %491 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %490)
  %492 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i32 0, i32 2
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %496 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %495)
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 4
  %499 = load i64, i64* %498, align 8
  %500 = call i32 (i8*, i64, i64, ...) @pdprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i64 %494, i64 %499)
  %501 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %502 = bitcast %struct.snd_pcm_hw_params* %501 to %struct.snd_pcm_sw_params*
  %503 = call i64 @params_period_size(%struct.snd_pcm_sw_params* %502)
  %504 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %505 = bitcast %struct.snd_pcm_hw_params* %504 to %struct.snd_pcm_sw_params*
  %506 = call i64 @params_buffer_size(%struct.snd_pcm_sw_params* %505)
  %507 = call i32 (i8*, i64, i64, ...) @pdprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i64 %503, i64 %506)
  %508 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %509 = bitcast %struct.snd_pcm_hw_params* %508 to %struct.snd_pcm_sw_params*
  %510 = call i32 @params_format(%struct.snd_pcm_sw_params* %509)
  %511 = call i32 @snd_pcm_oss_format_to(i32 %510)
  %512 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %513 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %512)
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 11
  store i32 %511, i32* %515, align 4
  %516 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %517 = bitcast %struct.snd_pcm_hw_params* %516 to %struct.snd_pcm_sw_params*
  %518 = call i32 @params_channels(%struct.snd_pcm_sw_params* %517)
  %519 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %520 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %519)
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 1
  store i32 %518, i32* %522, align 4
  %523 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %524 = bitcast %struct.snd_pcm_hw_params* %523 to %struct.snd_pcm_sw_params*
  %525 = call i32 @params_rate(%struct.snd_pcm_sw_params* %524)
  %526 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %527 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %526)
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i32 0, i32 0
  store i32 %525, i32* %529, align 8
  %530 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %531 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %530)
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 10
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @vfree(i32 %534)
  %536 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %537 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %536)
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 2
  %540 = load i64, i64* %539, align 8
  %541 = call i32 @vmalloc(i64 %540)
  %542 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %543 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %542)
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %544, i32 0, i32 10
  store i32 %541, i32* %545, align 8
  %546 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %547 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %546)
  %548 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 10
  %550 = load i32, i32* %549, align 8
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %555, label %552

552:                                              ; preds = %479
  %553 = load i32, i32* @ENOMEM, align 4
  %554 = sub nsw i32 0, %553
  store i32 %554, i32* %11, align 4
  br label %593

555:                                              ; preds = %479
  %556 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %557 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %556)
  %558 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i32 0, i32 9
  store i64 0, i64* %559, align 8
  %560 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %561 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %560)
  %562 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 5
  store i32 1, i32* %563, align 8
  %564 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %565 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %564)
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 8
  store i64 0, i64* %567, align 8
  %568 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %569 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %568, i32 0, i32 4
  %570 = load i64, i64* %569, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %585

572:                                              ; preds = %555
  %573 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %574 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %573, i32 0, i32 5
  %575 = load i32, i32* %574, align 8
  %576 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %577 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %576, i32 0, i32 4
  %578 = load i64, i64* %577, align 8
  %579 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %580 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %581 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 4
  %583 = call i32 @bytes_to_samples(%struct.snd_pcm_runtime* %579, i32 %582)
  %584 = call i32 @snd_pcm_format_set_silence(i32 %575, i64 %578, i32 %583)
  br label %585

585:                                              ; preds = %572, %555
  %586 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %587 = load i64, i64* %9, align 8
  %588 = call i32 @snd_pcm_alsa_frames(%struct.snd_pcm_substream* %586, i64 %587)
  %589 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %590 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %589)
  %591 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 7
  store i32 %588, i32* %592, align 8
  store i32 0, i32* %11, align 4
  br label %593

593:                                              ; preds = %585, %552, %476, %459, %441, %327, %316, %302, %283, %187, %174, %102, %48
  %594 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %7, align 8
  %595 = call i32 @kfree(%struct.snd_pcm_sw_params* %594)
  %596 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %597 = bitcast %struct.snd_pcm_hw_params* %596 to %struct.snd_pcm_sw_params*
  %598 = call i32 @kfree(%struct.snd_pcm_sw_params* %597)
  %599 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %600 = bitcast %struct.snd_pcm_hw_params* %599 to %struct.snd_pcm_sw_params*
  %601 = call i32 @kfree(%struct.snd_pcm_sw_params* %600)
  %602 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %603 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %602)
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 6
  %606 = call i32 @mutex_unlock(i32* %605)
  %607 = load i32, i32* %11, align 4
  store i32 %607, i32* %2, align 4
  br label %608

608:                                              ; preds = %593, %28
  %609 = load i32, i32* %2, align 4
  ret i32 %609
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime*) #1

declare dso_local %struct.snd_pcm_sw_params* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_printd(i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @_snd_pcm_hw_param_setinteger(%struct.snd_pcm_sw_params*, i32) #1

declare dso_local i32 @_snd_pcm_hw_param_min(%struct.snd_pcm_sw_params*, i32, i32, i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_set(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_hw_param_mask(%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*, i32, %struct.snd_mask*) #1

declare dso_local i32 @choose_rate(%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*, i32) #1

declare dso_local i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_oss_format_from(i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_sw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_plug_slave_format(i32, %struct.snd_mask*) #1

declare dso_local i64 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_oss_format_to(i32) #1

declare dso_local i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_sw_params*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params*, i32) #1

declare dso_local i32 @pdprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @params_access(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_pcm_oss_period_size(%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params*) #1

declare dso_local i32 @snd_pcm_plug_slave_size(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, %struct.snd_pcm_sw_params*) #1

declare dso_local i32 @memset(%struct.snd_pcm_sw_params*, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_sw_params*) #1

declare dso_local i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @params_period_size(%struct.snd_pcm_sw_params*) #1

declare dso_local i64 @params_buffer_size(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i64, i32) #1

declare dso_local i32 @bytes_to_samples(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_alsa_frames(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @kfree(%struct.snd_pcm_sw_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
