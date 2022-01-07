; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_dsp_out_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_dsp_out_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@AUDPP_CMD_PCM_INTF_2 = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_OBJECT_NUM = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_CONFIG_CMD_V = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V = common dso_local global i32 0, align 4
@AUDPP_CMD_PCM_INTF_ENA_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*, i32)* @audio_dsp_out_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_dsp_out_enable(%struct.audio* %0, i32 %1) #0 {
  %3 = alloca %struct.audio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  store %struct.audio* %0, %struct.audio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.TYPE_6__* %5, i32 0, i32 72)
  %7 = load i32, i32* @AUDPP_CMD_PCM_INTF_2, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 15
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @AUDPP_CMD_PCM_INTF_OBJECT_NUM, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 14
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @AUDPP_CMD_PCM_INTF_CONFIG_CMD_V, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 13
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @AUDPP_CMD_PCM_INTF_RX_ENA_ARMTODSP_V, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 12
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %2
  %18 = load %struct.audio*, %struct.audio** %3, align 8
  %19 = getelementptr inbounds %struct.audio, %struct.audio* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.audio*, %struct.audio** %3, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.audio*, %struct.audio** %3, align 8
  %34 = getelementptr inbounds %struct.audio, %struct.audio* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 11
  store i32 %38, i32* %39, align 4
  %40 = load %struct.audio*, %struct.audio** %3, align 8
  %41 = getelementptr inbounds %struct.audio, %struct.audio* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load %struct.audio*, %struct.audio** %3, align 8
  %48 = getelementptr inbounds %struct.audio, %struct.audio* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 16
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.audio*, %struct.audio** %3, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 10
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @AUDPP_CMD_PCM_INTF_ENA_V, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 9
  store i32 %62, i32* %63, align 4
  %64 = load %struct.audio*, %struct.audio** %3, align 8
  %65 = getelementptr inbounds %struct.audio, %struct.audio* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 8
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  store i32 1, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.audio*, %struct.audio** %3, align 8
  %71 = getelementptr inbounds %struct.audio, %struct.audio* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  store i32 %72, i32* %73, align 8
  %74 = load %struct.audio*, %struct.audio** %3, align 8
  %75 = getelementptr inbounds %struct.audio, %struct.audio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %17, %2
  %79 = call i32 @audpp_send_queue2(%struct.TYPE_6__* %5, i32 72)
  ret i32 %79
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @audpp_send_queue2(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
