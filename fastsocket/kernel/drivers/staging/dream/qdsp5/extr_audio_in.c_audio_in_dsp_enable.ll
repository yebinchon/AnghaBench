; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_dsp_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_dsp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@AUDREC_CMD_CFG = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_ENA = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_DIS = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_in*, i32)* @audio_in_dsp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_in_dsp_enable(%struct.audio_in* %0, i32 %1) #0 {
  %3 = alloca %struct.audio_in*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store %struct.audio_in* %0, %struct.audio_in** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 24)
  %7 = load i32, i32* @AUDREC_CMD_CFG, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @AUDREC_CMD_TYPE_0_ENA, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @AUDREC_CMD_TYPE_0_DIS, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @AUDREC_CMD_TYPE_0_UPDATE, align 4
  %19 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %20 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %28 = call i32 @audio_send_queue_rec(%struct.audio_in* %27, %struct.TYPE_4__* %5, i32 24)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @audio_send_queue_rec(%struct.audio_in*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
