; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_transfer_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_transfer_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.vx_pipe = type { i32 }

@IRQ_CONNECT_STREAM_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"error hbuffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no enough hbuffer space %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32)* @vx_pcm_playback_transfer_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_playback_transfer_chunk(%struct.vx_core* %0, %struct.snd_pcm_runtime* %1, %struct.vx_pipe* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vx_core*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.vx_pipe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %6, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %7, align 8
  store %struct.vx_pipe* %2, %struct.vx_pipe** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %13 = load %struct.vx_pipe*, %struct.vx_pipe** %8, align 8
  %14 = call i32 @vx_query_hbuffer_size(%struct.vx_core* %12, %struct.vx_pipe* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %19 = load i32, i32* @IRQ_CONNECT_STREAM_NEXT, align 4
  %20 = call i32 @vx_send_rih(%struct.vx_core* %18, i32 %19)
  %21 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %29 = load i32, i32* @IRQ_CONNECT_STREAM_NEXT, align 4
  %30 = call i32 @vx_send_rih(%struct.vx_core* %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %23
  %36 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %37 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %41 = load %struct.vx_pipe*, %struct.vx_pipe** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @vx_pseudo_dma_write(%struct.vx_core* %39, %struct.snd_pcm_runtime* %40, %struct.vx_pipe* %41, i32 %42)
  %44 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %45 = load %struct.vx_pipe*, %struct.vx_pipe** %8, align 8
  %46 = call i32 @vx_notify_end_of_buffer(%struct.vx_core* %44, %struct.vx_pipe* %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %48 = load i32, i32* @IRQ_CONNECT_STREAM_NEXT, align 4
  %49 = call i32 @vx_send_rih_nolock(%struct.vx_core* %47, i32 %48)
  %50 = load %struct.vx_core*, %struct.vx_core** %6, align 8
  %51 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %35, %27, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @vx_query_hbuffer_size(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_send_rih(%struct.vx_core*, i32) #1

declare dso_local i32 @snd_printd(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vx_pseudo_dma_write(%struct.vx_core*, %struct.snd_pcm_runtime*, %struct.vx_pipe*, i32) #1

declare dso_local i32 @vx_notify_end_of_buffer(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_send_rih_nolock(%struct.vx_core*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
