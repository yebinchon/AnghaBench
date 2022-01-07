; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_close_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_rawmidi.c_close_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_rawmidi_substream = type { i64, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.snd_rawmidi_substream*)* }
%struct.TYPE_4__ = type { i32 (%struct.snd_rawmidi_substream*)* }

@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi*, %struct.snd_rawmidi_substream*, i32)* @close_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_substream(%struct.snd_rawmidi* %0, %struct.snd_rawmidi_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_rawmidi*, align 8
  %5 = alloca %struct.snd_rawmidi_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.snd_rawmidi* %0, %struct.snd_rawmidi** %4, align 8
  store %struct.snd_rawmidi_substream* %1, %struct.snd_rawmidi_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %84

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %25 = call i32 @snd_rawmidi_input_trigger(%struct.snd_rawmidi_substream* %24, i32 0)
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %28 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store i8 -2, i8* %7, align 1
  %32 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %33 = call i32 @snd_rawmidi_kernel_write(%struct.snd_rawmidi_substream* %32, i8* %7, i32 1)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %36 = call i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream* %35)
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %42 = call i32 @snd_rawmidi_output_trigger(%struct.snd_rawmidi_substream* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %23
  br label %45

45:                                               ; preds = %44, %14
  %46 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %47 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %49, align 8
  %51 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %52 = call i32 %50(%struct.snd_rawmidi_substream* %51)
  %53 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %54 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %56, align 8
  %58 = icmp ne i32 (%struct.snd_rawmidi_substream*)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.snd_rawmidi_substream*)*, i32 (%struct.snd_rawmidi_substream*)** %63, align 8
  %65 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %66 = call i32 %64(%struct.snd_rawmidi_substream* %65)
  br label %67

67:                                               ; preds = %59, %45
  %68 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %69 = call i32 @snd_rawmidi_runtime_free(%struct.snd_rawmidi_substream* %68)
  %70 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %71 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %73 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %4, align 8
  %75 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %5, align 8
  %78 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %67, %13
  ret void
}

declare dso_local i32 @snd_rawmidi_input_trigger(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @snd_rawmidi_kernel_write(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_rawmidi_drain_output(%struct.snd_rawmidi_substream*) #1

declare dso_local i32 @snd_rawmidi_output_trigger(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i32 @snd_rawmidi_runtime_free(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
