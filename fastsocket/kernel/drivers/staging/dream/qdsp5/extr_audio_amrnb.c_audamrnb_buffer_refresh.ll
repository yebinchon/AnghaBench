; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_buffer_refresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_buffer_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.audplay_cmd_buffer_refresh = type { i32, i32, i32, i64, i32 }

@AUDPLAY_CMD_BUFFER_REFRESH = common dso_local global i32 0, align 4
@AMRNB_DECODED_FRSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"audplay_buffer_fresh: buf0_addr=%x buf0_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*)* @audamrnb_buffer_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audamrnb_buffer_refresh(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca %struct.audplay_cmd_buffer_refresh, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = load i32, i32* @AUDPLAY_CMD_BUFFER_REFRESH, align 4
  %5 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 4
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.audio*, %struct.audio** %2, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.audio*, %struct.audio** %2, align 8
  %11 = getelementptr inbounds %struct.audio, %struct.audio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load %struct.audio*, %struct.audio** %2, align 8
  %18 = getelementptr inbounds %struct.audio, %struct.audio* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.audio*, %struct.audio** %2, align 8
  %21 = getelementptr inbounds %struct.audio, %struct.audio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.audio*, %struct.audio** %2, align 8
  %27 = getelementptr inbounds %struct.audio, %struct.audio* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.audio*, %struct.audio** %2, align 8
  %30 = getelementptr inbounds %struct.audio, %struct.audio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AMRNB_DECODED_FRSZ, align 4
  %36 = srem i32 %34, %35
  %37 = sub nsw i32 %25, %36
  %38 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.audplay_cmd_buffer_refresh, %struct.audplay_cmd_buffer_refresh* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load %struct.audio*, %struct.audio** %2, align 8
  %46 = call i32 @audplay_send_queue0(%struct.audio* %45, %struct.audplay_cmd_buffer_refresh* %3, i32 32)
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @audplay_send_queue0(%struct.audio*, %struct.audplay_cmd_buffer_refresh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
