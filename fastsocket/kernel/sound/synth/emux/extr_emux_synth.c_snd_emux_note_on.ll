; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_note_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_snd_emux_note_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { %struct.snd_emux_effect_table* }
%struct.snd_emux_effect_table = type { i64* }
%struct.snd_emux = type { i32, i32, %struct.TYPE_6__, %struct.snd_emux_voice*, i32 }
%struct.TYPE_6__ = type { i64 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)*, %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)* }
%struct.snd_emux_port = type { i64, %struct.snd_emux* }
%struct.snd_emux_voice = type { i64, i64, i32, i32, i32, i32, %struct.snd_midi_channel*, i32*, %struct.snd_sf_zone*, %struct.snd_emux_port*, i64 }
%struct.snd_sf_zone = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@SNDRV_EMUX_MAX_MULTI_VOICES = common dso_local global i32 0, align 4
@SNDRV_EMUX_ST_STANDBY = common dso_local global i64 0, align 8
@SNDRV_EMUX_ST_OFF = common dso_local global i64 0, align 8
@SNDRV_EMUX_ST_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@EMUX_FX_COARSE_SAMPLE_START = common dso_local global i64 0, align 8
@EMUX_FX_SAMPLE_START = common dso_local global i64 0, align 8
@SNDRV_EMUX_PORT_MODE_OSS_SYNTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_note_on(i8* %0, i32 %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca %struct.snd_emux*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_emux_voice*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.snd_emux_port*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.snd_sf_zone*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %20 = load i32, i32* @SNDRV_EMUX_MAX_MULTI_VOICES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca %struct.snd_sf_zone*, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.snd_emux_port*
  store %struct.snd_emux_port* %25, %struct.snd_emux_port** %17, align 8
  %26 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %27 = icmp ne %struct.snd_emux_port* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %30 = icmp ne %struct.snd_midi_channel* %29, null
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @snd_BUG_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %18, align 4
  br label %274

38:                                               ; preds = %32
  %39 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %40 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %39, i32 0, i32 1
  %41 = load %struct.snd_emux*, %struct.snd_emux** %40, align 8
  store %struct.snd_emux* %41, %struct.snd_emux** %9, align 8
  %42 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %43 = icmp ne %struct.snd_emux* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %46 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)*, %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)** %47, align 8
  %49 = icmp ne %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %52 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %53, align 8
  %55 = icmp ne i32 (%struct.snd_emux_voice*)* %54, null
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %50, %44, %38
  %58 = phi i1 [ true, %44 ], [ true, %38 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @snd_BUG_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %18, align 4
  br label %274

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %66 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %69 = call i32 @get_zone(%struct.snd_emux* %65, %struct.snd_emux_port* %66, i32* %6, i32 %67, %struct.snd_midi_channel* %68, %struct.snd_sf_zone** %23)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  store i32 1, i32* %18, align 4
  br label %274

73:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %23, i64 %80
  %82 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %81, align 8
  store %struct.snd_sf_zone* %82, %struct.snd_sf_zone** %19, align 8
  %83 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %19, align 8
  %84 = icmp ne %struct.snd_sf_zone* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %19, align 8
  %87 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %93 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %94 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %19, align 8
  %95 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @exclusive_note_off(%struct.snd_emux* %92, %struct.snd_emux_port* %93, i64 %97)
  br label %99

99:                                               ; preds = %91, %85, %78
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %74

103:                                              ; preds = %74
  %104 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %105 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %104, i32 0, i32 1
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %224, %103
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %227

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %23, i64 %114
  %116 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %115, align 8
  %117 = icmp eq %struct.snd_sf_zone* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %224

119:                                              ; preds = %112
  %120 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %121 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)*, %struct.snd_emux_voice* (%struct.snd_emux*, %struct.snd_emux_port*)** %122, align 8
  %124 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %125 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %126 = call %struct.snd_emux_voice* %123(%struct.snd_emux* %124, %struct.snd_emux_port* %125)
  store %struct.snd_emux_voice* %126, %struct.snd_emux_voice** %13, align 8
  %127 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %128 = icmp eq %struct.snd_emux_voice* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %119
  %130 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %131 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %119
  br label %224

135:                                              ; preds = %129
  %136 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %137 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @STATE_IS_PLAYING(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %143 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %144, align 8
  %146 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %147 = call i32 %145(%struct.snd_emux_voice* %146)
  br label %148

148:                                              ; preds = %141, %135
  %149 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %150 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = sext i32 %151 to i64
  %154 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %155 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %154, i32 0, i32 10
  store i64 %153, i64* %155, align 8
  %156 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %157 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %158 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %157, i32 0, i32 6
  store %struct.snd_midi_channel* %156, %struct.snd_midi_channel** %158, align 8
  %159 = load %struct.snd_emux_port*, %struct.snd_emux_port** %17, align 8
  %160 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %161 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %160, i32 0, i32 9
  store %struct.snd_emux_port* %159, %struct.snd_emux_port** %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %164 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %167 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %170 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.snd_sf_zone*, %struct.snd_sf_zone** %23, i64 %172
  %174 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %173, align 8
  %175 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %176 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %175, i32 0, i32 8
  store %struct.snd_sf_zone* %174, %struct.snd_sf_zone** %176, align 8
  %177 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %178 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %177, i32 0, i32 8
  %179 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %178, align 8
  %180 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = icmp ne %struct.TYPE_5__* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %148
  %184 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %185 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %184, i32 0, i32 8
  %186 = load %struct.snd_sf_zone*, %struct.snd_sf_zone** %185, align 8
  %187 = getelementptr inbounds %struct.snd_sf_zone, %struct.snd_sf_zone* %186, i32 0, i32 0
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %192 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %191, i32 0, i32 7
  store i32* %190, i32** %192, align 8
  br label %196

193:                                              ; preds = %148
  %194 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %195 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %194, i32 0, i32 7
  store i32* null, i32** %195, align 8
  br label %196

196:                                              ; preds = %193, %183
  %197 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %198 = call i32 @setup_voice(%struct.snd_emux_voice* %197)
  %199 = load i64, i64* @SNDRV_EMUX_ST_STANDBY, align 8
  %200 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %201 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  %202 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %203 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64 (%struct.snd_emux_voice*)*, i64 (%struct.snd_emux_voice*)** %204, align 8
  %206 = icmp ne i64 (%struct.snd_emux_voice*)* %205, null
  br i1 %206, label %207, label %223

207:                                              ; preds = %196
  %208 = load i64, i64* @SNDRV_EMUX_ST_OFF, align 8
  %209 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %210 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %212 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64 (%struct.snd_emux_voice*)*, i64 (%struct.snd_emux_voice*)** %213, align 8
  %215 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %216 = call i64 %214(%struct.snd_emux_voice* %215)
  %217 = icmp sge i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %207
  %219 = load i64, i64* @SNDRV_EMUX_ST_STANDBY, align 8
  %220 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %221 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %218, %207
  br label %223

223:                                              ; preds = %222, %196
  br label %224

224:                                              ; preds = %223, %134, %118
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %108

227:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %228

228:                                              ; preds = %266, %227
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %231 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %269

234:                                              ; preds = %228
  %235 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %236 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %235, i32 0, i32 3
  %237 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %237, i64 %239
  store %struct.snd_emux_voice* %240, %struct.snd_emux_voice** %13, align 8
  %241 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %242 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @SNDRV_EMUX_ST_STANDBY, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %234
  %247 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %248 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %247, i32 0, i32 6
  %249 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %248, align 8
  %250 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %251 = icmp eq %struct.snd_midi_channel* %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %254 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %255, align 8
  %257 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %258 = call i32 %256(%struct.snd_emux_voice* %257)
  %259 = load i64, i64* @SNDRV_EMUX_ST_ON, align 8
  %260 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %261 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  %262 = load i32, i32* @jiffies, align 4
  %263 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %13, align 8
  %264 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %252, %246, %234
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %228

269:                                              ; preds = %228
  %270 = load %struct.snd_emux*, %struct.snd_emux** %9, align 8
  %271 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %270, i32 0, i32 1
  %272 = load i64, i64* %16, align 8
  %273 = call i32 @spin_unlock_irqrestore(i32* %271, i64 %272)
  store i32 0, i32* %18, align 4
  br label %274

274:                                              ; preds = %269, %72, %62, %37
  %275 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %275)
  %276 = load i32, i32* %18, align 4
  switch i32 %276, label %278 [
    i32 0, label %277
    i32 1, label %277
  ]

277:                                              ; preds = %274, %274
  ret void

278:                                              ; preds = %274
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snd_BUG_ON(i32) #2

declare dso_local i32 @get_zone(%struct.snd_emux*, %struct.snd_emux_port*, i32*, i32, %struct.snd_midi_channel*, %struct.snd_sf_zone**) #2

declare dso_local i32 @exclusive_note_off(%struct.snd_emux*, %struct.snd_emux_port*, i64) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @STATE_IS_PLAYING(i64) #2

declare dso_local i32 @setup_voice(%struct.snd_emux_voice*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
