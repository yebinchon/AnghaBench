; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_register_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_register_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_info = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_seq_port_info**, %struct.TYPE_4__, %struct.snd_seq_port_info*, i32, i32, i32, i32, i32, %struct.snd_seq_port_info*, i32, i32, i8* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.snd_seq_device = type { i32, %struct.snd_card*, %struct.snd_rawmidi* }
%struct.snd_card = type { i64, i64* }
%struct.snd_rawmidi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)* }
%struct.seq_midisynth_client = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.seq_midisynth_client**, %struct.TYPE_4__, %struct.seq_midisynth_client*, i32, i32, i32, i32, i32, %struct.seq_midisynth_client*, i32, i32, i8* }
%struct.seq_midisynth = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.seq_midisynth**, %struct.TYPE_4__, %struct.seq_midisynth*, i32, i32, i32, i32, i32, %struct.seq_midisynth*, i32, i32, i8* }
%struct.snd_rawmidi_info = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_rawmidi_info**, %struct.TYPE_4__, %struct.snd_rawmidi_info*, i32, i32, i32, i32, i32, %struct.snd_rawmidi_info*, i32, i32, i8* }
%struct.snd_seq_port_callback = type { i32, i32, i32, i64, i32, i8*, i32, i32, i32, i32, i32*, i32, %struct.snd_seq_port_callback**, %struct.TYPE_4__, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i32, %struct.snd_seq_port_callback*, i32, i32, i8* }

@SNDRV_RAWMIDI_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_STREAM_OUTPUT = common dso_local global i8* null, align 8
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@synths = common dso_local global %struct.snd_seq_port_info** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"External MIDI\00", align 1
@SNDRV_SEQ_PORT_FLG_GIVEN_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MIDI %d-%d-%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"MIDI %d-%d\00", align 1
@SNDRV_RAWMIDI_INFO_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SYNC_READ = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_READ = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_HARDWARE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_PORT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@midisynth_subscribe = common dso_local global i32 0, align 4
@midisynth_unsubscribe = common dso_local global i32 0, align 4
@midisynth_use = common dso_local global i32 0, align 4
@midisynth_unuse = common dso_local global i32 0, align 4
@event_process_midi = common dso_local global i32 0, align 4
@SNDRV_SEQ_IOCTL_CREATE_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_device*)* @snd_seq_midisynth_register_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_midisynth_register_port(%struct.snd_seq_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_seq_device*, align 8
  %4 = alloca %struct.seq_midisynth_client*, align 8
  %5 = alloca %struct.seq_midisynth*, align 8
  %6 = alloca %struct.seq_midisynth*, align 8
  %7 = alloca %struct.snd_seq_port_info*, align 8
  %8 = alloca %struct.snd_rawmidi_info*, align 8
  %9 = alloca %struct.snd_rawmidi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_seq_port_callback, align 8
  %14 = alloca %struct.snd_card*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_seq_device* %0, %struct.snd_seq_device** %3, align 8
  %18 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %19 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %18, i32 0, i32 2
  %20 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %19, align 8
  store %struct.snd_rawmidi* %20, %struct.snd_rawmidi** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %22 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %21, i32 0, i32 1
  %23 = load %struct.snd_card*, %struct.snd_card** %22, align 8
  store %struct.snd_card* %23, %struct.snd_card** %14, align 8
  %24 = load %struct.snd_seq_device*, %struct.snd_seq_device** %3, align 8
  %25 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %28 = icmp ne %struct.snd_card* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %35 = icmp sge i32 %33, %34
  br label %36

36:                                               ; preds = %32, %29, %1
  %37 = phi i1 [ true, %29 ], [ true, %1 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @snd_BUG_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %534

44:                                               ; preds = %36
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.snd_seq_port_info* @kmalloc(i32 152, i32 %45)
  %47 = bitcast %struct.snd_seq_port_info* %46 to %struct.snd_rawmidi_info*
  store %struct.snd_rawmidi_info* %47, %struct.snd_rawmidi_info** %8, align 8
  %48 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %49 = icmp ne %struct.snd_rawmidi_info* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %534

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %58 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %59 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %58, i32 0, i32 23
  store i8* %57, i8** %59, align 8
  %60 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %63 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %64 = bitcast %struct.snd_rawmidi_info* %63 to %struct.snd_seq_port_info*
  %65 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %62, %struct.snd_seq_port_info* %64)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %69 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %67, %53
  %72 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %73 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %74 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %73, i32 0, i32 23
  store i8* %72, i8** %74, align 8
  %75 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %76 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %77 = bitcast %struct.snd_rawmidi_info* %76 to %struct.snd_seq_port_info*
  %78 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %75, %struct.snd_seq_port_info* %77)
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %82 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %12, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %96 = bitcast %struct.snd_rawmidi_info* %95 to %struct.snd_seq_port_info*
  %97 = call i32 @kfree(%struct.snd_seq_port_info* %96)
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %534

100:                                              ; preds = %91
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %103 = sdiv i32 256, %102
  %104 = icmp ugt i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %107 = sdiv i32 256, %106
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = call i32 @mutex_lock(i32* @register_mutex)
  %110 = load %struct.snd_seq_port_info**, %struct.snd_seq_port_info*** @synths, align 8
  %111 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %112 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %110, i64 %113
  %115 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %114, align 8
  %116 = bitcast %struct.snd_seq_port_info* %115 to %struct.seq_midisynth_client*
  store %struct.seq_midisynth_client* %116, %struct.seq_midisynth_client** %4, align 8
  %117 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %118 = icmp eq %struct.seq_midisynth_client* %117, null
  br i1 %118, label %119, label %166

119:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.snd_seq_port_info* @kzalloc(i32 152, i32 %120)
  %122 = bitcast %struct.snd_seq_port_info* %121 to %struct.seq_midisynth_client*
  store %struct.seq_midisynth_client* %122, %struct.seq_midisynth_client** %4, align 8
  %123 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %124 = icmp eq %struct.seq_midisynth_client* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = call i32 @mutex_unlock(i32* @register_mutex)
  %127 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %128 = bitcast %struct.snd_rawmidi_info* %127 to %struct.snd_seq_port_info*
  %129 = call i32 @kfree(%struct.snd_seq_port_info* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %534

132:                                              ; preds = %119
  %133 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %134 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %135 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %142 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = bitcast i64* %143 to i8*
  br label %146

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %140
  %147 = phi i8* [ %144, %140 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %145 ]
  %148 = call i64 @snd_seq_create_kernel_client(%struct.snd_card* %133, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %147)
  %149 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %150 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %152 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %146
  %156 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %157 = bitcast %struct.seq_midisynth_client* %156 to %struct.snd_seq_port_info*
  %158 = call i32 @kfree(%struct.snd_seq_port_info* %157)
  %159 = call i32 @mutex_unlock(i32* @register_mutex)
  %160 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %161 = bitcast %struct.snd_rawmidi_info* %160 to %struct.snd_seq_port_info*
  %162 = call i32 @kfree(%struct.snd_seq_port_info* %161)
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %534

165:                                              ; preds = %146
  br label %166

166:                                              ; preds = %165, %108
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call %struct.snd_seq_port_info* @kcalloc(i32 %167, i32 152, i32 %168)
  %170 = bitcast %struct.snd_seq_port_info* %169 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %170, %struct.seq_midisynth** %5, align 8
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call %struct.snd_seq_port_info* @kmalloc(i32 152, i32 %171)
  store %struct.snd_seq_port_info* %172, %struct.snd_seq_port_info** %7, align 8
  %173 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %174 = icmp eq %struct.seq_midisynth* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %166
  %176 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %177 = icmp eq %struct.snd_seq_port_info* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %175, %166
  br label %492

179:                                              ; preds = %175
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %452, %179
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %455

184:                                              ; preds = %180
  %185 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %186 = load i32, i32* %11, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %185, i64 %187
  store %struct.seq_midisynth* %188, %struct.seq_midisynth** %6, align 8
  %189 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %190 = bitcast %struct.seq_midisynth* %189 to %struct.snd_seq_port_info*
  %191 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i64 @snd_seq_midisynth_new(%struct.snd_seq_port_info* %190, %struct.snd_card* %191, i32 %192, i32 %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %492

197:                                              ; preds = %184
  %198 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %199 = call i32 @memset(%struct.snd_seq_port_info* %198, i32 0, i32 152)
  %200 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %201 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %204 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %203, i32 0, i32 13
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* @SNDRV_RAWMIDI_DEVICES, align 4
  %208 = sdiv i32 256, %207
  %209 = mul nsw i32 %206, %208
  %210 = load i32, i32* %11, align 4
  %211 = add i32 %209, %210
  %212 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %213 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %212, i32 0, i32 13
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @SNDRV_SEQ_PORT_FLG_GIVEN_PORT, align 4
  %216 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %217 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 8
  %218 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %219 = bitcast %struct.snd_rawmidi_info* %218 to %struct.snd_seq_port_info*
  %220 = call i32 @memset(%struct.snd_seq_port_info* %219, i32 0, i32 152)
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %223 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %197
  %228 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_OUTPUT, align 8
  %229 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %230 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %229, i32 0, i32 23
  store i8* %228, i8** %230, align 8
  br label %235

231:                                              ; preds = %197
  %232 = load i8*, i8** @SNDRV_RAWMIDI_STREAM_INPUT, align 8
  %233 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %234 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %233, i32 0, i32 23
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i32, i32* %11, align 4
  %237 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %238 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %240 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %241 = bitcast %struct.snd_rawmidi_info* %240 to %struct.snd_seq_port_info*
  %242 = call i64 @snd_rawmidi_info_select(%struct.snd_card* %239, %struct.snd_seq_port_info* %241)
  %243 = icmp sge i64 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %235
  %245 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %246 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %249 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %248, i32 0, i32 22
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @strcpy(i8* %247, i32 %250)
  br label %252

252:                                              ; preds = %244, %235
  %253 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %254 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %253, i32 0, i32 5
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = icmp ne i8 %257, 0
  br i1 %258, label %313, label %259

259:                                              ; preds = %252
  %260 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %261 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %260, i32 0, i32 5
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = icmp ne i8 %264, 0
  br i1 %265, label %266, label %287

266:                                              ; preds = %259
  %267 = load i32, i32* %12, align 4
  %268 = icmp ugt i32 %267, 1
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %271 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %270, i32 0, i32 5
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %274 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %272, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %275, i32 %276)
  br label %286

278:                                              ; preds = %266
  %279 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %280 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %279, i32 0, i32 5
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %283 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %282, i32 0, i32 5
  %284 = load i8*, i8** %283, align 8
  %285 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %281, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %284)
  br label %286

286:                                              ; preds = %278, %269
  br label %312

287:                                              ; preds = %259
  %288 = load i32, i32* %12, align 4
  %289 = icmp ugt i32 %288, 1
  br i1 %289, label %290, label %301

290:                                              ; preds = %287
  %291 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %292 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %291, i32 0, i32 5
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %295 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %11, align 4
  %300 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %293, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %297, i32 %298, i32 %299)
  br label %311

301:                                              ; preds = %287
  %302 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %303 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %302, i32 0, i32 5
  %304 = load i8*, i8** %303, align 8
  %305 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %306 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load i32, i32* %15, align 4
  %310 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %304, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %301, %290
  br label %312

312:                                              ; preds = %311, %286
  br label %313

313:                                              ; preds = %312, %252
  %314 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %315 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @SNDRV_RAWMIDI_INFO_OUTPUT, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %334

320:                                              ; preds = %313
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %17, align 4
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %320
  %325 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %326 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_WRITE, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %329 = or i32 %327, %328
  %330 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %331 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %324, %320, %313
  %335 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %336 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %334
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %16, align 4
  %344 = icmp ult i32 %342, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %341
  %346 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %347 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SYNC_READ, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_READ, align 4
  %350 = or i32 %348, %349
  %351 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %352 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %355

355:                                              ; preds = %345, %341, %334
  %356 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %357 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %356, i32 0, i32 6
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %360 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %361 = or i32 %359, %360
  %362 = and i32 %358, %361
  %363 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  %364 = load i32, i32* @SNDRV_SEQ_PORT_CAP_READ, align 4
  %365 = or i32 %363, %364
  %366 = icmp eq i32 %362, %365
  br i1 %366, label %367, label %380

367:                                              ; preds = %355
  %368 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %369 = getelementptr inbounds %struct.snd_rawmidi_info, %struct.snd_rawmidi_info* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @SNDRV_RAWMIDI_INFO_DUPLEX, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %367
  %375 = load i32, i32* @SNDRV_SEQ_PORT_CAP_DUPLEX, align 4
  %376 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %377 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %374, %367, %355
  %381 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %382 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_HARDWARE, align 4
  %383 = or i32 %381, %382
  %384 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_PORT, align 4
  %385 = or i32 %383, %384
  %386 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %387 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %386, i32 0, i32 7
  store i32 %385, i32* %387, align 4
  %388 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %389 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %388, i32 0, i32 8
  store i32 16, i32* %389, align 8
  %390 = bitcast %struct.snd_seq_port_callback* %13 to %struct.snd_seq_port_info*
  %391 = call i32 @memset(%struct.snd_seq_port_info* %390, i32 0, i32 152)
  %392 = load i32, i32* @THIS_MODULE, align 4
  %393 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 21
  store i32 %392, i32* %393, align 8
  %394 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %395 = bitcast %struct.seq_midisynth* %394 to %struct.snd_seq_port_callback*
  %396 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 20
  store %struct.snd_seq_port_callback* %395, %struct.snd_seq_port_callback** %396, align 8
  %397 = load i32, i32* @midisynth_subscribe, align 4
  %398 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 19
  store i32 %397, i32* %398, align 8
  %399 = load i32, i32* @midisynth_unsubscribe, align 4
  %400 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 18
  store i32 %399, i32* %400, align 4
  %401 = load i32, i32* @midisynth_use, align 4
  %402 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 17
  store i32 %401, i32* %402, align 8
  %403 = load i32, i32* @midisynth_unuse, align 4
  %404 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 16
  store i32 %403, i32* %404, align 4
  %405 = load i32, i32* @event_process_midi, align 4
  %406 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %13, i32 0, i32 15
  store i32 %405, i32* %406, align 8
  %407 = bitcast %struct.snd_seq_port_callback* %13 to %struct.snd_seq_port_info*
  %408 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %409 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %408, i32 0, i32 14
  store %struct.snd_seq_port_info* %407, %struct.snd_seq_port_info** %409, align 8
  %410 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %9, align 8
  %411 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %410, i32 0, i32 0
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %411, align 8
  %413 = icmp ne %struct.TYPE_3__* %412, null
  br i1 %413, label %414, label %431

414:                                              ; preds = %380
  %415 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %9, align 8
  %416 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %415, i32 0, i32 0
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i32 0, i32 0
  %419 = load i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)*, i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)** %418, align 8
  %420 = icmp ne i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)* %419, null
  br i1 %420, label %421, label %431

421:                                              ; preds = %414
  %422 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %9, align 8
  %423 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %422, i32 0, i32 0
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 0
  %426 = load i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)*, i32 (%struct.snd_rawmidi*, i32, %struct.snd_seq_port_info*)** %425, align 8
  %427 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %9, align 8
  %428 = load i32, i32* %11, align 4
  %429 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %430 = call i32 %426(%struct.snd_rawmidi* %427, i32 %428, %struct.snd_seq_port_info* %429)
  br label %431

431:                                              ; preds = %421, %414, %380
  %432 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %433 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = load i32, i32* @SNDRV_SEQ_IOCTL_CREATE_PORT, align 4
  %436 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %437 = call i64 @snd_seq_kernel_client_ctl(i64 %434, i32 %435, %struct.snd_seq_port_info* %436)
  %438 = icmp slt i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %431
  br label %492

440:                                              ; preds = %431
  %441 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %442 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %441, i32 0, i32 3
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %445 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %444, i32 0, i32 3
  store i64 %443, i64* %445, align 8
  %446 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %447 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %446, i32 0, i32 13
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %451 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %450, i32 0, i32 9
  store i32 %449, i32* %451, align 4
  br label %452

452:                                              ; preds = %440
  %453 = load i32, i32* %11, align 4
  %454 = add i32 %453, 1
  store i32 %454, i32* %11, align 4
  br label %180

455:                                              ; preds = %180
  %456 = load i32, i32* %12, align 4
  %457 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %458 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %457, i32 0, i32 10
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %15, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  store i32 %456, i32* %462, align 4
  %463 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %464 = bitcast %struct.seq_midisynth* %463 to %struct.seq_midisynth_client*
  %465 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %466 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %465, i32 0, i32 12
  %467 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %466, align 8
  %468 = load i32, i32* %15, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %467, i64 %469
  store %struct.seq_midisynth_client* %464, %struct.seq_midisynth_client** %470, align 8
  %471 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %472 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %471, i32 0, i32 11
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 8
  %475 = load i32, i32* %10, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %485

477:                                              ; preds = %455
  %478 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %479 = bitcast %struct.seq_midisynth_client* %478 to %struct.snd_seq_port_info*
  %480 = load %struct.snd_seq_port_info**, %struct.snd_seq_port_info*** @synths, align 8
  %481 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  %482 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %480, i64 %483
  store %struct.snd_seq_port_info* %479, %struct.snd_seq_port_info** %484, align 8
  br label %485

485:                                              ; preds = %477, %455
  %486 = call i32 @mutex_unlock(i32* @register_mutex)
  %487 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %488 = bitcast %struct.snd_rawmidi_info* %487 to %struct.snd_seq_port_info*
  %489 = call i32 @kfree(%struct.snd_seq_port_info* %488)
  %490 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %491 = call i32 @kfree(%struct.snd_seq_port_info* %490)
  store i32 0, i32* %2, align 4
  br label %534

492:                                              ; preds = %439, %196, %178
  %493 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %494 = icmp ne %struct.seq_midisynth* %493, null
  br i1 %494, label %495, label %514

495:                                              ; preds = %492
  store i32 0, i32* %11, align 4
  br label %496

496:                                              ; preds = %507, %495
  %497 = load i32, i32* %11, align 4
  %498 = load i32, i32* %12, align 4
  %499 = icmp ult i32 %497, %498
  br i1 %499, label %500, label %510

500:                                              ; preds = %496
  %501 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %502 = load i32, i32* %11, align 4
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %501, i64 %503
  %505 = bitcast %struct.seq_midisynth* %504 to %struct.snd_seq_port_info*
  %506 = call i32 @snd_seq_midisynth_delete(%struct.snd_seq_port_info* %505)
  br label %507

507:                                              ; preds = %500
  %508 = load i32, i32* %11, align 4
  %509 = add i32 %508, 1
  store i32 %509, i32* %11, align 4
  br label %496

510:                                              ; preds = %496
  %511 = load %struct.seq_midisynth*, %struct.seq_midisynth** %5, align 8
  %512 = bitcast %struct.seq_midisynth* %511 to %struct.snd_seq_port_info*
  %513 = call i32 @kfree(%struct.snd_seq_port_info* %512)
  br label %514

514:                                              ; preds = %510, %492
  %515 = load i32, i32* %10, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %525

517:                                              ; preds = %514
  %518 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %519 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %518, i32 0, i32 3
  %520 = load i64, i64* %519, align 8
  %521 = call i32 @snd_seq_delete_kernel_client(i64 %520)
  %522 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %4, align 8
  %523 = bitcast %struct.seq_midisynth_client* %522 to %struct.snd_seq_port_info*
  %524 = call i32 @kfree(%struct.snd_seq_port_info* %523)
  br label %525

525:                                              ; preds = %517, %514
  %526 = load %struct.snd_rawmidi_info*, %struct.snd_rawmidi_info** %8, align 8
  %527 = bitcast %struct.snd_rawmidi_info* %526 to %struct.snd_seq_port_info*
  %528 = call i32 @kfree(%struct.snd_seq_port_info* %527)
  %529 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %7, align 8
  %530 = call i32 @kfree(%struct.snd_seq_port_info* %529)
  %531 = call i32 @mutex_unlock(i32* @register_mutex)
  %532 = load i32, i32* @ENOMEM, align 4
  %533 = sub nsw i32 0, %532
  store i32 %533, i32* %2, align 4
  br label %534

534:                                              ; preds = %525, %485, %155, %125, %94, %50, %41
  %535 = load i32, i32* %2, align 4
  ret i32 %535
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_seq_port_info* @kmalloc(i32, i32) #1

declare dso_local i64 @snd_rawmidi_info_select(%struct.snd_card*, %struct.snd_seq_port_info*) #1

declare dso_local i32 @kfree(%struct.snd_seq_port_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_seq_port_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @snd_seq_create_kernel_client(%struct.snd_card*, i32, i8*, i8*) #1

declare dso_local %struct.snd_seq_port_info* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @snd_seq_midisynth_new(%struct.snd_seq_port_info*, %struct.snd_card*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_seq_port_info*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

declare dso_local i64 @snd_seq_kernel_client_ctl(i64, i32, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_midisynth_delete(%struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
