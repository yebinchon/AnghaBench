; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_notify_end_of_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_notify_end_of_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32 }
%struct.vx_rmh = type { i32 }

@IRQ_PAUSE_START_CONNECT = common dso_local global i32 0, align 4
@CMD_NOTIFY_END_OF_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*)* @vx_notify_end_of_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_notify_end_of_buffer(%struct.vx_core* %0, %struct.vx_pipe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vx_rmh, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %5, align 8
  %8 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %9 = load i32, i32* @IRQ_PAUSE_START_CONNECT, align 4
  %10 = call i32 @vx_send_rih_nolock(%struct.vx_core* %8, i32 %9)
  %11 = load i32, i32* @CMD_NOTIFY_END_OF_BUFFER, align 4
  %12 = call i32 @vx_init_rmh(%struct.vx_rmh* %7, i32 %11)
  %13 = load %struct.vx_pipe*, %struct.vx_pipe** %5, align 8
  %14 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vx_set_stream_cmd_params(%struct.vx_rmh* %7, i32 0, i32 %15)
  %17 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %18 = call i32 @vx_send_msg_nolock(%struct.vx_core* %17, %struct.vx_rmh* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %25 = load i32, i32* @IRQ_PAUSE_START_CONNECT, align 4
  %26 = call i32 @vx_send_rih_nolock(%struct.vx_core* %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @vx_send_rih_nolock(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_init_rmh(%struct.vx_rmh*, i32) #1

declare dso_local i32 @vx_set_stream_cmd_params(%struct.vx_rmh*, i32, i32) #1

declare dso_local i32 @vx_send_msg_nolock(%struct.vx_core*, %struct.vx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
