; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.snd_virmidi* }
%struct.snd_virmidi = type { i32, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SNDRV_VIRMIDI_SEQ_DISPATCH = common dso_local global i64 0, align 8
@SNDRV_VIRMIDI_SUBSCRIBE = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_virmidi_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_virmidi_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_virmidi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.snd_virmidi*, %struct.snd_virmidi** %13, align 8
  store %struct.snd_virmidi* %14, %struct.snd_virmidi** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %134

17:                                               ; preds = %2
  %18 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %19 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %21 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_VIRMIDI_SEQ_DISPATCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %17
  %26 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %27 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %26, i32 0, i32 5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_VIRMIDI_SUBSCRIBE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %25
  %35 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %36 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %37 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %42 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %40, %45
  %47 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %35, i32 %46)
  br label %137

48:                                               ; preds = %25, %17
  %49 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %50 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %57 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %60 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %59, i32 0, i32 2
  %61 = call i32 (...) @in_atomic()
  %62 = call i64 @snd_seq_kernel_client_dispatch(i32 %58, %struct.TYPE_7__* %60, i32 %61, i32 0)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %137

65:                                               ; preds = %55
  %66 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %67 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %68 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %48
  br label %71

71:                                               ; preds = %70, %132
  %72 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %74 = call i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream* %72, i8* %73, i32 32)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %133

78:                                               ; preds = %71
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %131, %94, %78
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %132

83:                                               ; preds = %80
  %84 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %85 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %90 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %89, i32 0, i32 2
  %91 = call i32 @snd_midi_event_encode(i32 %86, i8* %87, i32 %88, %struct.TYPE_7__* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %96 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @snd_midi_event_reset_encode(i32 %97)
  br label %80

99:                                               ; preds = %83
  %100 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream* %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %111 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %99
  %117 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %118 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %121 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %120, i32 0, i32 2
  %122 = call i32 (...) @in_atomic()
  %123 = call i64 @snd_seq_kernel_client_dispatch(i32 %119, %struct.TYPE_7__* %121, i32 %122, i32 0)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %137

126:                                              ; preds = %116
  %127 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %128 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %129 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %99
  br label %80

132:                                              ; preds = %80
  br label %71

133:                                              ; preds = %77
  br label %137

134:                                              ; preds = %2
  %135 = load %struct.snd_virmidi*, %struct.snd_virmidi** %5, align 8
  %136 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %34, %64, %125, %134, %133
  ret void
}

declare dso_local i32 @snd_rawmidi_transmit_ack(%struct.snd_rawmidi_substream*, i32) #1

declare dso_local i64 @snd_seq_kernel_client_dispatch(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @in_atomic(...) #1

declare dso_local i32 @snd_rawmidi_transmit_peek(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_midi_event_encode(i32, i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @snd_midi_event_reset_encode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
