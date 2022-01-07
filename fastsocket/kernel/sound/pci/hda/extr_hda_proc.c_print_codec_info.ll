; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_codec_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_codec_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hda_codec* }
%struct.hda_codec = type { i32, i32, i32, i32, i32, i32, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Codec: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Not Set\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Address: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"AFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"MFG Function Id: 0x%x (unsol %u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Vendor Id: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Subsystem Id: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Revision Id: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Modem Function Group: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"No Modem Function Group found\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Default PCM:\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Default Amp-In caps: \00", align 1
@HDA_INPUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Default Amp-Out caps: \00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"State of AFG node 0x%02x:\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Invalid AFG subtree\0A\00", align 1
@AC_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Node 0x%02x [%s] wcaps 0x%x:\00", align 1
@AC_WCAP_STEREO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c" Stereo\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" %d-Channels\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" Mono\00", align 1
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c" Digital\00", align 1
@AC_WCAP_IN_AMP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c" Amp-In\00", align 1
@AC_WCAP_OUT_AMP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c" Amp-Out\00", align 1
@AC_WCAP_STRIPE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c" Stripe\00", align 1
@AC_WCAP_LR_SWAP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c" R/L\00", align 1
@AC_WCAP_CP_CAPS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c" CP\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AC_WCAP_CONN_LIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"  Amp-In caps: \00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"  Amp-In vals: \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"  Amp-Out caps: \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"  Amp-Out vals: \00", align 1
@AC_WCAP_FORMAT_OVRD = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"  PCM:\0A\00", align 1
@AC_WCAP_UNSOL_CAP = common dso_local global i32 0, align 4
@AC_WCAP_POWER = common dso_local global i32 0, align 4
@AC_WCAP_DELAY = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [21 x i8] c"  Delay: %d samples\0A\00", align 1
@AC_WCAP_DELAY_SHIFT = common dso_local global i32 0, align 4
@AC_WCAP_PROC_WID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @print_codec_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_codec_info(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %15 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %15, i32 0, i32 0
  %17 = load %struct.hda_codec*, %struct.hda_codec** %16, align 8
  store %struct.hda_codec* %17, %struct.hda_codec** %5, align 8
  %18 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %19 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 16
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %26 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %25, i32 0, i32 15
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 16
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 15
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %36)
  br label %41

38:                                               ; preds = %24, %2
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %43 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %53 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %57 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %41
  %61 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %62 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %67 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %71 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %82 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %86 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %87 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  %90 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %74
  %95 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %96 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %97 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %98)
  br label %103

100:                                              ; preds = %74
  %101 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %102 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %105 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %539

109:                                              ; preds = %103
  %110 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %111 = call i32 @snd_hda_power_up(%struct.hda_codec* %110)
  %112 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %113 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %115 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %116 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %117 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @print_pcm_caps(%struct.snd_info_buffer* %114, %struct.hda_codec* %115, i32 %118)
  %120 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %121 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %122 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %123 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %124 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %125 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @HDA_INPUT, align 4
  %128 = call i32 @print_amp_caps(%struct.snd_info_buffer* %122, %struct.hda_codec* %123, i32 %126, i32 %127)
  %129 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %130 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %131 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %132 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %133 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %134 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @HDA_OUTPUT, align 4
  %137 = call i32 @print_amp_caps(%struct.snd_info_buffer* %131, %struct.hda_codec* %132, i32 %135, i32 %136)
  %138 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %139 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %140 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %141)
  %143 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %144 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %145 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %146 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @print_power_state(%struct.snd_info_buffer* %143, %struct.hda_codec* %144, i32 %147)
  %149 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %150 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %151 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @snd_hda_get_sub_nodes(%struct.hda_codec* %149, i32 %152, i32* %6)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %109
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156, %109
  %160 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %161 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %162 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %163 = call i32 @snd_hda_power_down(%struct.hda_codec* %162)
  br label %539

164:                                              ; preds = %156
  %165 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %166 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %167 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %168 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @print_gpio(%struct.snd_info_buffer* %165, %struct.hda_codec* %166, i32 %169)
  %171 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %172 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %171, i32 0, i32 6
  %173 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %172, align 8
  %174 = icmp ne i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* %173, null
  br i1 %174, label %175, label %185

175:                                              ; preds = %164
  %176 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %177 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %176, i32 0, i32 6
  %178 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %177, align 8
  %179 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %180 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %181 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %182 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 %178(%struct.snd_info_buffer* %179, %struct.hda_codec* %180, i32 %183)
  br label %185

185:                                              ; preds = %175, %164
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %531, %185
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %536

190:                                              ; preds = %186
  %191 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @AC_PAR_AUDIO_WIDGET_CAP, align 4
  %194 = call i32 @snd_hda_param_read(%struct.hda_codec* %191, i32 %192, i32 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @get_wcaps_type(i32 %195)
  store i32 %196, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %197 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @get_wid_type_name(i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %198, i32 %200, i32 %201)
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @AC_WCAP_STEREO, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %190
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @get_wcaps_channels(i32 %208)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %214 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %219

215:                                              ; preds = %207
  %216 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %215, %212
  br label %223

220:                                              ; preds = %190
  %221 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %222 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %219
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %230 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %238 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %231
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %246 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %245, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %239
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @AC_WCAP_STRIPE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %254 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %247
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @AC_WCAP_LR_SWAP, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %262 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %255
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* @AC_WCAP_CP_CAPS, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %270 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %263
  %272 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %273 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %274 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %275 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %278 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %277, i32 0, i32 10
  %279 = call i32 @print_nid_array(%struct.snd_info_buffer* %274, %struct.hda_codec* %275, i32 %276, i32* %278)
  %280 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %281 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %284 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %283, i32 0, i32 9
  %285 = call i32 @print_nid_array(%struct.snd_info_buffer* %280, %struct.hda_codec* %281, i32 %282, i32* %284)
  %286 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %287 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %288 = load i32, i32* %6, align 4
  %289 = call i32 @print_nid_pcms(%struct.snd_info_buffer* %286, %struct.hda_codec* %287, i32 %288)
  %290 = load i32, i32* %10, align 4
  %291 = icmp eq i32 %290, 128
  br i1 %291, label %292, label %296

292:                                              ; preds = %271
  %293 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %294 = load i32, i32* %9, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %9, align 4
  br label %296

296:                                              ; preds = %292, %271
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %327

301:                                              ; preds = %296
  %302 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @snd_hda_get_num_raw_conns(%struct.hda_codec* %302, i32 %303)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %326

307:                                              ; preds = %301
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = mul i64 4, %309
  %311 = trunc i64 %310 to i32
  %312 = load i32, i32* @GFP_KERNEL, align 4
  %313 = call i32* @kmalloc(i32 %311, i32 %312)
  store i32* %313, i32** %11, align 8
  %314 = load i32*, i32** %11, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %307
  br label %539

317:                                              ; preds = %307
  %318 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load i32*, i32** %11, align 8
  %321 = load i32, i32* %12, align 4
  %322 = call i64 @snd_hda_get_raw_connections(%struct.hda_codec* %318, i32 %319, i32* %320, i32 %321)
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %317
  store i32 0, i32* %12, align 4
  br label %325

325:                                              ; preds = %324, %317
  br label %326

326:                                              ; preds = %325, %301
  br label %327

327:                                              ; preds = %326, %296
  %328 = load i32, i32* %9, align 4
  %329 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %372

332:                                              ; preds = %327
  %333 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %334 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %333, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  %335 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %336 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* @HDA_INPUT, align 4
  %339 = call i32 @print_amp_caps(%struct.snd_info_buffer* %335, %struct.hda_codec* %336, i32 %337, i32 %338)
  %340 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %341 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %340, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %342 = load i32, i32* %10, align 4
  %343 = icmp eq i32 %342, 129
  br i1 %343, label %352, label %344

344:                                              ; preds = %332
  %345 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %346 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %345, i32 0, i32 8
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %344
  %350 = load i32, i32* %10, align 4
  %351 = icmp eq i32 %350, 131
  br i1 %351, label %352, label %361

352:                                              ; preds = %349, %332
  %353 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %354 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @HDA_INPUT, align 4
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* @AC_WCAP_STEREO, align 4
  %359 = and i32 %357, %358
  %360 = call i32 @print_amp_vals(%struct.snd_info_buffer* %353, %struct.hda_codec* %354, i32 %355, i32 %356, i32 %359, i32 1)
  br label %371

361:                                              ; preds = %349, %344
  %362 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %363 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* @HDA_INPUT, align 4
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* @AC_WCAP_STEREO, align 4
  %368 = and i32 %366, %367
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @print_amp_vals(%struct.snd_info_buffer* %362, %struct.hda_codec* %363, i32 %364, i32 %365, i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %361, %352
  br label %372

372:                                              ; preds = %371, %327
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %414

377:                                              ; preds = %372
  %378 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %379 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %378, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %380 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %381 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %382 = load i32, i32* %6, align 4
  %383 = load i32, i32* @HDA_OUTPUT, align 4
  %384 = call i32 @print_amp_caps(%struct.snd_info_buffer* %380, %struct.hda_codec* %381, i32 %382, i32 %383)
  %385 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %386 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %385, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  %387 = load i32, i32* %10, align 4
  %388 = icmp eq i32 %387, 129
  br i1 %388, label %389, label %404

389:                                              ; preds = %377
  %390 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %391 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %390, i32 0, i32 7
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %404

394:                                              ; preds = %389
  %395 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %396 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* @HDA_OUTPUT, align 4
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* @AC_WCAP_STEREO, align 4
  %401 = and i32 %399, %400
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @print_amp_vals(%struct.snd_info_buffer* %395, %struct.hda_codec* %396, i32 %397, i32 %398, i32 %401, i32 %402)
  br label %413

404:                                              ; preds = %389, %377
  %405 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %406 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %407 = load i32, i32* %6, align 4
  %408 = load i32, i32* @HDA_OUTPUT, align 4
  %409 = load i32, i32* %9, align 4
  %410 = load i32, i32* @AC_WCAP_STEREO, align 4
  %411 = and i32 %409, %410
  %412 = call i32 @print_amp_vals(%struct.snd_info_buffer* %405, %struct.hda_codec* %406, i32 %407, i32 %408, i32 %411, i32 1)
  br label %413

413:                                              ; preds = %404, %394
  br label %414

414:                                              ; preds = %413, %372
  %415 = load i32, i32* %10, align 4
  switch i32 %415, label %459 [
    i32 129, label %416
    i32 128, label %426
    i32 130, label %431
    i32 131, label %431
  ]

416:                                              ; preds = %414
  %417 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %418 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %419 = load i32, i32* %6, align 4
  %420 = call i32 @print_pin_caps(%struct.snd_info_buffer* %417, %struct.hda_codec* %418, i32 %419, i32* %14)
  %421 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %422 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %423 = load i32, i32* %6, align 4
  %424 = load i32, i32* %14, align 4
  %425 = call i32 @print_pin_ctls(%struct.snd_info_buffer* %421, %struct.hda_codec* %422, i32 %423, i32 %424)
  br label %459

426:                                              ; preds = %414
  %427 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %428 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %429 = load i32, i32* %6, align 4
  %430 = call i32 @print_vol_knob(%struct.snd_info_buffer* %427, %struct.hda_codec* %428, i32 %429)
  br label %459

431:                                              ; preds = %414, %414
  %432 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %433 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* %10, align 4
  %436 = call i32 @print_audio_io(%struct.snd_info_buffer* %432, %struct.hda_codec* %433, i32 %434, i32 %435)
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %431
  %442 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %443 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %444 = load i32, i32* %6, align 4
  %445 = call i32 @print_digital_conv(%struct.snd_info_buffer* %442, %struct.hda_codec* %443, i32 %444)
  br label %446

446:                                              ; preds = %441, %431
  %447 = load i32, i32* %9, align 4
  %448 = load i32, i32* @AC_WCAP_FORMAT_OVRD, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %446
  %452 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %453 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %452, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %454 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %455 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %456 = load i32, i32* %6, align 4
  %457 = call i32 @print_pcm_caps(%struct.snd_info_buffer* %454, %struct.hda_codec* %455, i32 %456)
  br label %458

458:                                              ; preds = %451, %446
  br label %459

459:                                              ; preds = %414, %458, %426, %416
  %460 = load i32, i32* %9, align 4
  %461 = load i32, i32* @AC_WCAP_UNSOL_CAP, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %469

464:                                              ; preds = %459
  %465 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %466 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %467 = load i32, i32* %6, align 4
  %468 = call i32 @print_unsol_cap(%struct.snd_info_buffer* %465, %struct.hda_codec* %466, i32 %467)
  br label %469

469:                                              ; preds = %464, %459
  %470 = load i32, i32* %9, align 4
  %471 = load i32, i32* @AC_WCAP_POWER, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %469
  %475 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %476 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @print_power_state(%struct.snd_info_buffer* %475, %struct.hda_codec* %476, i32 %477)
  br label %479

479:                                              ; preds = %474, %469
  %480 = load i32, i32* %9, align 4
  %481 = load i32, i32* @AC_WCAP_DELAY, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %492

484:                                              ; preds = %479
  %485 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %486 = load i32, i32* %9, align 4
  %487 = load i32, i32* @AC_WCAP_DELAY, align 4
  %488 = and i32 %486, %487
  %489 = load i32, i32* @AC_WCAP_DELAY_SHIFT, align 4
  %490 = lshr i32 %488, %489
  %491 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %485, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0), i32 %490)
  br label %492

492:                                              ; preds = %484, %479
  %493 = load i32, i32* %9, align 4
  %494 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %495 = and i32 %493, %494
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %492
  %498 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %499 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %500 = load i32, i32* %6, align 4
  %501 = load i32, i32* %10, align 4
  %502 = load i32*, i32** %11, align 8
  %503 = load i32, i32* %12, align 4
  %504 = call i32 @print_conn_list(%struct.snd_info_buffer* %498, %struct.hda_codec* %499, i32 %500, i32 %501, i32* %502, i32 %503)
  br label %505

505:                                              ; preds = %497, %492
  %506 = load i32, i32* %9, align 4
  %507 = load i32, i32* @AC_WCAP_PROC_WID, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %512 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %513 = load i32, i32* %6, align 4
  %514 = call i32 @print_proc_caps(%struct.snd_info_buffer* %511, %struct.hda_codec* %512, i32 %513)
  br label %515

515:                                              ; preds = %510, %505
  %516 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %517 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %516, i32 0, i32 6
  %518 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %517, align 8
  %519 = icmp ne i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* %518, null
  br i1 %519, label %520, label %528

520:                                              ; preds = %515
  %521 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %522 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %521, i32 0, i32 6
  %523 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %522, align 8
  %524 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %525 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %526 = load i32, i32* %6, align 4
  %527 = call i32 %523(%struct.snd_info_buffer* %524, %struct.hda_codec* %525, i32 %526)
  br label %528

528:                                              ; preds = %520, %515
  %529 = load i32*, i32** %11, align 8
  %530 = call i32 @kfree(i32* %529)
  br label %531

531:                                              ; preds = %528
  %532 = load i32, i32* %7, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %7, align 4
  %534 = load i32, i32* %6, align 4
  %535 = add i32 %534, 1
  store i32 %535, i32* %6, align 4
  br label %186

536:                                              ; preds = %186
  %537 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %538 = call i32 @snd_hda_power_down(%struct.hda_codec* %537)
  br label %539

539:                                              ; preds = %536, %316, %159, %108
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @print_pcm_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_amp_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_power_state(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_sub_nodes(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

declare dso_local i32 @print_gpio(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wid_type_name(i32) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local i32 @print_nid_array(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @print_nid_pcms(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_num_raw_conns(%struct.hda_codec*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @snd_hda_get_raw_connections(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @print_amp_vals(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @print_pin_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @print_pin_ctls(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_vol_knob(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_audio_io(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_digital_conv(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_unsol_cap(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_conn_list(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32*, i32) #1

declare dso_local i32 @print_proc_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
