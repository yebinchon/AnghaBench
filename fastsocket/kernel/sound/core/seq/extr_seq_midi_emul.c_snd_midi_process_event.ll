; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_op = type { i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)*, i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)* }
%struct.snd_midi_channel = type opaque
%struct.snd_midi_channel.0 = type opaque
%struct.snd_midi_channel.1 = type opaque
%struct.snd_midi_channel.2 = type opaque
%struct.snd_seq_event = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.snd_midi_channel_set = type { i32, i8*, %struct.snd_midi_channel.3* }
%struct.snd_midi_channel.3 = type { i32*, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"ev or chanbase NULL (snd_midi_process_event)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dest channel is %d, max is %d\0A\00", align 1
@SNDRV_SEQ_EVENT_NOTE = common dso_local global i32 0, align 4
@SNDRV_MIDI_NOTE_ON = common dso_local global i32 0, align 4
@MIDI_CTL_PITCHBEND = common dso_local global i32 0, align 4
@MIDI_CTL_CHAN_PRESSURE = common dso_local global i32 0, align 4
@SNDRV_MIDI_PARAM_TYPE_NONREGISTERED = common dso_local global i32 0, align 4
@MIDI_CTL_MSB_DATA_ENTRY = common dso_local global i64 0, align 8
@MIDI_CTL_LSB_DATA_ENTRY = common dso_local global i64 0, align 8
@MIDI_CTL_NONREG_PARM_NUM_MSB = common dso_local global i64 0, align 8
@MIDI_CTL_NONREG_PARM_NUM_LSB = common dso_local global i64 0, align 8
@SNDRV_MIDI_PARAM_TYPE_REGISTERED = common dso_local global i32 0, align 4
@MIDI_CTL_REGIST_PARM_NUM_MSB = common dso_local global i64 0, align 8
@MIDI_CTL_REGIST_PARM_NUM_LSB = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_LENGTH_MASK = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_LENGTH_VARIABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_midi_process_event(%struct.snd_midi_op* %0, %struct.snd_seq_event* %1, %struct.snd_midi_channel_set* %2) #0 {
  %4 = alloca %struct.snd_midi_op*, align 8
  %5 = alloca %struct.snd_seq_event*, align 8
  %6 = alloca %struct.snd_midi_channel_set*, align 8
  %7 = alloca %struct.snd_midi_channel.3*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.snd_midi_op* %0, %struct.snd_midi_op** %4, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %5, align 8
  store %struct.snd_midi_channel_set* %2, %struct.snd_midi_channel_set** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %13 = icmp eq %struct.snd_seq_event* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %16 = icmp eq %struct.snd_midi_channel_set* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %505

19:                                               ; preds = %14
  %20 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %21 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %20, i32 0, i32 2
  %22 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %21, align 8
  %23 = icmp eq %struct.snd_midi_channel.3* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %505

25:                                               ; preds = %19
  %26 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %27 = call i64 @snd_seq_ev_is_channel_type(%struct.snd_seq_event* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %31 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %37 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %43 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @snd_printd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %505

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %49 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %48, i32 0, i32 2
  %50 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %50, i64 %52
  store %struct.snd_midi_channel.3* %53, %struct.snd_midi_channel.3** %7, align 8
  %54 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %55 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  %57 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %58 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SNDRV_SEQ_EVENT_NOTE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %505

63:                                               ; preds = %47
  %64 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %65 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 143
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %70 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %77 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %76, i32 0, i32 0
  store i32 144, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %68, %63
  %79 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %80 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 143
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %85 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 144
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %90 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 147
  br i1 %92, label %93, label %102

93:                                               ; preds = %88, %83, %78
  %94 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %95 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 128
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %505

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %104 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %504 [
    i32 143, label %106
    i32 144, label %177
    i32 147, label %215
    i32 149, label %240
    i32 142, label %256
    i32 141, label %264
    i32 156, label %286
    i32 150, label %308
    i32 145, label %367
    i32 136, label %422
    i32 130, label %477
    i32 134, label %500
    i32 133, label %500
    i32 152, label %500
    i32 132, label %500
    i32 151, label %500
    i32 131, label %500
    i32 137, label %500
    i32 129, label %500
    i32 128, label %500
    i32 146, label %500
    i32 135, label %501
    i32 153, label %502
    i32 154, label %502
    i32 155, label %502
    i32 138, label %502
    i32 139, label %502
    i32 140, label %502
    i32 148, label %502
  ]

106:                                              ; preds = %102
  %107 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %108 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %111 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SNDRV_MIDI_NOTE_ON, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %106
  %122 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %123 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %122, i32 0, i32 2
  %124 = load i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)*, i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)** %123, align 8
  %125 = icmp ne i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)* %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %128 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %127, i32 0, i32 2
  %129 = load i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)*, i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)** %128, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %132 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %138 = bitcast %struct.snd_midi_channel.3* %137 to %struct.snd_midi_channel.1*
  %139 = call i32 %129(i8* %130, i64 %136, i32 0, %struct.snd_midi_channel.1* %138)
  br label %140

140:                                              ; preds = %126, %121
  br label %141

141:                                              ; preds = %140, %106
  %142 = load i32, i32* @SNDRV_MIDI_NOTE_ON, align 4
  %143 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %144 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %147 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %145, i64 %151
  store i32 %142, i32* %152, align 4
  %153 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %154 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %153, i32 0, i32 3
  %155 = load i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)** %154, align 8
  %156 = icmp ne i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)* %155, null
  br i1 %156, label %157, label %176

157:                                              ; preds = %141
  %158 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %159 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %158, i32 0, i32 3
  %160 = load i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.2*)** %159, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %163 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %169 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %174 = bitcast %struct.snd_midi_channel.3* %173 to %struct.snd_midi_channel.2*
  %175 = call i32 %160(i8* %161, i64 %167, i64 %172, %struct.snd_midi_channel.2* %174)
  br label %176

176:                                              ; preds = %157, %141
  br label %505

177:                                              ; preds = %102
  %178 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %179 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %182 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %180, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SNDRV_MIDI_NOTE_ON, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %177
  br label %505

193:                                              ; preds = %177
  %194 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %195 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %194, i32 0, i32 2
  %196 = load i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)*, i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)** %195, align 8
  %197 = icmp ne i32 (i8*, i64, i32, %struct.snd_midi_channel.1*)* %196, null
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %202 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %203 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %209 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @note_off(%struct.snd_midi_op* %199, i8* %200, %struct.snd_midi_channel.3* %201, i64 %207, i64 %212)
  br label %214

214:                                              ; preds = %198, %193
  br label %505

215:                                              ; preds = %102
  %216 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %217 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %216, i32 0, i32 1
  %218 = load i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)** %217, align 8
  %219 = icmp ne i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)* %218, null
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %222 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %221, i32 0, i32 1
  %223 = load i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)*, i32 (i8*, i64, i64, %struct.snd_midi_channel.0*)** %222, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %226 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %232 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %237 = bitcast %struct.snd_midi_channel.3* %236 to %struct.snd_midi_channel.0*
  %238 = call i32 %223(i8* %224, i64 %230, i64 %235, %struct.snd_midi_channel.0* %237)
  br label %239

239:                                              ; preds = %220, %215
  br label %505

240:                                              ; preds = %102
  %241 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %244 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %245 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %246 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %251 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @do_control(%struct.snd_midi_op* %241, i8* %242, %struct.snd_midi_channel_set* %243, %struct.snd_midi_channel.3* %244, i32 %249, i32 %254)
  br label %505

256:                                              ; preds = %102
  %257 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %258 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %263 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  br label %505

264:                                              ; preds = %102
  %265 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %266 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %271 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 4
  %272 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %273 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %272, i32 0, i32 0
  %274 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %273, align 8
  %275 = icmp ne i32 (i8*, i32, %struct.snd_midi_channel*)* %274, null
  br i1 %275, label %276, label %285

276:                                              ; preds = %264
  %277 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %278 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %277, i32 0, i32 0
  %279 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %278, align 8
  %280 = load i8*, i8** %8, align 8
  %281 = load i32, i32* @MIDI_CTL_PITCHBEND, align 4
  %282 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %283 = bitcast %struct.snd_midi_channel.3* %282 to %struct.snd_midi_channel*
  %284 = call i32 %279(i8* %280, i32 %281, %struct.snd_midi_channel* %283)
  br label %285

285:                                              ; preds = %276, %264
  br label %505

286:                                              ; preds = %102
  %287 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %288 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %293 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 8
  %294 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %295 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %294, i32 0, i32 0
  %296 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %295, align 8
  %297 = icmp ne i32 (i8*, i32, %struct.snd_midi_channel*)* %296, null
  br i1 %297, label %298, label %307

298:                                              ; preds = %286
  %299 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %300 = getelementptr inbounds %struct.snd_midi_op, %struct.snd_midi_op* %299, i32 0, i32 0
  %301 = load i32 (i8*, i32, %struct.snd_midi_channel*)*, i32 (i8*, i32, %struct.snd_midi_channel*)** %300, align 8
  %302 = load i8*, i8** %8, align 8
  %303 = load i32, i32* @MIDI_CTL_CHAN_PRESSURE, align 4
  %304 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %305 = bitcast %struct.snd_midi_channel.3* %304 to %struct.snd_midi_channel*
  %306 = call i32 %301(i8* %302, i32 %303, %struct.snd_midi_channel* %305)
  br label %307

307:                                              ; preds = %298, %286
  br label %505

308:                                              ; preds = %102
  %309 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %310 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %313, 32
  br i1 %314, label %315, label %350

315:                                              ; preds = %308
  %316 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %317 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = and i32 %320, 127
  %322 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %323 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %322, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %326 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 32
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %324, i64 %331
  store i32 %321, i32* %332, align 4
  %333 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %334 = load i8*, i8** %8, align 8
  %335 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %336 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %337 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %338 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %343 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = ashr i32 %346, 7
  %348 = and i32 %347, 127
  %349 = call i32 @do_control(%struct.snd_midi_op* %333, i8* %334, %struct.snd_midi_channel_set* %335, %struct.snd_midi_channel.3* %336, i32 %341, i32 %348)
  br label %366

350:                                              ; preds = %308
  %351 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %352 = load i8*, i8** %8, align 8
  %353 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %354 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %355 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %356 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %361 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @do_control(%struct.snd_midi_op* %351, i8* %352, %struct.snd_midi_channel_set* %353, %struct.snd_midi_channel.3* %354, i32 %359, i32 %364)
  br label %366

366:                                              ; preds = %350, %315
  br label %505

367:                                              ; preds = %102
  %368 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_NONREGISTERED, align 4
  %369 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %370 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %369, i32 0, i32 5
  store i32 %368, i32* %370, align 8
  %371 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %372 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = ashr i32 %375, 7
  %377 = and i32 %376, 127
  %378 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %379 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %378, i32 0, i32 4
  %380 = load i32*, i32** %379, align 8
  %381 = load i64, i64* @MIDI_CTL_MSB_DATA_ENTRY, align 8
  %382 = getelementptr inbounds i32, i32* %380, i64 %381
  store i32 %377, i32* %382, align 4
  %383 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %384 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = and i32 %387, 127
  %389 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %390 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %389, i32 0, i32 4
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* @MIDI_CTL_LSB_DATA_ENTRY, align 8
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  store i32 %388, i32* %393, align 4
  %394 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %395 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = ashr i32 %398, 7
  %400 = and i32 %399, 127
  %401 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %402 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %401, i32 0, i32 4
  %403 = load i32*, i32** %402, align 8
  %404 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_MSB, align 8
  %405 = getelementptr inbounds i32, i32* %403, i64 %404
  store i32 %400, i32* %405, align 4
  %406 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %407 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = and i32 %410, 127
  %412 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %413 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %412, i32 0, i32 4
  %414 = load i32*, i32** %413, align 8
  %415 = load i64, i64* @MIDI_CTL_NONREG_PARM_NUM_LSB, align 8
  %416 = getelementptr inbounds i32, i32* %414, i64 %415
  store i32 %411, i32* %416, align 4
  %417 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %418 = load i8*, i8** %8, align 8
  %419 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %420 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %421 = call i32 @nrpn(%struct.snd_midi_op* %417, i8* %418, %struct.snd_midi_channel.3* %419, %struct.snd_midi_channel_set* %420)
  br label %505

422:                                              ; preds = %102
  %423 = load i32, i32* @SNDRV_MIDI_PARAM_TYPE_REGISTERED, align 4
  %424 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %425 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %424, i32 0, i32 5
  store i32 %423, i32* %425, align 8
  %426 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %427 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = ashr i32 %430, 7
  %432 = and i32 %431, 127
  %433 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %434 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %433, i32 0, i32 4
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* @MIDI_CTL_MSB_DATA_ENTRY, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  store i32 %432, i32* %437, align 4
  %438 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %439 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, 127
  %444 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %445 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %444, i32 0, i32 4
  %446 = load i32*, i32** %445, align 8
  %447 = load i64, i64* @MIDI_CTL_LSB_DATA_ENTRY, align 8
  %448 = getelementptr inbounds i32, i32* %446, i64 %447
  store i32 %443, i32* %448, align 4
  %449 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %450 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = ashr i32 %453, 7
  %455 = and i32 %454, 127
  %456 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %457 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %456, i32 0, i32 4
  %458 = load i32*, i32** %457, align 8
  %459 = load i64, i64* @MIDI_CTL_REGIST_PARM_NUM_MSB, align 8
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32 %455, i32* %460, align 4
  %461 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %462 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, 127
  %467 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %468 = getelementptr inbounds %struct.snd_midi_channel.3, %struct.snd_midi_channel.3* %467, i32 0, i32 4
  %469 = load i32*, i32** %468, align 8
  %470 = load i64, i64* @MIDI_CTL_REGIST_PARM_NUM_LSB, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  store i32 %466, i32* %471, align 4
  %472 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %473 = load i8*, i8** %8, align 8
  %474 = load %struct.snd_midi_channel.3*, %struct.snd_midi_channel.3** %7, align 8
  %475 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %476 = call i32 @rpn(%struct.snd_midi_op* %472, i8* %473, %struct.snd_midi_channel.3* %474, %struct.snd_midi_channel_set* %475)
  br label %505

477:                                              ; preds = %102
  %478 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %479 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_MASK, align 4
  %482 = and i32 %480, %481
  %483 = load i32, i32* @SNDRV_SEQ_EVENT_LENGTH_VARIABLE, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %499

485:                                              ; preds = %477
  %486 = load %struct.snd_seq_event*, %struct.snd_seq_event** %5, align 8
  %487 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %488 = call i32 @snd_seq_expand_var_event(%struct.snd_seq_event* %486, i32 64, i8* %487, i32 1, i32 0)
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* %11, align 4
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %485
  %492 = load %struct.snd_midi_op*, %struct.snd_midi_op** %4, align 8
  %493 = load i8*, i8** %8, align 8
  %494 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %495 = load i32, i32* %11, align 4
  %496 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %6, align 8
  %497 = call i32 @sysex(%struct.snd_midi_op* %492, i8* %493, i8* %494, i32 %495, %struct.snd_midi_channel_set* %496)
  br label %498

498:                                              ; preds = %491, %485
  br label %499

499:                                              ; preds = %498, %477
  br label %505

500:                                              ; preds = %102, %102, %102, %102, %102, %102, %102, %102, %102, %102
  br label %503

501:                                              ; preds = %102
  br label %505

502:                                              ; preds = %102, %102, %102, %102, %102, %102, %102
  br label %503

503:                                              ; preds = %502, %500
  br label %504

504:                                              ; preds = %102, %503
  br label %505

505:                                              ; preds = %17, %24, %40, %62, %100, %504, %501, %499, %422, %367, %366, %307, %285, %256, %240, %239, %214, %192, %176
  ret void
}

declare dso_local i32 @snd_printd(i8*, ...) #1

declare dso_local i64 @snd_seq_ev_is_channel_type(%struct.snd_seq_event*) #1

declare dso_local i32 @note_off(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.3*, i64, i64) #1

declare dso_local i32 @do_control(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel_set*, %struct.snd_midi_channel.3*, i32, i32) #1

declare dso_local i32 @nrpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.3*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @rpn(%struct.snd_midi_op*, i8*, %struct.snd_midi_channel.3*, %struct.snd_midi_channel_set*) #1

declare dso_local i32 @snd_seq_expand_var_event(%struct.snd_seq_event*, i32, i8*, i32, i32) #1

declare dso_local i32 @sysex(%struct.snd_midi_op*, i8*, i8*, i32, %struct.snd_midi_channel_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
