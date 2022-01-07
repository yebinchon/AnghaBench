; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.audio* }
%struct.audio = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.msm_audio_stats = type { i32, i32, i32*, i32, i32, i32 }
%struct.msm_audio_config = type { i32, i32, i32*, i32, i32, i32 }

@AUDIO_GET_STATS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@AUDIO_SET_VOLUME = common dso_local global i32 0, align 4
@EV_IOCTL = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_MONO_V = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_STEREO_V = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @audio_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @audio_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.audio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_audio_stats, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.msm_audio_config, align 8
  %13 = alloca %struct.msm_audio_config, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.audio*, %struct.audio** %15, align 8
  store %struct.audio* %16, %struct.audio** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @AUDIO_GET_STATS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.audio*, %struct.audio** %8, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 9
  %23 = call i32 @atomic_read(i32* %22)
  %24 = getelementptr inbounds %struct.msm_audio_stats, %struct.msm_audio_stats* %10, i32 0, i32 5
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i64 @copy_to_user(i8* %26, %struct.msm_audio_stats* %10, i32 32)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, i64* @EFAULT, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %178

32:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %178

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @AUDIO_SET_VOLUME, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.audio*, %struct.audio** %8, align 8
  %39 = getelementptr inbounds %struct.audio, %struct.audio* %38, i32 0, i32 7
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.audio*, %struct.audio** %8, align 8
  %44 = getelementptr inbounds %struct.audio, %struct.audio* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.audio*, %struct.audio** %8, align 8
  %46 = getelementptr inbounds %struct.audio, %struct.audio* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @audpp_set_volume_and_pan(i32 6, i64 %50, i32 0)
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.audio*, %struct.audio** %8, align 8
  %54 = getelementptr inbounds %struct.audio, %struct.audio* %53, i32 0, i32 7
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %33
  %58 = load i32, i32* @EV_IOCTL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @LOG(i32 %58, i32 %59)
  %61 = load %struct.audio*, %struct.audio** %8, align 8
  %62 = getelementptr inbounds %struct.audio, %struct.audio* %61, i32 0, i32 3
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load i32, i32* %6, align 4
  switch i32 %64, label %169 [
    i32 129, label %65
    i32 128, label %68
    i32 132, label %73
    i32 130, label %91
    i32 131, label %128
  ]

65:                                               ; preds = %57
  %66 = load %struct.audio*, %struct.audio** %8, align 8
  %67 = call i32 @audio_enable(%struct.audio* %66)
  store i32 %67, i32* %9, align 4
  br label %172

68:                                               ; preds = %57
  %69 = load %struct.audio*, %struct.audio** %8, align 8
  %70 = call i32 @audio_disable(%struct.audio* %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.audio*, %struct.audio** %8, align 8
  %72 = getelementptr inbounds %struct.audio, %struct.audio* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  br label %172

73:                                               ; preds = %57
  %74 = load %struct.audio*, %struct.audio** %8, align 8
  %75 = getelementptr inbounds %struct.audio, %struct.audio* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.audio*, %struct.audio** %8, align 8
  %80 = getelementptr inbounds %struct.audio, %struct.audio* %79, i32 0, i32 6
  %81 = call i32 @wake_up(i32* %80)
  %82 = load %struct.audio*, %struct.audio** %8, align 8
  %83 = getelementptr inbounds %struct.audio, %struct.audio* %82, i32 0, i32 5
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.audio*, %struct.audio** %8, align 8
  %86 = call i32 @audio_flush(%struct.audio* %85)
  %87 = load %struct.audio*, %struct.audio** %8, align 8
  %88 = getelementptr inbounds %struct.audio, %struct.audio* %87, i32 0, i32 5
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %78, %73
  br label %91

91:                                               ; preds = %57, %90
  %92 = bitcast %struct.msm_audio_config* %12 to %struct.msm_audio_stats*
  %93 = load i64, i64* %7, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @copy_from_user(%struct.msm_audio_stats* %92, i8* %94, i32 32)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* @EFAULT, align 8
  %99 = sub nsw i64 0, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  br label %172

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @AUDPP_CMD_PCM_INTF_MONO_V, align 4
  %107 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  br label %119

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @AUDPP_CMD_PCM_INTF_STEREO_V, align 4
  %114 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  br label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %172

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %105
  %120 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.audio*, %struct.audio** %8, align 8
  %123 = getelementptr inbounds %struct.audio, %struct.audio* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %12, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.audio*, %struct.audio** %8, align 8
  %127 = getelementptr inbounds %struct.audio, %struct.audio* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %9, align 4
  br label %172

128:                                              ; preds = %57
  %129 = load i32, i32* @BUFSZ, align 4
  %130 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 4
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 1
  store i32 2, i32* %131, align 4
  %132 = load %struct.audio*, %struct.audio** %8, align 8
  %133 = getelementptr inbounds %struct.audio, %struct.audio* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 3
  store i32 %134, i32* %135, align 8
  %136 = load %struct.audio*, %struct.audio** %8, align 8
  %137 = getelementptr inbounds %struct.audio, %struct.audio* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AUDPP_CMD_PCM_INTF_MONO_V, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %145

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 0
  store i32 2, i32* %144, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 0, i32* %151, align 4
  %152 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.msm_audio_config, %struct.msm_audio_config* %13, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 0, i32* %157, align 4
  %158 = load i64, i64* %7, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = bitcast %struct.msm_audio_config* %13 to %struct.msm_audio_stats*
  %161 = call i64 @copy_to_user(i8* %159, %struct.msm_audio_stats* %160, i32 32)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load i64, i64* @EFAULT, align 8
  %165 = sub nsw i64 0, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %9, align 4
  br label %168

167:                                              ; preds = %145
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %167, %163
  br label %172

169:                                              ; preds = %57
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %169, %168, %119, %115, %97, %68, %65
  %173 = load %struct.audio*, %struct.audio** %8, align 8
  %174 = getelementptr inbounds %struct.audio, %struct.audio* %173, i32 0, i32 3
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %4, align 8
  br label %178

178:                                              ; preds = %172, %32, %29
  %179 = load i64, i64* %4, align 8
  ret i64 %179
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @copy_to_user(i8*, %struct.msm_audio_stats*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @audpp_set_volume_and_pan(i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @LOG(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audio_enable(%struct.audio*) #1

declare dso_local i32 @audio_disable(%struct.audio*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @audio_flush(%struct.audio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @copy_from_user(%struct.msm_audio_stats*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
