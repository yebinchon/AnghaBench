; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_create_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_create_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_mgr = type { i32, i64, i64, i32, i64, %struct.pcxhr_mgr**, i32 }
%struct.snd_pcxhr = type { i32, i64, i64, i32, i64, %struct.snd_pcxhr**, i32 }

@pcxhr_control_analog_level = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@db_scale_a_hr222_playback = common dso_local global i32 0, align 4
@db_scale_analog_playback = common dso_local global i32 0, align 4
@pcxhr_control_output_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_pcxhr_pcm_vol = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@PCXHR_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@pcxhr_control_pcm_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_playback_iec958_mask = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_playback_iec958 = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Line Capture Volume\00", align 1
@db_scale_a_hr222_capture = common dso_local global i32 0, align 4
@db_scale_analog_capture = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"PCM Capture Volume\00", align 1
@pcxhr_control_audio_src = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_capture_iec958_mask = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_capture_iec958 = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_monitor_vol = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_monitor_sw = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_clock_type = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@pcxhr_control_clock_rate = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_create_mixer(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca %struct.snd_pcxhr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol_new, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  %8 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %9 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %8, i32 0, i32 6
  %10 = call i32 @mutex_init(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %276, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %14 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %279

17:                                               ; preds = %11
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %19 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %18, i32 0, i32 5
  %20 = load %struct.pcxhr_mgr**, %struct.pcxhr_mgr*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %20, i64 %22
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %23, align 8
  %25 = bitcast %struct.pcxhr_mgr* %24 to %struct.snd_pcxhr*
  store %struct.snd_pcxhr* %25, %struct.snd_pcxhr** %4, align 8
  %26 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %17
  %31 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.snd_kcontrol_new* @pcxhr_control_analog_level to i8*), i64 24, i1 false)
  %32 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %35 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @db_scale_a_hr222_playback, align 4
  %40 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i32, i32* @db_scale_analog_playback, align 4
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %48 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %51 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.snd_pcxhr* %50)
  %52 = call i32 @snd_ctl_add(i32 %49, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %280

57:                                               ; preds = %46
  %58 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %59 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %62 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_output_switch, %struct.snd_pcxhr* %61)
  %63 = call i32 @snd_ctl_add(i32 %60, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %280

68:                                               ; preds = %57
  %69 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.snd_kcontrol_new* @snd_pcxhr_pcm_vol to i8*), i64 24, i1 false)
  %70 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @PCXHR_PLAYBACK_STREAMS, align 4
  %72 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %75 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %78 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.snd_pcxhr* %77)
  %79 = call i32 @snd_ctl_add(i32 %76, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %280

84:                                               ; preds = %68
  %85 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %86 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %89 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_pcm_switch, %struct.snd_pcxhr* %88)
  %90 = call i32 @snd_ctl_add(i32 %87, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %280

95:                                               ; preds = %84
  %96 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %97 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %100 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_playback_iec958_mask, %struct.snd_pcxhr* %99)
  %101 = call i32 @snd_ctl_add(i32 %98, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %280

106:                                              ; preds = %95
  %107 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %108 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %111 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_playback_iec958, %struct.snd_pcxhr* %110)
  %112 = call i32 @snd_ctl_add(i32 %109, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %280

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %17
  %119 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %120 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %212

123:                                              ; preds = %118
  %124 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 bitcast (%struct.snd_kcontrol_new* @pcxhr_control_analog_level to i8*), i64 24, i1 false)
  %125 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %125, align 8
  %126 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 1, i32* %126, align 8
  %127 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %128 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %123
  %132 = load i32, i32* @db_scale_a_hr222_capture, align 4
  %133 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %139

135:                                              ; preds = %123
  %136 = load i32, i32* @db_scale_analog_capture, align 4
  %137 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %141 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %144 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.snd_pcxhr* %143)
  %145 = call i32 @snd_ctl_add(i32 %142, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %280

150:                                              ; preds = %139
  %151 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 bitcast (%struct.snd_kcontrol_new* @snd_pcxhr_pcm_vol to i8*), i64 24, i1 false)
  %152 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %152, align 8
  %153 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 1, i32* %153, align 4
  %154 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i32 1, i32* %154, align 8
  %155 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %156 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %159 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.snd_pcxhr* %158)
  %160 = call i32 @snd_ctl_add(i32 %157, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %150
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %280

165:                                              ; preds = %150
  %166 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %167 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %170 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_audio_src, %struct.snd_pcxhr* %169)
  %171 = call i32 @snd_ctl_add(i32 %168, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %2, align 4
  br label %280

176:                                              ; preds = %165
  %177 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %178 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %181 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_capture_iec958_mask, %struct.snd_pcxhr* %180)
  %182 = call i32 @snd_ctl_add(i32 %179, i32 %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = load i32, i32* %5, align 4
  store i32 %186, i32* %2, align 4
  br label %280

187:                                              ; preds = %176
  %188 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %189 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %192 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_capture_iec958, %struct.snd_pcxhr* %191)
  %193 = call i32 @snd_ctl_add(i32 %190, i32 %192)
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %280

198:                                              ; preds = %187
  %199 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %200 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %198
  %204 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %205 = call i32 @hr222_add_mic_controls(%struct.snd_pcxhr* %204)
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %5, align 4
  store i32 %209, i32* %2, align 4
  br label %280

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %198
  br label %212

212:                                              ; preds = %211, %118
  %213 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %214 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %245

217:                                              ; preds = %212
  %218 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %219 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %245

222:                                              ; preds = %217
  %223 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %224 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %227 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_monitor_vol, %struct.snd_pcxhr* %226)
  %228 = call i32 @snd_ctl_add(i32 %225, i32 %227)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = load i32, i32* %5, align 4
  store i32 %232, i32* %2, align 4
  br label %280

233:                                              ; preds = %222
  %234 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %235 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %238 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_monitor_sw, %struct.snd_pcxhr* %237)
  %239 = call i32 @snd_ctl_add(i32 %236, i32 %238)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %233
  %243 = load i32, i32* %5, align 4
  store i32 %243, i32* %2, align 4
  br label %280

244:                                              ; preds = %233
  br label %245

245:                                              ; preds = %244, %217, %212
  %246 = load i32, i32* %6, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %250 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %253 = bitcast %struct.pcxhr_mgr* %252 to %struct.snd_pcxhr*
  %254 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_clock_type, %struct.snd_pcxhr* %253)
  %255 = call i32 @snd_ctl_add(i32 %251, i32 %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = load i32, i32* %5, align 4
  store i32 %259, i32* %2, align 4
  br label %280

260:                                              ; preds = %248
  %261 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %262 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %265 = bitcast %struct.pcxhr_mgr* %264 to %struct.snd_pcxhr*
  %266 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @pcxhr_control_clock_rate, %struct.snd_pcxhr* %265)
  %267 = call i32 @snd_ctl_add(i32 %263, i32 %266)
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %260
  %271 = load i32, i32* %5, align 4
  store i32 %271, i32* %2, align 4
  br label %280

272:                                              ; preds = %260
  br label %273

273:                                              ; preds = %272, %245
  %274 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %4, align 8
  %275 = call i32 @pcxhr_init_audio_levels(%struct.snd_pcxhr* %274)
  br label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %6, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %6, align 4
  br label %11

279:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %280

280:                                              ; preds = %279, %270, %258, %242, %231, %208, %196, %185, %174, %163, %148, %115, %104, %93, %82, %66, %55
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_pcxhr*) #1

declare dso_local i32 @hr222_add_mic_controls(%struct.snd_pcxhr*) #1

declare dso_local i32 @pcxhr_init_audio_levels(%struct.snd_pcxhr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
