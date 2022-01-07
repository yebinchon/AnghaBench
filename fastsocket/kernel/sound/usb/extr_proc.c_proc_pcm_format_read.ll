; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_proc_pcm_format_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_proc.c_proc_pcm_format_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_usb_stream* }
%struct.snd_usb_stream = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s : %s\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\0APlayback:\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"\0ACapture:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @proc_pcm_format_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_pcm_format_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_usb_stream*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %6 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %7 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %6, i32 0, i32 0
  %8 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %7, align 8
  store %struct.snd_usb_stream* %8, %struct.snd_usb_stream** %5, align 8
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %11 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %24 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %2
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %35 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = call i32 @proc_dump_substream_status(%struct.TYPE_9__* %38, %struct.snd_info_buffer* %39)
  %41 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %42 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = call i32 @proc_dump_substream_formats(%struct.TYPE_9__* %45, %struct.snd_info_buffer* %46)
  br label %48

48:                                               ; preds = %31, %2
  %49 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %50 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %48
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %63
  %65 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %66 = call i32 @proc_dump_substream_status(%struct.TYPE_9__* %64, %struct.snd_info_buffer* %65)
  %67 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %68 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %70
  %72 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %73 = call i32 @proc_dump_substream_formats(%struct.TYPE_9__* %71, %struct.snd_info_buffer* %72)
  br label %74

74:                                               ; preds = %57, %48
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @proc_dump_substream_status(%struct.TYPE_9__*, %struct.snd_info_buffer*) #1

declare dso_local i32 @proc_dump_substream_formats(%struct.TYPE_9__*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
