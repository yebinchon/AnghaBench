; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_dsp_set_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_dsp_set_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AUDPREPROC_CMD_CFG_NS_PARAMS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NS_ENA = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_HB_ENA = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_VA_ENA = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NLMS_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_DES_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NS_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_CNI_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NLES_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_HB_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_VA_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_PCD_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_FEHI_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NEHI_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_NLPP_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_FNE_DIS = common dso_local global i32 0, align 4
@AUDPREPROC_CMD_EC_MODE_NEW_PRENLMS_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_in*)* @audio_dsp_set_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_dsp_set_ns(%struct.audio_in* %0) #0 {
  %2 = alloca %struct.audio_in*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store %struct.audio_in* %0, %struct.audio_in** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 32)
  %5 = load i32, i32* @AUDPREPROC_CMD_CFG_NS_PARAMS, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %8 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NS_ENA, align 4
  %13 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_HB_ENA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_VA_ENA, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %19 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %20 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @memcpy(i32* %18, i32* %21, i32 4)
  br label %50

23:                                               ; preds = %1
  %24 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NLMS_DIS, align 4
  %25 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_DES_DIS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NS_DIS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_CNI_DIS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NLES_DIS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_HB_DIS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_VA_DIS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_PCD_DIS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_FEHI_DIS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NEHI_DIS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_NLPP_DIS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_FNE_DIS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AUDPREPROC_CMD_EC_MODE_NEW_PRENLMS_DIS, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %23, %11
  %51 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %52 = call i32 @audio_send_queue_pre(%struct.audio_in* %51, %struct.TYPE_6__* %3, i32 32)
  ret i32 %52
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
