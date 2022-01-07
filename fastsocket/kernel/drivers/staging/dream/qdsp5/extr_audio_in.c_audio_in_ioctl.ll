; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.audio_in* }
%struct.audio_in = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msm_audio_stats = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.msm_audio_config = type { i32, i32, i32*, i32, i32, i32, i32 }

@AUDIO_GET_STATS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@AUDREC_CMD_STEREO_MODE_MONO = common dso_local global i32 0, align 4
@AUDREC_CMD_STEREO_MODE_STEREO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_INDEX_WAV = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_INDEX_AAC = common dso_local global i32 0, align 4
@STEREO_DATA_SIZE = common dso_local global i32 0, align 4
@MONO_DATA_SIZE = common dso_local global i32 0, align 4
@FRAME_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @audio_in_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @audio_in_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.audio_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_audio_stats, align 8
  %11 = alloca %struct.msm_audio_config, align 8
  %12 = alloca %struct.msm_audio_config, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.audio_in*, %struct.audio_in** %14, align 8
  store %struct.audio_in* %15, %struct.audio_in** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AUDIO_GET_STATS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %21 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %20, i32 0, i32 9
  %22 = call i32 @atomic_read(i32* %21)
  %23 = getelementptr inbounds %struct.msm_audio_stats, %struct.msm_audio_stats* %10, i32 0, i32 6
  store i32 %22, i32* %23, align 4
  %24 = load i64, i64* %7, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i64 @copy_to_user(i8* %25, %struct.msm_audio_stats* %10, i32 32)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i64, i64* @EFAULT, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %201

31:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %201

32:                                               ; preds = %3
  %33 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %34 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %33, i32 0, i32 3
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %192 [
    i32 129, label %37
    i32 128, label %40
    i32 132, label %45
    i32 130, label %63
    i32 131, label %140
  ]

37:                                               ; preds = %32
  %38 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %39 = call i32 @audio_in_enable(%struct.audio_in* %38)
  store i32 %39, i32* %9, align 4
  br label %195

40:                                               ; preds = %32
  %41 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %42 = call i32 @audio_in_disable(%struct.audio_in* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %44 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %195

45:                                               ; preds = %32
  %46 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %47 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %52 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %51, i32 0, i32 8
  %53 = call i32 @wake_up(i32* %52)
  %54 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %55 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %54, i32 0, i32 7
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %58 = call i32 @audio_flush(%struct.audio_in* %57)
  %59 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %60 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %59, i32 0, i32 7
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %50, %45
  br label %63

63:                                               ; preds = %32, %62
  %64 = bitcast %struct.msm_audio_config* %11 to %struct.msm_audio_stats*
  %65 = load i64, i64* %7, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @copy_from_user(%struct.msm_audio_stats* %64, i8* %66, i32 32)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i64, i64* @EFAULT, align 8
  %71 = sub nsw i64 0, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %195

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @AUDREC_CMD_STEREO_MODE_MONO, align 4
  %79 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  br label %91

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @AUDREC_CMD_STEREO_MODE_STEREO, align 4
  %86 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  br label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %195

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %77
  %92 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @AUDREC_CMD_TYPE_0_INDEX_WAV, align 4
  %97 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  br label %109

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @AUDREC_CMD_TYPE_0_INDEX_AAC, align 4
  %104 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  br label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %195

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %95
  %110 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @convert_samp_rate(i32 %111)
  %113 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %114 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @convert_dsp_samp_index(i32 %116)
  %118 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %119 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %123 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %125 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %109
  %129 = load i32, i32* @STEREO_DATA_SIZE, align 4
  br label %132

130:                                              ; preds = %109
  %131 = load i32, i32* @MONO_DATA_SIZE, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %135 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %11, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %139 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %9, align 4
  br label %195

140:                                              ; preds = %32
  %141 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %142 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 5
  store i32 %143, i32* %144, align 8
  %145 = load i32, i32* @FRAME_NUM, align 4
  %146 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 4
  store i32 %145, i32* %146, align 4
  %147 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %148 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @convert_samp_index(i32 %149)
  %151 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 3
  store i32 %150, i32* %151, align 8
  %152 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %153 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @AUDREC_CMD_STEREO_MODE_MONO, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %140
  %158 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %161

159:                                              ; preds = %140
  %160 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  store i32 2, i32* %160, align 8
  br label %161

161:                                              ; preds = %159, %157
  %162 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %163 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AUDREC_CMD_TYPE_0_INDEX_WAV, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %171

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 1
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 0, i32* %174, align 4
  %175 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  store i32 0, i32* %180, align 4
  %181 = load i64, i64* %7, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = bitcast %struct.msm_audio_config* %12 to %struct.msm_audio_stats*
  %184 = call i64 @copy_to_user(i8* %182, %struct.msm_audio_stats* %183, i32 32)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %171
  %187 = load i64, i64* @EFAULT, align 8
  %188 = sub nsw i64 0, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %9, align 4
  br label %191

190:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %190, %186
  br label %195

192:                                              ; preds = %32
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %192, %191, %132, %105, %87, %69, %40, %37
  %196 = load %struct.audio_in*, %struct.audio_in** %8, align 8
  %197 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %196, i32 0, i32 3
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %4, align 8
  br label %201

201:                                              ; preds = %195, %31, %28
  %202 = load i64, i64* %4, align 8
  ret i64 %202
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @copy_to_user(i8*, %struct.msm_audio_stats*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audio_in_enable(%struct.audio_in*) #1

declare dso_local i32 @audio_in_disable(%struct.audio_in*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @audio_flush(%struct.audio_in*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @copy_from_user(%struct.msm_audio_stats*, i8*, i32) #1

declare dso_local i32 @convert_samp_rate(i32) #1

declare dso_local i32 @convert_dsp_samp_index(i32) #1

declare dso_local i32 @convert_samp_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
