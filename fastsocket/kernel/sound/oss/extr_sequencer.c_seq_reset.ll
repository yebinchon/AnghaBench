; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32)* }
%struct.TYPE_4__ = type { i32 (i32)* }

@jiffies = common dso_local global i32 0, align 4
@seq_time = common dso_local global i32 0, align 4
@prev_input_time = common dso_local global i64 0, align 8
@prev_event_time = common dso_local global i64 0, align 8
@qtail = common dso_local global i64 0, align 8
@qhead = common dso_local global i64 0, align 8
@qlen = common dso_local global i64 0, align 8
@iqtail = common dso_local global i64 0, align 8
@iqhead = common dso_local global i64 0, align 8
@iqlen = common dso_local global i64 0, align 8
@max_synthdev = common dso_local global i32 0, align 4
@synth_open_mask = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@seq_mode = common dso_local global i64 0, align 8
@SEQ_2 = common dso_local global i64 0, align 8
@max_mididev = common dso_local global i32 0, align 4
@midi_written = common dso_local global i64* null, align 8
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8
@midi_opened = common dso_local global i64* null, align 8
@seq_playing = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@seq_sleeper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @seq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 (...) @sound_stop_timer()
  %5 = load i32, i32* @jiffies, align 4
  store i32 %5, i32* @seq_time, align 4
  store i64 0, i64* @prev_input_time, align 8
  store i64 0, i64* @prev_event_time, align 8
  store i64 0, i64* @qtail, align 8
  store i64 0, i64* @qhead, align 8
  store i64 0, i64* @qlen, align 8
  store i64 0, i64* @iqtail, align 8
  store i64 0, i64* @iqhead, align 8
  store i64 0, i64* @iqlen, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @max_synthdev, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load i32, i32* @synth_open_mask, align 4
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %1, align 4
  %32 = call i32 %30(i32 %31)
  br label %33

33:                                               ; preds = %23, %16
  br label %34

34:                                               ; preds = %33, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load i64, i64* @seq_mode, align 8
  %40 = load i64, i64* @SEQ_2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %101, %42
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %104

46:                                               ; preds = %43
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @max_synthdev, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %100

51:                                               ; preds = %47
  %52 = load i32, i32* @synth_open_mask, align 4
  %53 = load i32, i32* %1, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %70, align 8
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i32 %71(i32 %72, i32 %73, i32 123, i32 0)
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %75, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %80, align 8
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 %81(i32 %82, i32 %83, i32 121, i32 0)
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %85, i64 %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %90, align 8
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 %91(i32 %92, i32 %93, i32 8192)
  br label %95

95:                                               ; preds = %64, %57
  br label %96

96:                                               ; preds = %95, %51
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %47

100:                                              ; preds = %47
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %43

104:                                              ; preds = %43
  br label %161

105:                                              ; preds = %38
  store i32 0, i32* %1, align 4
  br label %106

106:                                              ; preds = %157, %105
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* @max_mididev, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %160

110:                                              ; preds = %106
  %111 = load i64*, i64** @midi_written, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %156

117:                                              ; preds = %110
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @midi_outc(i32 %118, i32 254)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %135, %117
  %121 = load i32, i32* %2, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* %2, align 4
  %126 = and i32 %125, 15
  %127 = add nsw i32 176, %126
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = call i32 @midi_outc(i32 %124, i32 %129)
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @midi_outc(i32 %131, i32 123)
  %133 = load i32, i32* %1, align 4
  %134 = call i32 @midi_outc(i32 %133, i32 0)
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %120

138:                                              ; preds = %120
  %139 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %140 = load i32, i32* %1, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %139, i64 %141
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32 (i32)*, i32 (i32)** %144, align 8
  %146 = load i32, i32* %1, align 4
  %147 = call i32 %145(i32 %146)
  %148 = load i64*, i64** @midi_written, align 8
  %149 = load i32, i32* %1, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 0, i64* %151, align 8
  %152 = load i64*, i64** @midi_opened, align 8
  %153 = load i32, i32* %1, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %138, %110
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %1, align 4
  br label %106

160:                                              ; preds = %106
  br label %161

161:                                              ; preds = %160, %104
  store i64 0, i64* @seq_playing, align 8
  %162 = load i64, i64* %3, align 8
  %163 = call i32 @spin_lock_irqsave(i32* @lock, i64 %162)
  %164 = call i64 @waitqueue_active(i32* @seq_sleeper)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = call i32 @wake_up(i32* @seq_sleeper)
  br label %168

168:                                              ; preds = %166, %161
  %169 = load i64, i64* %3, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %169)
  ret void
}

declare dso_local i32 @sound_stop_timer(...) #1

declare dso_local i32 @midi_outc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
