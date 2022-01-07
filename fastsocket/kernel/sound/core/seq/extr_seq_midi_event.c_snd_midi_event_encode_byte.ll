; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_snd_midi_event_encode_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)* }
%struct.snd_midi_event = type { i32, i32*, i32, i64, i32, i32 }
%struct.snd_seq_event = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@MIDI_CMD_COMMON_CLOCK = common dso_local global i32 0, align 4
@status_event = common dso_local global %struct.TYPE_6__* null, align 8
@ST_SPECIAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_FIXED = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@MIDI_CMD_COMMON_SYSEX_END = common dso_local global i32 0, align 4
@ST_SYSEX = common dso_local global i32 0, align 4
@ST_INVALID = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_SYSEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_midi_event_encode_byte(%struct.snd_midi_event* %0, i32 %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_midi_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MIDI_CMD_COMMON_CLOCK, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %17 = load i32, i32* @ST_SPECIAL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 240
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %30 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_FIXED, align 4
  %34 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %35 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %39 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %268

44:                                               ; preds = %3
  %45 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %46 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %45, i32 0, i32 5
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MIDI_CMD_COMMON_SYSEX_END, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %58 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ST_SYSEX, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %65 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 240
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 15
  %74 = load i32, i32* @ST_SPECIAL, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %77 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %84

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 7
  %82 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %83 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %86 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %88 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %89 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %96 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %95, i32 0, i32 3
  store i64 %94, i64* %96, align 8
  br label %144

97:                                               ; preds = %56, %44
  %98 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %99 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %105 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %108 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %103, i32* %112, align 4
  %113 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %114 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ST_SYSEX, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %102
  %119 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %120 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %118, %102
  br label %143

124:                                              ; preds = %97
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %127 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %131 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %132 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, 1
  %139 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %140 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  %141 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %142 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %141, i32 0, i32 2
  store i32 2, i32* %142, align 8
  br label %143

143:                                              ; preds = %124, %123
  br label %144

144:                                              ; preds = %143, %84
  %145 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %146 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %203

149:                                              ; preds = %144
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %151 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %152 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %159 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %163 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_FIXED, align 4
  %167 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %168 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %172 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %173 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)*, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)** %177, align 8
  %179 = icmp ne i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %149
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @status_event, align 8
  %182 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %183 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)*, i32 (%struct.snd_midi_event*, %struct.snd_seq_event*)** %187, align 8
  %189 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %190 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %191 = call i32 %188(%struct.snd_midi_event* %189, %struct.snd_seq_event* %190)
  br label %192

192:                                              ; preds = %180, %149
  %193 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %194 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @ST_SPECIAL, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = load i32, i32* @ST_INVALID, align 4
  %200 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %201 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %192
  store i32 1, i32* %8, align 4
  br label %262

203:                                              ; preds = %144
  %204 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %205 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @ST_SYSEX, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %261

209:                                              ; preds = %203
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @MIDI_CMD_COMMON_SYSEX_END, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %209
  %214 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %215 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %218 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %216, %219
  br i1 %220, label %221, label %260

221:                                              ; preds = %213, %209
  %222 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %225 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %229 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %230 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  %233 = load i64, i64* @SNDRV_SEQ_EVENT_SYSEX, align 8
  %234 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %235 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %237 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %240 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  store i32 %238, i32* %242, align 8
  %243 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %244 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %247 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  store i32* %245, i32** %249, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @MIDI_CMD_COMMON_SYSEX_END, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %221
  %254 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %255 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %254, i32 0, i32 2
  store i32 0, i32* %255, align 8
  br label %259

256:                                              ; preds = %221
  %257 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %258 = call i32 @reset_encode(%struct.snd_midi_event* %257)
  br label %259

259:                                              ; preds = %256, %253
  store i32 1, i32* %8, align 4
  br label %260

260:                                              ; preds = %259, %213
  br label %261

261:                                              ; preds = %260, %203
  br label %262

262:                                              ; preds = %261, %202
  %263 = load %struct.snd_midi_event*, %struct.snd_midi_event** %5, align 8
  %264 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %263, i32 0, i32 5
  %265 = load i64, i64* %9, align 8
  %266 = call i32 @spin_unlock_irqrestore(i32* %264, i64 %265)
  %267 = load i32, i32* %8, align 4
  store i32 %267, i32* %4, align 4
  br label %268

268:                                              ; preds = %262, %15
  %269 = load i32, i32* %4, align 4
  ret i32 %269
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reset_encode(%struct.snd_midi_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
