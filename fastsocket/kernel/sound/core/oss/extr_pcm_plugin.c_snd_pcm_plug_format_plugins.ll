; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_format_plugins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_format_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_plugin_format = type { i64, i32, i8* }
%struct.snd_pcm_plugin = type { i32 }

@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"srcformat: format=%i, rate=%i, channels=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"dstformat: format=%i, rate=%i, channels=%i\0A\00", align 1
@SNDRV_PCM_FORMAT_MU_LAW = common dso_local global i64 0, align 8
@SNDRV_PCM_FORMAT_S16 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"channels reduction: src=%i, dst=%i returns %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"rate down resampling: src=%i, dst=%i returns %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"format change: src=%i, dst=%i returns %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"channels extension: src=%i, dst=%i returns %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"interleave change (copy: returns %i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_format_plugins(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.snd_pcm_plugin_format, align 8
  %9 = alloca %struct.snd_pcm_plugin_format, align 8
  %10 = alloca %struct.snd_pcm_plugin_format, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_pcm_plugin*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %13, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = call i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %17)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %20 = call i32 @params_channels(%struct.snd_pcm_hw_params* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %24 = call i64 @params_access(%struct.snd_pcm_hw_params* %23)
  %25 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  switch i32 %30, label %95 [
    i32 128, label %31
    i32 129, label %63
  ]

31:                                               ; preds = %27
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %33 = call i8* @params_format(%struct.snd_pcm_hw_params* %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %37 = call i8* @params_rate(%struct.snd_pcm_hw_params* %36)
  %38 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %40 = call i32 @params_channels(%struct.snd_pcm_hw_params* %39)
  %41 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %43 = call i8* @params_format(%struct.snd_pcm_hw_params* %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %47 = call i8* @params_rate(%struct.snd_pcm_hw_params* %46)
  %48 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_channels(%struct.snd_pcm_hw_params* %49)
  %51 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  br label %60

58:                                               ; preds = %31
  %59 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %12, align 4
  br label %99

63:                                               ; preds = %27
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i8* @params_format(%struct.snd_pcm_hw_params* %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i8* @params_rate(%struct.snd_pcm_hw_params* %68)
  %70 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @params_channels(%struct.snd_pcm_hw_params* %71)
  %73 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %75 = call i8* @params_format(%struct.snd_pcm_hw_params* %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %79 = call i8* @params_rate(%struct.snd_pcm_hw_params* %78)
  %80 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %82 = call i32 @params_channels(%struct.snd_pcm_hw_params* %81)
  %83 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %63
  %87 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  br label %90

88:                                               ; preds = %63
  %89 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i64 [ %87, %86 ], [ %89, %88 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  br label %99

95:                                               ; preds = %27
  %96 = call i32 (...) @snd_BUG()
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %381

99:                                               ; preds = %90, %60
  %100 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  %101 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %104, i8* %106, i32 %108)
  %110 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %112, i8* %114, i32 %116)
  %118 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @rate_match(i8* %119, i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %159, label %124

124:                                              ; preds = %99
  %125 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @snd_pcm_format_linear(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %159, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %381

137:                                              ; preds = %129
  %138 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %139 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %141 = call i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream* %140, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %4, align 4
  br label %381

146:                                              ; preds = %137
  %147 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %148 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %153 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %152)
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %4, align 4
  br label %381

155:                                              ; preds = %146
  %156 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %157 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 24, i1 false)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %155, %124, %99
  %160 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %194

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  store i32 %167, i32* %168, align 8
  %169 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %170 = call i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream* %169, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %170, i32* %14, align 4
  %171 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %174, i32 %175)
  %177 = load i32, i32* %14, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %165
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %381

181:                                              ; preds = %165
  %182 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %183 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %182)
  store i32 %183, i32* %14, align 4
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %188 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %187)
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %4, align 4
  br label %381

190:                                              ; preds = %181
  %191 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %192 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 24, i1 false)
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %190, %159
  %195 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @rate_match(i8* %196, i8* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %258, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %201
  %207 = load i64, i64* @SNDRV_PCM_FORMAT_S16, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %207, i64* %208, align 8
  %209 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %210 = call i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream* %209, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %4, align 4
  br label %381

215:                                              ; preds = %206
  %216 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %217 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %216)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %222 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %221)
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %4, align 4
  br label %381

224:                                              ; preds = %215
  %225 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %226 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 %226, i64 24, i1 false)
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %224, %201
  %229 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 2
  store i8* %230, i8** %231, align 8
  %232 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %233 = call i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream* %232, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %233, i32* %14, align 4
  %234 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = ptrtoint i8* %235 to i32
  %237 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %236, i8* %238, i32 %239)
  %241 = load i32, i32* %14, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %228
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %4, align 4
  br label %381

245:                                              ; preds = %228
  %246 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %247 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %246)
  store i32 %247, i32* %14, align 4
  %248 = load i32, i32* %14, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %252 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %251)
  %253 = load i32, i32* %14, align 4
  store i32 %253, i32* %4, align 4
  br label %381

254:                                              ; preds = %245
  %255 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %256 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 24, i1 false)
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %11, align 4
  br label %258

258:                                              ; preds = %254, %194
  %259 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %260, %262
  br i1 %263, label %264, label %322

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  store i64 %266, i64* %267, align 8
  %268 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %277, label %272

272:                                              ; preds = %264
  %273 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @SNDRV_PCM_FORMAT_MU_LAW, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %272, %264
  %278 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %279 = call i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream* %278, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %279, i32* %14, align 4
  br label %297

280:                                              ; preds = %272
  %281 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @snd_pcm_format_linear(i64 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i64 @snd_pcm_format_linear(i64 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  %291 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %292 = call i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream* %291, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %292, i32* %14, align 4
  br label %296

293:                                              ; preds = %285, %280
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  br label %381

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %296, %277
  %298 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %300, i64 %302, i32 %303)
  %305 = load i32, i32* %14, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %297
  %308 = load i32, i32* %14, align 4
  store i32 %308, i32* %4, align 4
  br label %381

309:                                              ; preds = %297
  %310 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %311 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %310)
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %14, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %309
  %315 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %316 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %315)
  %317 = load i32, i32* %14, align 4
  store i32 %317, i32* %4, align 4
  br label %381

318:                                              ; preds = %309
  %319 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %320 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %319, i8* align 8 %320, i64 24, i1 false)
  %321 = load i32, i32* %12, align 4
  store i32 %321, i32* %11, align 4
  br label %322

322:                                              ; preds = %318, %258
  %323 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %357

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  store i32 %330, i32* %331, align 8
  %332 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %333 = call i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream* %332, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %333, i32* %14, align 4
  %334 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %10, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %8, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %14, align 4
  %339 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %335, i32 %337, i32 %338)
  %340 = load i32, i32* %14, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %328
  %343 = load i32, i32* %14, align 4
  store i32 %343, i32* %4, align 4
  br label %381

344:                                              ; preds = %328
  %345 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %346 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %345)
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %14, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %344
  %350 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %351 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %350)
  %352 = load i32, i32* %14, align 4
  store i32 %352, i32* %4, align 4
  br label %381

353:                                              ; preds = %344
  %354 = bitcast %struct.snd_pcm_plugin_format* %10 to i8*
  %355 = bitcast %struct.snd_pcm_plugin_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %354, i8* align 8 %355, i64 24, i1 false)
  %356 = load i32, i32* %12, align 4
  store i32 %356, i32* %11, align 4
  br label %357

357:                                              ; preds = %353, %322
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* %12, align 4
  %360 = icmp ne i32 %358, %359
  br i1 %360, label %361, label %380

361:                                              ; preds = %357
  %362 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %363 = call i32 @snd_pcm_plugin_build_copy(%struct.snd_pcm_substream* %362, %struct.snd_pcm_plugin_format* %10, %struct.snd_pcm_plugin_format* %8, %struct.snd_pcm_plugin** %13)
  store i32 %363, i32* %14, align 4
  %364 = load i32, i32* %14, align 4
  %365 = call i32 (i8*, i32, ...) @pdprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  %366 = load i32, i32* %14, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = load i32, i32* %14, align 4
  store i32 %369, i32* %4, align 4
  br label %381

370:                                              ; preds = %361
  %371 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %372 = call i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin* %371)
  store i32 %372, i32* %14, align 4
  %373 = load i32, i32* %14, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %13, align 8
  %377 = call i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %376)
  %378 = load i32, i32* %14, align 4
  store i32 %378, i32* %4, align 4
  br label %381

379:                                              ; preds = %370
  br label %380

380:                                              ; preds = %379, %357
  store i32 0, i32* %4, align 4
  br label %381

381:                                              ; preds = %380, %375, %368, %349, %342, %314, %307, %293, %250, %243, %220, %213, %186, %179, %151, %144, %134, %95
  %382 = load i32, i32* %4, align 4
  ret i32 %382
}

declare dso_local i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_access(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_BUG(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdprintf(i8*, i32, ...) #1

declare dso_local i32 @rate_match(i8*, i8*) #1

declare dso_local i64 @snd_pcm_format_linear(i64) #1

declare dso_local i32 @snd_pcm_plugin_build_mulaw(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_append(%struct.snd_pcm_plugin*) #1

declare dso_local i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin*) #1

declare dso_local i32 @snd_pcm_plugin_build_route(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_linear(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_rate(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

declare dso_local i32 @snd_pcm_plugin_build_copy(%struct.snd_pcm_substream*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
