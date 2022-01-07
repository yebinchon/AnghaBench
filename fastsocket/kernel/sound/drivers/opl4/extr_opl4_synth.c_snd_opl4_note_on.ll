; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_note_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_opl4_synth.c_snd_opl4_note_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opl4_region_ptr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.opl4_sound }
%struct.opl4_sound = type { i32, i32 }
%struct.snd_midi_channel = type { i32, i64 }
%struct.snd_opl4 = type { i32, i32 }
%struct.opl4_voice = type { i32, i32, i32, i32, i64, %struct.opl4_sound*, i32, i32, %struct.snd_midi_channel*, i32 }

@snd_yrw801_regions = common dso_local global %struct.opl4_region_ptr* null, align 8
@OPL4_TONE_NUMBER_BIT8 = common dso_local global i32 0, align 4
@OPL4_REG_F_NUMBER = common dso_local global i64 0, align 8
@OPL4_REG_TONE_NUMBER = common dso_local global i64 0, align 8
@OPL4_LFO_RESET_BIT = common dso_local global i32 0, align 4
@OPL4_LEVEL_DIRECT_BIT = common dso_local global i32 0, align 4
@OPL4_KEY_ON_BIT = common dso_local global i32 0, align 4
@OPL4_REG_MISC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_opl4_note_on(i8* %0, i32 %1, i32 %2, %struct.snd_midi_channel* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_midi_channel*, align 8
  %9 = alloca %struct.snd_opl4*, align 8
  %10 = alloca %struct.opl4_region_ptr*, align 8
  %11 = alloca [2 x %struct.opl4_voice*], align 16
  %12 = alloca [2 x %struct.opl4_sound*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_midi_channel* %3, %struct.snd_midi_channel** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.snd_opl4*
  store %struct.snd_opl4* %17, %struct.snd_opl4** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %19 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %25 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 127
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i32 [ 128, %22 ], [ %27, %23 ]
  store i32 %29, i32* %14, align 4
  %30 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** @snd_yrw801_regions, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %30, i64 %32
  store %struct.opl4_region_ptr* %33, %struct.opl4_region_ptr** %10, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %79, %28
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %37 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %43 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %41, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %54 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %52, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %51
  %63 = load %struct.opl4_region_ptr*, %struct.opl4_region_ptr** %10, align 8
  %64 = getelementptr inbounds %struct.opl4_region_ptr, %struct.opl4_region_ptr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %71
  store %struct.opl4_sound* %69, %struct.opl4_sound** %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %82

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %51, %40
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %34

82:                                               ; preds = %76, %34
  %83 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %84 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %83, i32 0, i32 0
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %139, %82
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %142

91:                                               ; preds = %87
  %92 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %93 = call %struct.opl4_voice* @snd_opl4_get_voice(%struct.snd_opl4* %92)
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %95
  store %struct.opl4_voice* %93, %struct.opl4_voice** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %98
  %100 = load %struct.opl4_voice*, %struct.opl4_voice** %99, align 8
  %101 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %100, i32 0, i32 9
  %102 = call i32 @list_del(i32* %101)
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %104
  %106 = load %struct.opl4_voice*, %struct.opl4_voice** %105, align 8
  %107 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %106, i32 0, i32 9
  %108 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %109 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %108, i32 0, i32 1
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %8, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %113
  %115 = load %struct.opl4_voice*, %struct.opl4_voice** %114, align 8
  %116 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %115, i32 0, i32 8
  store %struct.snd_midi_channel* %111, %struct.snd_midi_channel** %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %119
  %121 = load %struct.opl4_voice*, %struct.opl4_voice** %120, align 8
  %122 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 8
  %123 = load i32, i32* %7, align 4
  %124 = and i32 %123, 127
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %126
  %128 = load %struct.opl4_voice*, %struct.opl4_voice** %127, align 8
  %129 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %131
  %133 = load %struct.opl4_sound*, %struct.opl4_sound** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %135
  %137 = load %struct.opl4_voice*, %struct.opl4_voice** %136, align 8
  %138 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %137, i32 0, i32 5
  store %struct.opl4_sound* %133, %struct.opl4_sound** %138, align 8
  br label %139

139:                                              ; preds = %91
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %87

142:                                              ; preds = %87
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %195, %142
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %198

147:                                              ; preds = %143
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %149
  %151 = load %struct.opl4_sound*, %struct.opl4_sound** %150, align 8
  %152 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 8
  %155 = load i32, i32* @OPL4_TONE_NUMBER_BIT8, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %158
  %160 = load %struct.opl4_voice*, %struct.opl4_voice** %159, align 8
  %161 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %160, i32 0, i32 2
  store i32 %156, i32* %161, align 8
  %162 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %163 = load i64, i64* @OPL4_REG_F_NUMBER, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %165
  %167 = load %struct.opl4_voice*, %struct.opl4_voice** %166, align 8
  %168 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %163, %169
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %172
  %174 = load %struct.opl4_voice*, %struct.opl4_voice** %173, align 8
  %175 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @snd_opl4_write(%struct.snd_opl4* %162, i64 %170, i32 %176)
  %178 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %179 = load i64, i64* @OPL4_REG_TONE_NUMBER, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %181
  %183 = load %struct.opl4_voice*, %struct.opl4_voice** %182, align 8
  %184 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %179, %185
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x %struct.opl4_sound*], [2 x %struct.opl4_sound*]* %12, i64 0, i64 %188
  %190 = load %struct.opl4_sound*, %struct.opl4_sound** %189, align 8
  %191 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 255
  %194 = call i32 @snd_opl4_write(%struct.snd_opl4* %178, i64 %186, i32 %193)
  br label %195

195:                                              ; preds = %147
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %143

198:                                              ; preds = %143
  store i32 0, i32* %14, align 4
  br label %199

199:                                              ; preds = %234, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %237

203:                                              ; preds = %199
  %204 = load i32, i32* @OPL4_LFO_RESET_BIT, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %206
  %208 = load %struct.opl4_voice*, %struct.opl4_voice** %207, align 8
  %209 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %208, i32 0, i32 3
  store i32 %204, i32* %209, align 4
  %210 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %212
  %214 = load %struct.opl4_voice*, %struct.opl4_voice** %213, align 8
  %215 = call i32 @snd_opl4_update_pan(%struct.snd_opl4* %210, %struct.opl4_voice* %214)
  %216 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %218
  %220 = load %struct.opl4_voice*, %struct.opl4_voice** %219, align 8
  %221 = call i32 @snd_opl4_update_pitch(%struct.snd_opl4* %216, %struct.opl4_voice* %220)
  %222 = load i32, i32* @OPL4_LEVEL_DIRECT_BIT, align 4
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %224
  %226 = load %struct.opl4_voice*, %struct.opl4_voice** %225, align 8
  %227 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %226, i32 0, i32 7
  store i32 %222, i32* %227, align 4
  %228 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %230
  %232 = load %struct.opl4_voice*, %struct.opl4_voice** %231, align 8
  %233 = call i32 @snd_opl4_update_volume(%struct.snd_opl4* %228, %struct.opl4_voice* %232)
  br label %234

234:                                              ; preds = %203
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  br label %199

237:                                              ; preds = %199
  %238 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %239 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %238, i32 0, i32 0
  %240 = load i64, i64* %15, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  %242 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %243 = call i32 @snd_opl4_wait_for_wave_headers(%struct.snd_opl4* %242)
  %244 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %245 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %244, i32 0, i32 0
  %246 = load i64, i64* %15, align 8
  %247 = call i32 @spin_lock_irqsave(i32* %245, i64 %246)
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %278, %237
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %281

252:                                              ; preds = %248
  %253 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %255
  %257 = load %struct.opl4_voice*, %struct.opl4_voice** %256, align 8
  %258 = call i32 @snd_opl4_update_tone_parameters(%struct.snd_opl4* %253, %struct.opl4_voice* %257)
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %260
  %262 = load %struct.opl4_voice*, %struct.opl4_voice** %261, align 8
  %263 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %262, i32 0, i32 5
  %264 = load %struct.opl4_sound*, %struct.opl4_sound** %263, align 8
  %265 = getelementptr inbounds %struct.opl4_sound, %struct.opl4_sound* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %268
  %270 = load %struct.opl4_voice*, %struct.opl4_voice** %269, align 8
  %271 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %270, i32 0, i32 6
  store i32 %266, i32* %271, align 8
  %272 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %274
  %276 = load %struct.opl4_voice*, %struct.opl4_voice** %275, align 8
  %277 = call i32 @snd_opl4_update_vibrato_depth(%struct.snd_opl4* %272, %struct.opl4_voice* %276)
  br label %278

278:                                              ; preds = %252
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %14, align 4
  br label %248

281:                                              ; preds = %248
  store i32 0, i32* %14, align 4
  br label %282

282:                                              ; preds = %317, %281
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %320

286:                                              ; preds = %282
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %288
  %290 = load %struct.opl4_voice*, %struct.opl4_voice** %289, align 8
  %291 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 31
  %294 = load i32, i32* @OPL4_KEY_ON_BIT, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %297
  %299 = load %struct.opl4_voice*, %struct.opl4_voice** %298, align 8
  %300 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %299, i32 0, i32 3
  store i32 %295, i32* %300, align 4
  %301 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %302 = load i64, i64* @OPL4_REG_MISC, align 8
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %304
  %306 = load %struct.opl4_voice*, %struct.opl4_voice** %305, align 8
  %307 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %302, %308
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [2 x %struct.opl4_voice*], [2 x %struct.opl4_voice*]* %11, i64 0, i64 %311
  %313 = load %struct.opl4_voice*, %struct.opl4_voice** %312, align 8
  %314 = getelementptr inbounds %struct.opl4_voice, %struct.opl4_voice* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @snd_opl4_write(%struct.snd_opl4* %301, i64 %309, i32 %315)
  br label %317

317:                                              ; preds = %286
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %14, align 4
  br label %282

320:                                              ; preds = %282
  %321 = load %struct.snd_opl4*, %struct.snd_opl4** %9, align 8
  %322 = getelementptr inbounds %struct.snd_opl4, %struct.snd_opl4* %321, i32 0, i32 0
  %323 = load i64, i64* %15, align 8
  %324 = call i32 @spin_unlock_irqrestore(i32* %322, i64 %323)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.opl4_voice* @snd_opl4_get_voice(%struct.snd_opl4*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @snd_opl4_write(%struct.snd_opl4*, i64, i32) #1

declare dso_local i32 @snd_opl4_update_pan(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_pitch(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_volume(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_opl4_wait_for_wave_headers(%struct.snd_opl4*) #1

declare dso_local i32 @snd_opl4_update_tone_parameters(%struct.snd_opl4*, %struct.opl4_voice*) #1

declare dso_local i32 @snd_opl4_update_vibrato_depth(%struct.snd_opl4*, %struct.opl4_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
