; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_snd_emux_sysex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_nrpn.c_snd_emux_sysex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel_set = type { i32 }
%struct.snd_emux_port = type { %struct.snd_emux* }
%struct.snd_emux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)* }

@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_sysex(i8* %0, i8* %1, i32 %2, i32 %3, %struct.snd_midi_channel_set* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_midi_channel_set*, align 8
  %11 = alloca %struct.snd_emux_port*, align 8
  %12 = alloca %struct.snd_emux*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_midi_channel_set* %4, %struct.snd_midi_channel_set** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %14, %struct.snd_emux_port** %11, align 8
  %15 = load %struct.snd_emux_port*, %struct.snd_emux_port** %11, align 8
  %16 = icmp ne %struct.snd_emux_port* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %10, align 8
  %19 = icmp ne %struct.snd_midi_channel_set* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ true, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %54

27:                                               ; preds = %21
  %28 = load %struct.snd_emux_port*, %struct.snd_emux_port** %11, align 8
  %29 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %28, i32 0, i32 0
  %30 = load %struct.snd_emux*, %struct.snd_emux** %29, align 8
  store %struct.snd_emux* %30, %struct.snd_emux** %12, align 8
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %36 [
    i32 128, label %32
  ]

32:                                               ; preds = %27
  %33 = load %struct.snd_emux_port*, %struct.snd_emux_port** %11, align 8
  %34 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %35 = call i32 @snd_emux_update_port(%struct.snd_emux_port* %33, i32 %34)
  br label %54

36:                                               ; preds = %27
  %37 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %38 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)*, i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)** %39, align 8
  %41 = icmp ne i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %44 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)*, i32 (%struct.snd_emux*, i8*, i32, i32, %struct.snd_midi_channel_set*)** %45, align 8
  %47 = load %struct.snd_emux*, %struct.snd_emux** %12, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %10, align 8
  %52 = call i32 %46(%struct.snd_emux* %47, i8* %48, i32 %49, i32 %50, %struct.snd_midi_channel_set* %51)
  br label %53

53:                                               ; preds = %42, %36
  br label %54

54:                                               ; preds = %26, %53, %32
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_emux_update_port(%struct.snd_emux_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
