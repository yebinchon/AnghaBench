; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_send_timer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/oss/extr_seq_oss_timer.c_send_timer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32, i32 }
%struct.snd_seq_event = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_SYSTEM_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, i32, i32)* @send_timer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_timer_event(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_oss_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event, align 8
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @memset(%struct.snd_seq_event* %7, i32 0, i32 40)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @SNDRV_SEQ_CLIENT_SYSTEM, align 4
  %19 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SNDRV_SEQ_PORT_SYSTEM_TIMER, align 4
  %22 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %4, align 8
  %40 = getelementptr inbounds %struct.seq_oss_devinfo, %struct.seq_oss_devinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_seq_kernel_client_dispatch(i32 %41, %struct.snd_seq_event* %7, i32 1, i32 0)
  ret i32 %42
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
