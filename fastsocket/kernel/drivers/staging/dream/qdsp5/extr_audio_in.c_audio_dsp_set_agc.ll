; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_dsp_set_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_dsp_set_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AUDPREPROC_CMD_CFG_AGC_PARAMS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_SLOPE = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_TH = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_SLOPE = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_TH = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_AIG_FLAG = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_STATIC_GAIN = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_ENA_FLAG_ENA = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_RMS_TAY = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_RELEASEK = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_DELAY = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_ATTACKK = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_SLOW = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_FAST = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_AIG_RELEASEK = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_AIG_MIN = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_AIG_MAX = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_LEAK_UP = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_LEAK_DOWN = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_PARAM_MASK_AIG_ATTACKK = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_TX_AGC_ENA_FLAG_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_in*)* @audio_dsp_set_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_dsp_set_agc(%struct.audio_in* %0) #0 {
  %2 = alloca %struct.audio_in*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store %struct.audio_in* %0, %struct.audio_in** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 96)
  %5 = load i32, i32* @AUDPREPROC_CMD_CFG_AGC_PARAMS, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %8 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %1
  %12 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_SLOPE, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_TH, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_SLOPE, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_EXP_TH, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_AIG_FLAG, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_COMP_STATIC_GAIN, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_ENA_FLAG_ENA, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %36 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %37 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @memcpy(i32* %35, i32* %40, i32 24)
  %42 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_RMS_TAY, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_RELEASEK, align 4
  %45 = shl i32 1, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_DELAY, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_ATTACKK, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_SLOW, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_LEAKRATE_FAST, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_AIG_RELEASEK, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_AIG_MIN, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_AIG_MAX, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_LEAK_UP, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_LEAK_DOWN, align 4
  %72 = shl i32 1, %71
  %73 = or i32 %70, %72
  %74 = load i32, i32* @AUDPREPROC_CMD_PARAM_MASK_AIG_ATTACKK, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %79 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %80 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = call i32 @memcpy(i32* %78, i32* %83, i32 56)
  br label %91

85:                                               ; preds = %1
  %86 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_PARAM_MASK_TX_AGC_ENA_FLAG, align 4
  %87 = shl i32 1, %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @AUDPREPROC_CMD_TX_AGC_ENA_FLAG_DIS, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %11
  %92 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %93 = call i32 @audio_send_queue_pre(%struct.audio_in* %92, %struct.TYPE_6__* %3, i32 96)
  ret i32 %93
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @audio_send_queue_pre(%struct.audio_in*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
