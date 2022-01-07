; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_config_hostpcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_config_hostpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }
%struct.audplay_cmd_hpcm_buf_cfg = type { i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"audamrnb_config_hostpcm()\0A\00", align 1
@AUDPLAY_CMD_HPCM_BUF_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*)* @audamrnb_config_hostpcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audamrnb_config_hostpcm(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca %struct.audplay_cmd_hpcm_buf_cfg, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @AUDPLAY_CMD_HPCM_BUF_CFG, align 4
  %6 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 5
  store i32 %5, i32* %6, align 4
  %7 = load %struct.audio*, %struct.audio** %2, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 0
  store i32 49152, i32* %12, align 8
  %13 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.audplay_cmd_hpcm_buf_cfg, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.audio*, %struct.audio** %2, align 8
  %16 = call i32 @audplay_send_queue0(%struct.audio* %15, %struct.audplay_cmd_hpcm_buf_cfg* %3, i32 32)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @audplay_send_queue0(%struct.audio*, %struct.audplay_cmd_hpcm_buf_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
