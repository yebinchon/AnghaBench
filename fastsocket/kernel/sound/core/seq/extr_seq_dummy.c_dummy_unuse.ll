; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_dummy.c_dummy_unuse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_dummy.c_dummy_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.snd_seq_dummy_port = type { i32, i32, i32, i64 }
%struct.snd_seq_event = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CONTROLLER = common dso_local global i32 0, align 4
@MIDI_CTL_ALL_SOUNDS_OFF = common dso_local global i32 0, align 4
@MIDI_CTL_RESET_CONTROLLERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @dummy_unuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_unuse(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_seq_port_subscribe*, align 8
  %5 = alloca %struct.snd_seq_dummy_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event, align 4
  store i8* %0, i8** %3, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.snd_seq_dummy_port*
  store %struct.snd_seq_dummy_port* %9, %struct.snd_seq_dummy_port** %5, align 8
  %10 = call i32 @memset(%struct.snd_seq_event* %7, i32 0, i32 20)
  %11 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %5, align 8
  %12 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %5, align 8
  %17 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %5, align 8
  %23 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %29 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SNDRV_SEQ_EVENT_CONTROLLER, align 4
  %32 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %57, %27
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @MIDI_CTL_ALL_SOUNDS_OFF, align 4
  %42 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_seq_kernel_client_dispatch(i32 %47, %struct.snd_seq_event* %7, i32 0, i32 0)
  %49 = load i32, i32* @MIDI_CTL_RESET_CONTROLLERS, align 4
  %50 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %5, align 8
  %54 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @snd_seq_kernel_client_dispatch(i32 %55, %struct.snd_seq_event* %7, i32 0, i32 0)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %33

60:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @memset(%struct.snd_seq_event*, i32, i32) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
