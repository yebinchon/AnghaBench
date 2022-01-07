; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_period_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_period_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params*)* @snd_pcm_oss_period_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_period_size(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.snd_pcm_runtime*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %14, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_format(%struct.snd_pcm_hw_params* %21)
  %23 = call i32 @snd_pcm_format_physical_width(i32 %22)
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %25 = call i32 @params_channels(%struct.snd_pcm_hw_params* %24)
  %26 = mul nsw i32 %23, %25
  %27 = sdiv i32 %26, 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %15, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %32 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %30, i32 %31, i32* null)
  %33 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %29, i64 %32)
  %34 = load i64, i64* %15, align 8
  %35 = mul i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @ld2(i64 %36)
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 0
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %3
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %47 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %54 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %61 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 16
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %69 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %10, align 8
  br label %158

75:                                               ; preds = %59
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %77 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %84 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %83)
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = udiv i64 %91, 2
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i64, i64* %9, align 8
  %96 = udiv i64 %95, 2
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %94, %82
  br label %157

98:                                               ; preds = %75
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %100 = call i32 @params_rate(%struct.snd_pcm_hw_params* %99)
  %101 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %102 = call i32 @params_format(%struct.snd_pcm_hw_params* %101)
  %103 = call i32 @snd_pcm_format_physical_width(i32 %102)
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %106 = call i32 @params_channels(%struct.snd_pcm_hw_params* %105)
  %107 = mul nsw i32 %104, %106
  %108 = sdiv i32 %107, 8
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %114, %98
  %112 = load i64, i64* %10, align 8
  %113 = udiv i64 %112, 2
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %17, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %111, label %118

118:                                              ; preds = %114
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %120 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %119)
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %118
  store i32 4, i32* %16, align 4
  %126 = load i64, i64* %10, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %126, %128
  %130 = icmp ugt i64 %129, 4096
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %16, align 4
  %133 = mul nsw i32 %132, 2
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i64, i64* %10, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = udiv i64 %135, %137
  %139 = icmp ult i64 %138, 4096
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %140, %134
  br label %148

142:                                              ; preds = %118
  %143 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %144 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %143)
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %142, %141
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %10, align 8
  %152 = udiv i64 %151, %150
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp ult i64 %153, 16
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i64 16, i64* %10, align 8
  br label %156

156:                                              ; preds = %155, %148
  br label %157

157:                                              ; preds = %156, %97
  br label %158

158:                                              ; preds = %157, %67
  %159 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %160 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %161 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %162 = call i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params* %160, i32 %161, i32* null)
  %163 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %159, i64 %162)
  store i64 %163, i64* %12, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %12, align 8
  %166 = mul i64 %165, %164
  store i64 %166, i64* %12, align 8
  %167 = load i64, i64* %12, align 8
  %168 = sub i64 %167, 1
  %169 = call i32 @ld2(i64 %168)
  %170 = add nsw i32 %169, 1
  %171 = shl i32 1, %170
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* %12, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %158
  %177 = load i64, i64* %12, align 8
  store i64 %177, i64* %10, align 8
  br label %178

178:                                              ; preds = %176, %158
  %179 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %180 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %181 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %182 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %180, i32 %181, i32* null)
  %183 = call i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %179, i64 %182)
  store i64 %183, i64* %13, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %13, align 8
  %186 = mul i64 %185, %184
  store i64 %186, i64* %13, align 8
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @ld2(i64 %187)
  %189 = shl i32 1, %188
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %13, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* %13, align 8
  %193 = icmp ugt i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %178
  %195 = load i64, i64* %13, align 8
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %194, %178
  %197 = load i64, i64* %9, align 8
  %198 = load i64, i64* %10, align 8
  %199 = udiv i64 %197, %198
  store i64 %199, i64* %11, align 8
  %200 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %201 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %200)
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %215

207:                                              ; preds = %196
  %208 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %209 = call %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream* %208)
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %11, align 8
  br label %215

215:                                              ; preds = %207, %196
  %216 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %217 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %218 = call i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params* %216, i32 %217, i32* null)
  store i64 %218, i64* %8, align 8
  %219 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %220 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %219)
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %215
  %226 = load i64, i64* %8, align 8
  %227 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %228 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %227)
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp ugt i64 %226, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %225
  %234 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %235 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %234)
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %8, align 8
  br label %239

239:                                              ; preds = %233, %225, %215
  %240 = load i64, i64* %11, align 8
  %241 = load i64, i64* %8, align 8
  %242 = icmp ugt i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i64, i64* %8, align 8
  store i64 %244, i64* %11, align 8
  br label %245

245:                                              ; preds = %243, %239
  %246 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %247 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %248 = call i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params* %246, i32 %247, i32* null)
  store i64 %248, i64* %8, align 8
  %249 = load i64, i64* %8, align 8
  %250 = icmp ult i64 %249, 2
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  store i64 2, i64* %8, align 8
  br label %252

252:                                              ; preds = %251, %245
  %253 = load i64, i64* %11, align 8
  %254 = load i64, i64* %8, align 8
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i64, i64* %8, align 8
  store i64 %257, i64* %11, align 8
  br label %258

258:                                              ; preds = %256, %252
  br label %259

259:                                              ; preds = %265, %258
  %260 = load i64, i64* %10, align 8
  %261 = load i64, i64* %11, align 8
  %262 = mul i64 %260, %261
  %263 = load i64, i64* %9, align 8
  %264 = icmp ugt i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load i64, i64* %10, align 8
  %267 = udiv i64 %266, 2
  store i64 %267, i64* %10, align 8
  br label %259

268:                                              ; preds = %259
  %269 = load i64, i64* %10, align 8
  %270 = icmp ult i64 %269, 16
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  br label %289

274:                                              ; preds = %268
  %275 = load i64, i64* %10, align 8
  %276 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %277 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %276)
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 4
  store i64 %275, i64* %279, align 8
  %280 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %281 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %280)
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 5
  store i32 1, i32* %283, align 8
  %284 = load i64, i64* %11, align 8
  %285 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %286 = call %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime* %285)
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 6
  store i64 %284, i64* %288, align 8
  store i32 0, i32* %4, align 4
  br label %289

289:                                              ; preds = %274, %271
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @snd_pcm_hw_param_value_max(%struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i32 @ld2(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_10__* @oss_runtime(%struct.snd_pcm_runtime*) #1

declare dso_local %struct.TYPE_9__* @oss_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_hw_param_value_min(%struct.snd_pcm_hw_params*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
