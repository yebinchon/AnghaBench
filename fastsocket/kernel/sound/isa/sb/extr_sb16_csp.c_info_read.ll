; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_info_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_info_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_sb_csp* }
%struct.snd_sb_csp = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Creative Signal Processor [v%d.%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"State: %cx%c%c%c\0A\00", align 1
@SNDRV_SB_CSP_ST_QSOUND = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_PAUSED = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_RUNNING = common dso_local global i32 0, align 4
@SNDRV_SB_CSP_ST_LOADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Codec: %s [func #%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Sample rates: \00", align 1
@SNDRV_SB_CSP_RATE_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"All\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s%s%s%s\0A\00", align 1
@SNDRV_SB_CSP_RATE_8000 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"8000Hz \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SNDRV_SB_CSP_RATE_11025 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"11025Hz \00", align 1
@SNDRV_SB_CSP_RATE_22050 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"22050Hz \00", align 1
@SNDRV_SB_CSP_RATE_44100 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"44100Hz\00", align 1
@SNDRV_SB_CSP_MODE_QSOUND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"QSound decoder %sabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"PCM format ID: 0x%x (%s/%s) [%s/%s] [%s/%s]\0A\00", align 1
@SNDRV_SB_CSP_SAMPLE_16BIT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"16bit\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@SNDRV_SB_CSP_SAMPLE_8BIT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@SNDRV_SB_CSP_MONO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@SNDRV_SB_CSP_STEREO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@SNDRV_SB_CSP_MODE_DSP_WRITE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@SNDRV_SB_CSP_MODE_DSP_READ = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@SNDRV_SB_CSP_ST_AUTO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"Autoloaded Mu-Law, A-Law or Ima-ADPCM hardware codec\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Processing %dbit %s PCM samples\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Qsound position: left = 0x%x, right = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @info_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_sb_csp*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %6 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %7 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %6, i32 0, i32 0
  %8 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %7, align 8
  store %struct.snd_sb_csp* %8, %struct.snd_sb_csp** %5, align 8
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %10 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %11 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 4
  %14 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %15 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 15
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %21 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SNDRV_SB_CSP_ST_QSOUND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 81, i32 45
  %28 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %29 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_SB_CSP_ST_PAUSED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 80, i32 45
  %36 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %37 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 82, i32 45
  %44 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %45 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SNDRV_SB_CSP_ST_LOADED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 76, i32 45
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %35, i32 %43, i32 %51)
  %53 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %54 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SNDRV_SB_CSP_ST_LOADED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %183

59:                                               ; preds = %2
  %60 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %61 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %62 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %65 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %63, i8* %66)
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %71 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SNDRV_SB_CSP_RATE_ALL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %77 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %113

78:                                               ; preds = %59
  %79 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %80 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %81 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SNDRV_SB_CSP_RATE_8000, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %88 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %89 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SNDRV_SB_CSP_RATE_11025, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %96 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %97 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SNDRV_SB_CSP_RATE_22050, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %104 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %105 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SNDRV_SB_CSP_RATE_44100, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %112 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %87, i8* %95, i8* %103, i8* %111)
  br label %113

113:                                              ; preds = %78, %75
  %114 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %115 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SNDRV_SB_CSP_MODE_QSOUND, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %121 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %122 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %121, i32 0, i32 13
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %127 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %126)
  br label %182

128:                                              ; preds = %113
  %129 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %130 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %131 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %134 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SNDRV_SB_CSP_SAMPLE_16BIT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %141 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %142 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SNDRV_SB_CSP_SAMPLE_8BIT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %149 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %150 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SNDRV_SB_CSP_MONO, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %157 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %158 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SNDRV_SB_CSP_STEREO, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %165 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %166 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_WRITE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %173 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %174 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @SNDRV_SB_CSP_MODE_DSP_READ, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)
  %181 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %132, i8* %140, i8* %148, i8* %156, i8* %164, i8* %172, i8* %180)
  br label %182

182:                                              ; preds = %128, %119
  br label %183

183:                                              ; preds = %182, %2
  %184 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %185 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SNDRV_SB_CSP_ST_AUTO, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %192 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %191, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %183
  %194 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %195 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SNDRV_SB_CSP_ST_RUNNING, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %202 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %203 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SNDRV_SB_CSP_SAMPLE_16BIT, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 16, i32 8
  %210 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %211 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @SNDRV_SB_CSP_MONO, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0)
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %209, i8* %217)
  br label %219

219:                                              ; preds = %200, %193
  %220 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %221 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SNDRV_SB_CSP_ST_QSOUND, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %228 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %229 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %5, align 8
  %232 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %231, i32 0, i32 11
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 %230, i8* %233)
  br label %235

235:                                              ; preds = %226, %219
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
