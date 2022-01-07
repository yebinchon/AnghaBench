; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_play_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_play_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8, i8*)*, i32 (i32, i8, i8)*, i32 (i32, i8, i8, i8)*, i32 (i32, i8, i32, i8)* }
%struct.TYPE_4__ = type { i32 (i32, i8)* }

@synth_open_mask = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_3__** null, align 8
@seq_playing = common dso_local global i32 0, align 4
@prev_event_time = common dso_local global i64 0, align 8
@SEQ_MAX_QUEUE = common dso_local global i64 0, align 8
@qlen = common dso_local global i64 0, align 8
@output_threshold = common dso_local global i64 0, align 8
@seq_sleeper = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@seq_time = common dso_local global i32 0, align 4
@prev_input_time = common dso_local global i32 0, align 4
@midi_opened = common dso_local global i32* null, align 8
@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_4__** null, align 8
@midi_written = common dso_local global i32* null, align 8
@max_synthdev = common dso_local global i32 0, align 4
@TIMER_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @play_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @play_event(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %228 [
    i32 133, label %11
    i32 132, label %35
    i32 128, label %75
    i32 131, label %103
    i32 129, label %127
    i32 134, label %129
    i32 136, label %180
    i32 130, label %183
    i32 135, label %206
    i32 140, label %209
    i32 141, label %212
    i32 137, label %215
    i32 139, label %222
    i32 138, label %225
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @synth_open_mask, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32 (i32, i8, i32, i8)*, i32 (i32, i8, i32, i8)** %24, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = call i32 %25(i32 0, i8 zeroext %28, i32 255, i8 zeroext %31)
  br label %33

33:                                               ; preds = %20, %15
  br label %34

34:                                               ; preds = %33, %11
  br label %229

35:                                               ; preds = %1
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp slt i32 %39, 128
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %74

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @synth_open_mask, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32 (i32, i8, i8, i8)*, i32 (i32, i8, i8, i8)** %60, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = call i32 %61(i32 0, i8 zeroext %64, i8 zeroext %67, i8 zeroext %70)
  br label %72

72:                                               ; preds = %56, %51
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %41
  br label %229

75:                                               ; preds = %1
  %76 = load i8*, i8** %3, align 8
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %4, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = lshr i32 %79, 8
  %81 = and i32 %80, 16777215
  %82 = load i32*, i32** %4, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ugt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %75
  store i32 1, i32* @seq_playing, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %87, align 4
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* @prev_event_time, align 8
  %91 = load i64, i64* %5, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @request_sound_timer(i32 %92)
  %94 = load i64, i64* @SEQ_MAX_QUEUE, align 8
  %95 = load i64, i64* @qlen, align 8
  %96 = sub nsw i64 %94, %95
  %97 = load i64, i64* @output_threshold, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = call i32 @wake_up(i32* @seq_sleeper)
  br label %101

101:                                              ; preds = %99, %86
  store i32 1, i32* %2, align 4
  br label %230

102:                                              ; preds = %75
  br label %229

103:                                              ; preds = %1
  %104 = load i32, i32* @synth_open_mask, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %108, i64 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = icmp ne %struct.TYPE_3__* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %113, i64 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %116, align 8
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = call i32 %117(i32 0, i8 zeroext %120, i8 zeroext %123)
  br label %125

125:                                              ; preds = %112, %107
  br label %126

126:                                              ; preds = %125, %103
  br label %229

127:                                              ; preds = %1
  %128 = load i32, i32* @jiffies, align 4
  store i32 %128, i32* @seq_time, align 4
  store i32 0, i32* @prev_input_time, align 4
  store i64 0, i64* @prev_event_time, align 8
  br label %229

129:                                              ; preds = %1
  %130 = load i32*, i32** @midi_opened, align 8
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %179

138:                                              ; preds = %129
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @num_midis, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %150, i64 %152
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = icmp eq %struct.TYPE_4__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %149, %145, %138
  br label %229

157:                                              ; preds = %149
  %158 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @midi_devs, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %158, i64 %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32 (i32, i8)*, i32 (i32, i8)** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = call i32 %164(i32 %165, i8 zeroext %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %157
  store i32 1, i32* @seq_playing, align 4
  %172 = call i32 @request_sound_timer(i32 -1)
  store i32 2, i32* %2, align 4
  br label %230

173:                                              ; preds = %157
  %174 = load i32*, i32** @midi_written, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 1, i32* %177, align 4
  br label %178

178:                                              ; preds = %173
  br label %179

179:                                              ; preds = %178, %129
  br label %229

180:                                              ; preds = %1
  %181 = load i8*, i8** %3, align 8
  %182 = call i32 @seq_copy_to_input(i8* %181, i32 4)
  br label %229

183:                                              ; preds = %1
  %184 = load i8*, i8** %3, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i32, i32* @max_synthdev, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %183
  %191 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @synth_devs, align 8
  %192 = load i8*, i8** %3, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %191, i64 %195
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32 (i8, i8*)*, i32 (i8, i8*)** %198, align 8
  %200 = load i8*, i8** %3, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %3, align 8
  %204 = call i32 %199(i8 zeroext %202, i8* %203)
  br label %205

205:                                              ; preds = %190, %183
  br label %229

206:                                              ; preds = %1
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @extended_event(i8* %207)
  br label %229

209:                                              ; preds = %1
  %210 = load i8*, i8** %3, align 8
  %211 = call i32 @seq_chn_voice_event(i8* %210)
  br label %229

212:                                              ; preds = %1
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 @seq_chn_common_event(i8* %213)
  br label %229

215:                                              ; preds = %1
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @seq_timing_event(i8* %216)
  %218 = load i32, i32* @TIMER_ARMED, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 1, i32* %2, align 4
  br label %230

221:                                              ; preds = %215
  br label %229

222:                                              ; preds = %1
  %223 = load i8*, i8** %3, align 8
  %224 = call i32 @seq_local_event(i8* %223)
  br label %229

225:                                              ; preds = %1
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 @seq_sysex_message(i8* %226)
  br label %229

228:                                              ; preds = %1
  br label %229

229:                                              ; preds = %228, %225, %222, %221, %212, %209, %206, %205, %180, %179, %156, %127, %126, %102, %74, %34
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %229, %220, %171, %101
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @request_sound_timer(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @seq_copy_to_input(i8*, i32) #1

declare dso_local i32 @extended_event(i8*) #1

declare dso_local i32 @seq_chn_voice_event(i8*) #1

declare dso_local i32 @seq_chn_common_event(i8*) #1

declare dso_local i32 @seq_timing_event(i8*) #1

declare dso_local i32 @seq_local_event(i8*) #1

declare dso_local i32 @seq_sysex_message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
