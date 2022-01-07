; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, i32, i64, i64 }
%struct.audmgr_config = type { i32, i32, i32, i32, i32 }

@RPC_AUD_DEF_SAMPLE_RATE_NONE = common dso_local global i32 0, align 4
@RPC_AUD_DEF_SAMPLE_RATE_48000 = common dso_local global i32 0, align 4
@RPC_AUD_DEF_METHOD_PLAYBACK = common dso_local global i32 0, align 4
@RPC_AUD_DEF_CODEC_EVRC = common dso_local global i32 0, align 4
@RPC_SND_METHOD_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"audio: msm_adsp_enable(audplay) failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@audevrc_dsp_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"audio: audpp_enable() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audevrc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audevrc_enable(%struct.audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio*, align 8
  %4 = alloca %struct.audmgr_config, align 4
  %5 = alloca i32, align 4
  store %struct.audio* %0, %struct.audio** %3, align 8
  %6 = load %struct.audio*, %struct.audio** %3, align 8
  %7 = getelementptr inbounds %struct.audio, %struct.audio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.audio*, %struct.audio** %3, align 8
  %13 = getelementptr inbounds %struct.audio, %struct.audio* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.audio*, %struct.audio** %3, align 8
  %15 = getelementptr inbounds %struct.audio, %struct.audio* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_NONE, align 4
  %17 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_48000, align 4
  %19 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @RPC_AUD_DEF_METHOD_PLAYBACK, align 4
  %21 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @RPC_AUD_DEF_CODEC_EVRC, align 4
  %23 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @RPC_SND_METHOD_MIDI, align 4
  %25 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.audio*, %struct.audio** %3, align 8
  %27 = getelementptr inbounds %struct.audio, %struct.audio* %26, i32 0, i32 1
  %28 = call i32 @audmgr_enable(i32* %27, %struct.audmgr_config* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %11
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %11
  %34 = load %struct.audio*, %struct.audio** %3, align 8
  %35 = getelementptr inbounds %struct.audio, %struct.audio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @msm_adsp_enable(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.audio*, %struct.audio** %3, align 8
  %42 = getelementptr inbounds %struct.audio, %struct.audio* %41, i32 0, i32 1
  %43 = call i32 @audmgr_disable(i32* %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %68

46:                                               ; preds = %33
  %47 = load %struct.audio*, %struct.audio** %3, align 8
  %48 = getelementptr inbounds %struct.audio, %struct.audio* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @audevrc_dsp_event, align 4
  %51 = load %struct.audio*, %struct.audio** %3, align 8
  %52 = call i64 @audpp_enable(i32 %49, i32 %50, %struct.audio* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.audio*, %struct.audio** %3, align 8
  %57 = getelementptr inbounds %struct.audio, %struct.audio* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @msm_adsp_disable(i32 %58)
  %60 = load %struct.audio*, %struct.audio** %3, align 8
  %61 = getelementptr inbounds %struct.audio, %struct.audio* %60, i32 0, i32 1
  %62 = call i32 @audmgr_disable(i32* %61)
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %46
  %66 = load %struct.audio*, %struct.audio** %3, align 8
  %67 = getelementptr inbounds %struct.audio, %struct.audio* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %54, %39, %31, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

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
