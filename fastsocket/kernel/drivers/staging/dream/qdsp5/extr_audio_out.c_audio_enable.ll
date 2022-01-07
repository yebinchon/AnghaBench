; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.audmgr_config = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"audio_enable()\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RPC_AUD_DEF_SAMPLE_RATE_NONE = common dso_local global i32 0, align 4
@RPC_AUD_DEF_SAMPLE_RATE_48000 = common dso_local global i32 0, align 4
@RPC_AUD_DEF_METHOD_HOST_PCM = common dso_local global i32 0, align 4
@RPC_AUD_DEF_CODEC_PCM = common dso_local global i32 0, align 4
@RPC_SND_METHOD_MIDI = common dso_local global i32 0, align 4
@audio_dsp_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"audio: audpp_enable() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PWRSINK_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_enable(%struct.audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio*, align 8
  %4 = alloca %struct.audmgr_config, align 4
  %5 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %3, align 8
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.audio*, %struct.audio** %3, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.audio*, %struct.audio** %3, align 8
  %14 = getelementptr inbounds %struct.audio, %struct.audio* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.audio*, %struct.audio** %3, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %20
  %32 = load %struct.audio*, %struct.audio** %3, align 8
  %33 = getelementptr inbounds %struct.audio, %struct.audio* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.audio*, %struct.audio** %3, align 8
  %35 = getelementptr inbounds %struct.audio, %struct.audio* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_NONE, align 4
  %37 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_48000, align 4
  %39 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @RPC_AUD_DEF_METHOD_HOST_PCM, align 4
  %41 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @RPC_AUD_DEF_CODEC_PCM, align 4
  %43 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @RPC_SND_METHOD_MIDI, align 4
  %45 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.audio*, %struct.audio** %3, align 8
  %47 = call i32 @audio_prevent_sleep(%struct.audio* %46)
  %48 = load %struct.audio*, %struct.audio** %3, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 1
  %50 = call i32 @audmgr_enable(i32* %49, %struct.audmgr_config* %4)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.audio*, %struct.audio** %3, align 8
  %55 = call i32 @audio_allow_sleep(%struct.audio* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %76

57:                                               ; preds = %31
  %58 = load i32, i32* @audio_dsp_event, align 4
  %59 = load %struct.audio*, %struct.audio** %3, align 8
  %60 = call i64 @audpp_enable(i32 -1, i32 %58, %struct.audio* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.audio*, %struct.audio** %3, align 8
  %65 = getelementptr inbounds %struct.audio, %struct.audio* %64, i32 0, i32 1
  %66 = call i32 @audmgr_disable(i32* %65)
  %67 = load %struct.audio*, %struct.audio** %3, align 8
  %68 = call i32 @audio_allow_sleep(%struct.audio* %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %76

71:                                               ; preds = %57
  %72 = load %struct.audio*, %struct.audio** %3, align 8
  %73 = getelementptr inbounds %struct.audio, %struct.audio* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load i32, i32* @PWRSINK_AUDIO, align 4
  %75 = call i32 @htc_pwrsink_set(i32 %74, i32 100)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %62, %53, %28, %11
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @audio_prevent_sleep(%struct.audio*) #1

declare dso_local i32 @audmgr_enable(i32*, %struct.audmgr_config*) #1

declare dso_local i32 @audio_allow_sleep(%struct.audio*) #1

declare dso_local i64 @audpp_enable(i32, i32, %struct.audio*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @audmgr_disable(i32*) #1

declare dso_local i32 @htc_pwrsink_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
