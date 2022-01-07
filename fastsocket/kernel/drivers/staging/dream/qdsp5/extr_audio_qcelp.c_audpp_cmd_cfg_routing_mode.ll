; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audpp_cmd_cfg_routing_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audpp_cmd_cfg_routing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i32 }
%struct.audpp_cmd_routing_mode = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"audpp_cmd_cfg_routing_mode()\0A\00", align 1
@AUDPP_CMD_ROUTING_MODE = common dso_local global i32 0, align 4
@ROUTING_MODE_FTRT = common dso_local global i32 0, align 4
@ROUTING_MODE_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*)* @audpp_cmd_cfg_routing_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audpp_cmd_cfg_routing_mode(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca %struct.audpp_cmd_routing_mode, align 4
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @memset(%struct.audpp_cmd_routing_mode* %3, i32 0, i32 12)
  %6 = load i32, i32* @AUDPP_CMD_ROUTING_MODE, align 4
  %7 = getelementptr inbounds %struct.audpp_cmd_routing_mode, %struct.audpp_cmd_routing_mode* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = load %struct.audio*, %struct.audio** %2, align 8
  %9 = getelementptr inbounds %struct.audio, %struct.audio* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.audpp_cmd_routing_mode, %struct.audpp_cmd_routing_mode* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.audio*, %struct.audio** %2, align 8
  %13 = getelementptr inbounds %struct.audio, %struct.audio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ROUTING_MODE_FTRT, align 4
  %18 = getelementptr inbounds %struct.audpp_cmd_routing_mode, %struct.audpp_cmd_routing_mode* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ROUTING_MODE_RT, align 4
  %21 = getelementptr inbounds %struct.audpp_cmd_routing_mode, %struct.audpp_cmd_routing_mode* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 @audpp_send_queue1(%struct.audpp_cmd_routing_mode* %3, i32 12)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.audpp_cmd_routing_mode*, i32, i32) #1

declare dso_local i32 @audpp_send_queue1(%struct.audpp_cmd_routing_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
