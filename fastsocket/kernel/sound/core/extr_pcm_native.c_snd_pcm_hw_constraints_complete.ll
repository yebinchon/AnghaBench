; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_hw_constraints_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_pcm_substream }
%struct.snd_pcm_hardware = type { i32, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i32, %struct.snd_pcm_runtime* }

@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_COMPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_MMAP_COMPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_ACCESS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SUBFORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBFORMAT_STD = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_buffer_bytes_max = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_CONTINUOUS = common dso_local global i32 0, align 4
@snd_pcm_hw_rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraints_complete(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 12
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  %13 = bitcast %struct.snd_pcm_substream* %12 to %struct.snd_pcm_hardware*
  store %struct.snd_pcm_hardware* %13, %struct.snd_pcm_hardware** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %37
  %45 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_INTERLEAVED, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_NONINTERLEAVED, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SNDRV_PCM_INFO_COMPLEX, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @SNDRV_PCM_ACCESS_MMAP_COMPLEX, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %75, %68
  br label %81

81:                                               ; preds = %80, %37
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %83 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime* %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %236

90:                                               ; preds = %81
  %91 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %93 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime* %91, i32 %92, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %236

101:                                              ; preds = %90
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %103 = load i32, i32* @SNDRV_PCM_HW_PARAM_SUBFORMAT, align 4
  %104 = load i32, i32* @SNDRV_PCM_SUBFORMAT_STD, align 4
  %105 = shl i32 1, %104
  %106 = call i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime* %102, i32 %103, i32 %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %236

111:                                              ; preds = %101
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %113 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %114 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %112, i32 %113, i32 %116, i64 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %236

125:                                              ; preds = %111
  %126 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %128 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %126, i32 %127, i32 %130, i64 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %236

139:                                              ; preds = %125
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %141 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %142 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %143 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %140, i32 %141, i32 %144, i64 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %2, align 4
  br label %236

153:                                              ; preds = %139
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %155 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %156 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %157 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %160 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %154, i32 %155, i32 %158, i64 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %236

167:                                              ; preds = %153
  %168 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %169 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %170 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %171 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %168, i32 %169, i32 %172, i64 %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %167
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %236

181:                                              ; preds = %167
  %182 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %183 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %184 = load i32, i32* @snd_pcm_hw_rule_buffer_bytes_max, align 4
  %185 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %186 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %187 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %182, i32 0, i32 %183, i32 %184, %struct.snd_pcm_substream* %185, i32 %186, i32 -1)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %2, align 4
  br label %236

192:                                              ; preds = %181
  %193 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %194 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %199 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %200 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %201 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %198, i32 %199, i32 0, i64 %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %236

209:                                              ; preds = %197
  br label %210

210:                                              ; preds = %209, %192
  %211 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %212 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %215 = load i32, i32* @SNDRV_PCM_RATE_CONTINUOUS, align 4
  %216 = or i32 %214, %215
  %217 = and i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %210
  %220 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %221 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %222 = load i32, i32* @snd_pcm_hw_rule_rate, align 4
  %223 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %224 = bitcast %struct.snd_pcm_hardware* %223 to %struct.snd_pcm_substream*
  %225 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %226 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %220, i32 0, i32 %221, i32 %222, %struct.snd_pcm_substream* %224, i32 %225, i32 -1)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %219
  %230 = load i32, i32* %6, align 4
  store i32 %230, i32* %2, align 4
  br label %236

231:                                              ; preds = %219
  br label %232

232:                                              ; preds = %231, %210
  %233 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %234 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %235 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %233, i32 %234)
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %232, %229, %206, %190, %179, %165, %151, %137, %123, %109, %99, %88
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @snd_pcm_hw_constraint_mask(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask64(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
