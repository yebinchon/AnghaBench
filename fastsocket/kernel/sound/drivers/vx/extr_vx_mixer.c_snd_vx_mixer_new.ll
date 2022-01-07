; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_snd_vx_mixer_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_mixer.c_snd_vx_mixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32, i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vx_core = type { %struct.TYPE_4__*, %struct.snd_card* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_card = type { i32, i32 }

@vx_control_output_level = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_audio_gain = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@vx_control_output_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_monitor_gain = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_monitor_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"PCM Capture Volume\00", align 1
@vx_control_audio_src = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_clock_mode = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_iec958_mask = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@vx_control_iec958 = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@snd_vx_mixer_new.dir = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@vx_control_saturation = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"%s VU Meter\00", align 1
@vx_control_vu_meter = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"%s Peak Meter\00", align 1
@vx_control_peak_meter = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_vx_mixer_new(%struct.vx_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol_new, align 8
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  %12 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %13 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %12, i32 0, i32 1
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %8, align 8
  %15 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %16 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %17, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %49, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %25 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_output_level to i8*), i64 24, i1 false)
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %35 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %42 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %43 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %42)
  %44 = call i32 @snd_ctl_add(%struct.snd_card* %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %269

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %22

52:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %117, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %56 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %120

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = mul i32 %62, 2
  store i32 %63, i32* %10, align 4
  %64 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_audio_gain to i8*), i64 24, i1 false)
  %65 = load i32, i32* %4, align 4
  %66 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %71 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %72 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %71)
  %73 = call i32 @snd_ctl_add(%struct.snd_card* %70, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %269

77:                                               ; preds = %61
  %78 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_output_switch to i8*), i64 24, i1 false)
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %84 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %85 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %84)
  %86 = call i32 @snd_ctl_add(%struct.snd_card* %83, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %269

90:                                               ; preds = %77
  %91 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_monitor_gain to i8*), i64 24, i1 false)
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %94, i32* %95, align 8
  %96 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %97 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %98 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %97)
  %99 = call i32 @snd_ctl_add(%struct.snd_card* %96, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %269

103:                                              ; preds = %90
  %104 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_monitor_switch to i8*), i64 24, i1 false)
  %105 = load i32, i32* %4, align 4
  %106 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %110 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %111 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %110)
  %112 = call i32 @snd_ctl_add(%struct.snd_card* %109, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %269

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %53

120:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %146, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %124 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %122, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %121
  %130 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_audio_gain to i8*), i64 24, i1 false)
  %131 = load i32, i32* %4, align 4
  %132 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %133, align 8
  %134 = load i32, i32* %4, align 4
  %135 = mul i32 %134, 2
  %136 = or i32 %135, 256
  %137 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %136, i32* %137, align 8
  %138 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %139 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %140 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %139)
  %141 = call i32 @snd_ctl_add(%struct.snd_card* %138, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %129
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %269

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %4, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %121

149:                                              ; preds = %121
  %150 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %151 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %152 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @vx_control_audio_src, %struct.vx_core* %151)
  %153 = call i32 @snd_ctl_add(%struct.snd_card* %150, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %269

157:                                              ; preds = %149
  %158 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %159 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %160 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @vx_control_clock_mode, %struct.vx_core* %159)
  %161 = call i32 @snd_ctl_add(%struct.snd_card* %158, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %269

165:                                              ; preds = %157
  %166 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %167 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %168 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @vx_control_iec958_mask, %struct.vx_core* %167)
  %169 = call i32 @snd_ctl_add(%struct.snd_card* %166, i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %2, align 4
  br label %269

173:                                              ; preds = %165
  %174 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %175 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %176 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @vx_control_iec958, %struct.vx_core* %175)
  %177 = call i32 @snd_ctl_add(%struct.snd_card* %174, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %2, align 4
  br label %269

181:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %263, %181
  %183 = load i32, i32* %5, align 4
  %184 = icmp ult i32 %183, 2
  br i1 %184, label %185, label %266

185:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %259, %185
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %189 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp ult i32 %187, %192
  br i1 %193, label %194, label %262

194:                                              ; preds = %186
  %195 = load i32, i32* %4, align 4
  %196 = mul i32 %195, 2
  %197 = load i32, i32* %5, align 4
  %198 = shl i32 %197, 8
  %199 = or i32 %196, %198
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %5, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %216

202:                                              ; preds = %194
  %203 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_saturation to i8*), i64 24, i1 false)
  %204 = load i32, i32* %4, align 4
  %205 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %204, i32* %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %206, i32* %207, align 8
  %208 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %209 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %210 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %209)
  %211 = call i32 @snd_ctl_add(%struct.snd_card* %208, i32 %210)
  store i32 %211, i32* %6, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %202
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %2, align 4
  br label %269

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215, %194
  %217 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %218 = load i32, i32* %5, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [2 x i8*], [2 x i8*]* @snd_vx_mixer_new.dir, i64 0, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @sprintf(i8* %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %221)
  %223 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %223, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_vu_meter to i8*), i64 24, i1 false)
  %224 = load i32, i32* %4, align 4
  %225 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %224, i32* %225, align 8
  %226 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %227 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i8* %226, i8** %227, align 8
  %228 = load i32, i32* %11, align 4
  %229 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %228, i32* %229, align 8
  %230 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %231 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %232 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %231)
  %233 = call i32 @snd_ctl_add(%struct.snd_card* %230, i32 %232)
  store i32 %233, i32* %6, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %216
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* %2, align 4
  br label %269

237:                                              ; preds = %216
  %238 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %239 = load i32, i32* %5, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [2 x i8*], [2 x i8*]* @snd_vx_mixer_new.dir, i64 0, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @sprintf(i8* %238, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %242)
  %244 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %244, i8* align 8 bitcast (%struct.snd_kcontrol_new* @vx_control_peak_meter to i8*), i64 24, i1 false)
  %245 = load i32, i32* %4, align 4
  %246 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %245, i32* %246, align 8
  %247 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %248 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 1
  store i8* %247, i8** %248, align 8
  %249 = load i32, i32* %11, align 4
  %250 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 2
  store i32 %249, i32* %250, align 8
  %251 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %252 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %253 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.vx_core* %252)
  %254 = call i32 @snd_ctl_add(%struct.snd_card* %251, i32 %253)
  store i32 %254, i32* %6, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %237
  %257 = load i32, i32* %6, align 4
  store i32 %257, i32* %2, align 4
  br label %269

258:                                              ; preds = %237
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %4, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %186

262:                                              ; preds = %186
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %5, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %182

266:                                              ; preds = %182
  %267 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %268 = call i32 @vx_reset_audio_levels(%struct.vx_core* %267)
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %266, %256, %235, %213, %179, %171, %163, %155, %143, %114, %101, %88, %75, %46
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @strcpy(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.vx_core*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @vx_reset_audio_levels(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
