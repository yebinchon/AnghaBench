; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_input_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_mtpav.c_snd_mtpav_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mtpav* }
%struct.mtpav = type { i32, i32, %struct.mtpav_port* }
%struct.mtpav_port = type { %struct.snd_rawmidi_substream*, i32 }

@MTPAV_MODE_INPUT_OPENED = common dso_local global i32 0, align 4
@CREG = common dso_local global i32 0, align 4
@SIGC_INTEN = common dso_local global i32 0, align 4
@SIGC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_mtpav_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mtpav_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.mtpav*, align 8
  %4 = alloca %struct.mtpav_port*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %6 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mtpav*, %struct.mtpav** %9, align 8
  store %struct.mtpav* %10, %struct.mtpav** %3, align 8
  %11 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %12 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %11, i32 0, i32 2
  %13 = load %struct.mtpav_port*, %struct.mtpav_port** %12, align 8
  %14 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %13, i64 %16
  store %struct.mtpav_port* %17, %struct.mtpav_port** %4, align 8
  %18 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %19 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* @MTPAV_MODE_INPUT_OPENED, align 4
  %23 = load %struct.mtpav_port*, %struct.mtpav_port** %4, align 8
  %24 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %28 = load %struct.mtpav_port*, %struct.mtpav_port** %4, align 8
  %29 = getelementptr inbounds %struct.mtpav_port, %struct.mtpav_port* %28, i32 0, i32 0
  store %struct.snd_rawmidi_substream* %27, %struct.snd_rawmidi_substream** %29, align 8
  %30 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %31 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %37 = load i32, i32* @CREG, align 4
  %38 = load i32, i32* @SIGC_INTEN, align 4
  %39 = load i32, i32* @SIGC_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_mtpav_mputreg(%struct.mtpav* %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %35, %1
  %43 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %44 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_mtpav_mputreg(%struct.mtpav*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
