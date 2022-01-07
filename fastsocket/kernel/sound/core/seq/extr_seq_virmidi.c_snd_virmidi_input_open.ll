; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.snd_rawmidi_runtime*, %struct.TYPE_2__* }
%struct.snd_rawmidi_runtime = type { %struct.snd_virmidi* }
%struct.snd_virmidi = type { %struct.snd_virmidi_dev*, i32, i32, i32, i32, i32, %struct.snd_rawmidi_substream* }
%struct.snd_virmidi_dev = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.snd_virmidi_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_virmidi_input_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_input_open(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_virmidi_dev*, align 8
  %5 = alloca %struct.snd_rawmidi_runtime*, align 8
  %6 = alloca %struct.snd_virmidi*, align 8
  %7 = alloca i64, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %11, align 8
  store %struct.snd_virmidi_dev* %12, %struct.snd_virmidi_dev** %4, align 8
  %13 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %14, align 8
  store %struct.snd_rawmidi_runtime* %15, %struct.snd_rawmidi_runtime** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.snd_virmidi* @kzalloc(i32 40, i32 %16)
  store %struct.snd_virmidi* %17, %struct.snd_virmidi** %6, align 8
  %18 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %19 = icmp eq %struct.snd_virmidi* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %25 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %26 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %25, i32 0, i32 6
  store %struct.snd_rawmidi_substream* %24, %struct.snd_rawmidi_substream** %26, align 8
  %27 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %28 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %27, i32 0, i32 5
  %29 = call i64 @snd_midi_event_new(i32 0, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %33 = call i32 @kfree(%struct.snd_virmidi* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %71

36:                                               ; preds = %23
  %37 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %38 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %41 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %43 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %46 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %48 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %51 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %53 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %53, i32 0, i32 0
  store %struct.snd_virmidi* %52, %struct.snd_virmidi** %54, align 8
  %55 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %56 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @write_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %60 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %59, i32 0, i32 1
  %61 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %62 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %65 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @write_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %4, align 8
  %69 = load %struct.snd_virmidi*, %struct.snd_virmidi** %6, align 8
  %70 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %69, i32 0, i32 0
  store %struct.snd_virmidi_dev* %68, %struct.snd_virmidi_dev** %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %36, %31, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.snd_virmidi* @kzalloc(i32, i32) #1

declare dso_local i64 @snd_midi_event_new(i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_virmidi*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
