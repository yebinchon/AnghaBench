; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32, i64, i32, i32, i32, i32 }
%struct.audmgr_config = type { i32, i32, i32, i32, i32 }

@RPC_AUD_DEF_SAMPLE_RATE_NONE = common dso_local global i32 0, align 4
@RPC_AUD_DEF_METHOD_RECORD = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_INDEX_WAV = common dso_local global i64 0, align 8
@RPC_AUD_DEF_CODEC_PCM = common dso_local global i32 0, align 4
@RPC_AUD_DEF_CODEC_AAC = common dso_local global i32 0, align 4
@RPC_SND_METHOD_MIDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"audrec: msm_adsp_enable(audpre) failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"audrec: msm_adsp_enable(audrec) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_in*)* @audio_in_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_in_enable(%struct.audio_in* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_in*, align 8
  %4 = alloca %struct.audmgr_config, align 4
  %5 = alloca i32, align 4
  store %struct.audio_in* %0, %struct.audio_in** %3, align 8
  %6 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %7 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %13 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_NONE, align 4
  %17 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @RPC_AUD_DEF_METHOD_RECORD, align 4
  %19 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %21 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AUDREC_CMD_TYPE_0_INDEX_WAV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load i32, i32* @RPC_AUD_DEF_CODEC_PCM, align 4
  %27 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %11
  %29 = load i32, i32* @RPC_AUD_DEF_CODEC_AAC, align 4
  %30 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @RPC_SND_METHOD_MIDI, align 4
  %33 = getelementptr inbounds %struct.audmgr_config, %struct.audmgr_config* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %35 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %34, i32 0, i32 4
  %36 = call i32 @audmgr_enable(i32* %35, %struct.audmgr_config* %4)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %66

41:                                               ; preds = %31
  %42 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %43 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @msm_adsp_enable(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %41
  %52 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %53 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @msm_adsp_enable(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %63 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %65 = call i32 @audio_in_dsp_enable(%struct.audio_in* %64, i32 1)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %57, %47, %39, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @audmgr_enable(i32*, %struct.audmgr_config*) #1

declare dso_local i64 @msm_adsp_enable(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @audio_in_dsp_enable(%struct.audio_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
