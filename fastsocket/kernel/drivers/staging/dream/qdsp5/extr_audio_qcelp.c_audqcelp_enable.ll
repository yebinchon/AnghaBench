; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, i32, i64, i64 }
%struct.audmgr_config = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"audqcelp_enable()\0A\00", align 1
@RPC_AUD_DEF_SAMPLE_RATE_NONE = common dso_local global i32 0, align 4
@RPC_AUD_DEF_SAMPLE_RATE_48000 = common dso_local global i32 0, align 4
@RPC_AUD_DEF_METHOD_PLAYBACK = common dso_local global i32 0, align 4
@RPC_AUD_DEF_CODEC_13K = common dso_local global i32 0, align 4
@RPC_SND_METHOD_MIDI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"audio: msm_adsp_enable(audplay) failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@audqcelp_dsp_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"audio: audpp_enable() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audqcelp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audqcelp_enable(%struct.audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio*, align 8
  %4 = alloca %struct.audmgr_config, align 4
  %5 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %3, align 8
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.audio*, %struct.audio** %3, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.audio*, %struct.audio** %3, align 8
  %14 = getelementptr inbounds %struct.audio, %struct.audio* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.audio*, %struct.audio** %3, align 8
  %16 = getelementptr inbounds %struct.audio, %struct.audio* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_NONE, align 4
  %18 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_48000, align 4
  %20 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @RPC_AUD_DEF_METHOD_PLAYBACK, align 4
  %22 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @RPC_AUD_DEF_CODEC_13K, align 4
  %24 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @RPC_SND_METHOD_MIDI, align 4
  %26 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.audio*, %struct.audio** %3, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 1
  %29 = call i32 @audmgr_enable(i32* %28, %struct.audmgr_config* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %69

34:                                               ; preds = %12
  %35 = load %struct.audio*, %struct.audio** %3, align 8
  %36 = getelementptr inbounds %struct.audio, %struct.audio* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @msm_adsp_enable(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.audio*, %struct.audio** %3, align 8
  %43 = getelementptr inbounds %struct.audio, %struct.audio* %42, i32 0, i32 1
  %44 = call i32 @audmgr_disable(i32* %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %69

47:                                               ; preds = %34
  %48 = load %struct.audio*, %struct.audio** %3, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @audqcelp_dsp_event, align 4
  %52 = load %struct.audio*, %struct.audio** %3, align 8
  %53 = call i64 @audpp_enable(i32 %50, i32 %51, %struct.audio* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.audio*, %struct.audio** %3, align 8
  %58 = getelementptr inbounds %struct.audio, %struct.audio* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @msm_adsp_disable(i32 %59)
  %61 = load %struct.audio*, %struct.audio** %3, align 8
  %62 = getelementptr inbounds %struct.audio, %struct.audio* %61, i32 0, i32 1
  %63 = call i32 @audmgr_disable(i32* %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %47
  %67 = load %struct.audio*, %struct.audio** %3, align 8
  %68 = getelementptr inbounds %struct.audio, %struct.audio* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %55, %40, %32, %11
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @audmgr_enable(i32*, %struct.audmgr_config*) #1

declare dso_local i64 @msm_adsp_enable(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @audmgr_disable(i32*) #1

declare dso_local i64 @audpp_enable(i32, i32, %struct.audio*) #1

declare dso_local i32 @msm_adsp_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
