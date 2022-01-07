; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i64 }
%struct.snd_info_buffer = type { i32 }
%struct.hdsp = type { i32, i32, i32, i64, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_status2Register = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s (Card #%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Buffers: capture %p playback %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Control register: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Control2 register: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Status register: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Status2 register: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"No I/O box connected.\0APlease connect one and upload firmware.\0A\00", align 1
@HDSP_FirmwareCached = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"Firmware loading from cache failed, please upload manually.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"No firmware loaded nor cached, please upload firmware.\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"FIFO status: %d\0A\00", align 1
@HDSP_fifoStatus = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"MIDI1 Output status: 0x%x\0A\00", align 1
@HDSP_midiStatusOut0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"MIDI1 Input status: 0x%x\0A\00", align 1
@HDSP_midiStatusIn0 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"MIDI2 Output status: 0x%x\0A\00", align 1
@HDSP_midiStatusOut1 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"MIDI2 Input status: 0x%x\0A\00", align 1
@HDSP_midiStatusIn1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"Use Midi Tasklet: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HDSP_LatencyMask = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [60 x i8] c"Buffer Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Hardware pointer (frames): %ld\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Precise pointer: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Line out: %s\0A\00", align 1
@HDSP_LineOut = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [22 x i8] c"Firmware version: %d\0A\00", align 1
@HDSP_version0 = common dso_local global i32 0, align 4
@HDSP_version1 = common dso_local global i32 0, align 4
@HDSP_version2 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Internal 32 kHz\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Internal 44.1 kHz\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Internal 48 kHz\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Internal 64 kHz\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Internal 88.2 kHz\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Internal 96 kHz\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Internal 128 kHz\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Internal 176.4 kHz\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Internal 192 kHz\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Sample Clock Source: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ADAT Sync\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ADAT1\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"ADAT2\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ADAT3\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Preferred Sync Reference: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"AutoSync Reference: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"AutoSync Frequency: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"System Clock Mode: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"System Clock Locked: %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"IEC958 input: Optical\0A\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"IEC958 input: Coaxial\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"IEC958 input: Internal\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"IEC958 input: AES\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"IEC958 input: ???\0A\00", align 1
@HDSP_SPDIFOpticalOut = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [32 x i8] c"IEC958 output: Coaxial & ADAT1\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"IEC958 output: Coaxial only\0A\00", align 1
@HDSP_SPDIFProfessional = common dso_local global i32 0, align 4
@.str.61 = private unnamed_addr constant [30 x i8] c"IEC958 quality: Professional\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"IEC958 quality: Consumer\0A\00", align 1
@HDSP_SPDIFEmphasis = common dso_local global i32 0, align 4
@.str.63 = private unnamed_addr constant [21 x i8] c"IEC958 emphasis: on\0A\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"IEC958 emphasis: off\0A\00", align 1
@HDSP_SPDIFNonAudio = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [21 x i8] c"IEC958 NonAudio: on\0A\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"IEC958 NonAudio: off\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"IEC958 sample rate: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"IEC958 sample rate: Error flag set\0A\00", align 1
@HDSP_Sync0 = common dso_local global i32 0, align 4
@HDSP_Lock0 = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [11 x i8] c"ADAT1: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"ADAT1: No Lock\0A\00", align 1
@HDSP_Sync1 = common dso_local global i32 0, align 4
@HDSP_Lock1 = common dso_local global i32 0, align 4
@.str.73 = private unnamed_addr constant [11 x i8] c"ADAT2: %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"ADAT2: No Lock\0A\00", align 1
@HDSP_Sync2 = common dso_local global i32 0, align 4
@HDSP_Lock2 = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"ADAT3: %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"ADAT3: No Lock\0A\00", align 1
@HDSP_SPDIFSync = common dso_local global i32 0, align 4
@HDSP_SPDIFErrorFlag = common dso_local global i32 0, align 4
@.str.77 = private unnamed_addr constant [16 x i8] c"SPDIF: No Lock\0A\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"SPDIF: %s\0A\00", align 1
@HDSP_wc_sync = common dso_local global i32 0, align 4
@HDSP_wc_lock = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [16 x i8] c"Word Clock: %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"Word Clock: No Lock\0A\00", align 1
@HDSP_TimecodeSync = common dso_local global i32 0, align 4
@HDSP_TimecodeLock = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [15 x i8] c"ADAT Sync: %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"ADAT Sync: No Lock\0A\00", align 1
@H9632 = common dso_local global i32 0, align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"-10 dBV\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"+4 dBu\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Lo Gain\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"AD Gain : %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"Hi Gain\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"DA Gain : %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"0 dB\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"-6 dB\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"-12 dB\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"Phones Gain : %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"XLR Breakout Cable : %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@HDSP_AnalogExtensionBoard = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [27 x i8] c"AEB : on (ADAT1 internal)\0A\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"AEB : off (ADAT1 external)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdsp_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdsp_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %15 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hdsp*
  store %struct.hdsp* %18, %struct.hdsp** %5, align 8
  %19 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %20 = load i32, i32* @HDSP_statusRegister, align 4
  %21 = call i32 @hdsp_read(%struct.hdsp* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %23 = load i32, i32* @HDSP_status2Register, align 4
  %24 = call i32 @hdsp_read(%struct.hdsp* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %26 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %30 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %29, i32 0, i32 14
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %34)
  %36 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %37 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %38 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %41 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %46 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %49 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50, i64 %53)
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %56 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %57 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %61 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %62 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %72 = call i64 @hdsp_check_for_iobox(%struct.hdsp* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %2
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  br label %522

77:                                               ; preds = %2
  %78 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %79 = call i64 @hdsp_check_for_firmware(%struct.hdsp* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %83 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HDSP_FirmwareCached, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %90 = call i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %522

95:                                               ; preds = %88
  br label %105

96:                                               ; preds = %81
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %103 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %522

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %108 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %109 = load i32, i32* @HDSP_fifoStatus, align 4
  %110 = call i32 @hdsp_read(%struct.hdsp* %108, i32 %109)
  %111 = and i32 %110, 255
  %112 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %114 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %115 = load i32, i32* @HDSP_midiStatusOut0, align 4
  %116 = call i32 @hdsp_read(%struct.hdsp* %114, i32 %115)
  %117 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  %118 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %119 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %120 = load i32, i32* @HDSP_midiStatusIn0, align 4
  %121 = call i32 @hdsp_read(%struct.hdsp* %119, i32 %120)
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %124 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %125 = load i32, i32* @HDSP_midiStatusOut1, align 4
  %126 = call i32 @hdsp_read(%struct.hdsp* %124, i32 %125)
  %127 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %126)
  %128 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %129 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %130 = load i32, i32* @HDSP_midiStatusIn1, align 4
  %131 = call i32 @hdsp_read(%struct.hdsp* %129, i32 %130)
  %132 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %134 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %135 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %140 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %139)
  %141 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %142 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %143 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %144 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @HDSP_LatencyMask, align 4
  %147 = and i32 %145, %146
  %148 = call i32 @hdsp_decode_latency(i32 %147)
  %149 = add nsw i32 6, %148
  %150 = shl i32 1, %149
  store i32 %150, i32* %12, align 4
  %151 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %154 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %151, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.19, i64 0, i64 0), i32 %152, i64 %155)
  %157 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %158 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %159 = call i32 @hdsp_hw_pointer(%struct.hdsp* %158)
  %160 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %159)
  %161 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %162 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %163 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %168 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %167)
  %169 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %170 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %171 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @HDSP_LineOut, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %178 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %177)
  %179 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @HDSP_version0, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @HDSP_version1, align 4
  %185 = and i32 %183, %184
  %186 = shl i32 %185, 1
  %187 = or i32 %182, %186
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @HDSP_version2, align 4
  %190 = and i32 %188, %189
  %191 = shl i32 %190, 2
  %192 = or i32 %187, %191
  %193 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %192)
  %194 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %195 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %196 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %197 = call i32 @hdsp_clock_source(%struct.hdsp* %196)
  switch i32 %197, label %208 [
    i32 147, label %198
    i32 143, label %199
    i32 142, label %200
    i32 141, label %201
    i32 140, label %202
    i32 139, label %203
    i32 138, label %204
    i32 146, label %205
    i32 145, label %206
    i32 144, label %207
  ]

198:                                              ; preds = %106
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %11, align 8
  br label %209

199:                                              ; preds = %106
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8** %11, align 8
  br label %209

200:                                              ; preds = %106
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8** %11, align 8
  br label %209

201:                                              ; preds = %106
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %11, align 8
  br label %209

202:                                              ; preds = %106
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %11, align 8
  br label %209

203:                                              ; preds = %106
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8** %11, align 8
  br label %209

204:                                              ; preds = %106
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %11, align 8
  br label %209

205:                                              ; preds = %106
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8** %11, align 8
  br label %209

206:                                              ; preds = %106
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), i8** %11, align 8
  br label %209

207:                                              ; preds = %106
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8** %11, align 8
  br label %209

208:                                              ; preds = %106
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8** %11, align 8
  br label %209

209:                                              ; preds = %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198
  %210 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %211)
  %213 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %214 = call i64 @hdsp_system_clock_mode(%struct.hdsp* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8** %10, align 8
  br label %218

217:                                              ; preds = %209
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8** %10, align 8
  br label %218

218:                                              ; preds = %217, %216
  %219 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %220 = call i32 @hdsp_pref_sync_ref(%struct.hdsp* %219)
  switch i32 %220, label %227 [
    i32 128, label %221
    i32 130, label %222
    i32 129, label %223
    i32 133, label %224
    i32 132, label %225
    i32 131, label %226
  ]

221:                                              ; preds = %218
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %8, align 8
  br label %228

222:                                              ; preds = %218
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %8, align 8
  br label %228

223:                                              ; preds = %218
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8** %8, align 8
  br label %228

224:                                              ; preds = %218
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %8, align 8
  br label %228

225:                                              ; preds = %218
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8** %8, align 8
  br label %228

226:                                              ; preds = %218
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %8, align 8
  br label %228

227:                                              ; preds = %218
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %8, align 8
  br label %228

228:                                              ; preds = %227, %226, %225, %224, %223, %222, %221
  %229 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i8* %230)
  %232 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %233 = call i32 @hdsp_autosync_ref(%struct.hdsp* %232)
  switch i32 %233, label %241 [
    i32 148, label %234
    i32 151, label %235
    i32 149, label %236
    i32 150, label %237
    i32 154, label %238
    i32 153, label %239
    i32 152, label %240
  ]

234:                                              ; preds = %228
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8** %9, align 8
  br label %242

235:                                              ; preds = %228
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8** %9, align 8
  br label %242

236:                                              ; preds = %228
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i8** %9, align 8
  br label %242

237:                                              ; preds = %228
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8** %9, align 8
  br label %242

238:                                              ; preds = %228
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8** %9, align 8
  br label %242

239:                                              ; preds = %228
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8** %9, align 8
  br label %242

240:                                              ; preds = %228
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i8** %9, align 8
  br label %242

241:                                              ; preds = %228
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8** %9, align 8
  br label %242

242:                                              ; preds = %241, %240, %239, %238, %237, %236, %235, %234
  %243 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i8* %244)
  %246 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %247 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %248 = call i32 @hdsp_external_sample_rate(%struct.hdsp* %247)
  %249 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i64 0, i64 0), i32 %248)
  %250 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %251 = load i8*, i8** %10, align 8
  %252 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i8* %251)
  %253 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %254 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %255 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %253, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0), i32 %256)
  %258 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %259 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %260 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)
  %265 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %258, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %264)
  %266 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %267 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %268 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %269 = call i32 @hdsp_spdif_in(%struct.hdsp* %268)
  switch i32 %269, label %282 [
    i32 134, label %270
    i32 136, label %273
    i32 135, label %276
    i32 137, label %279
  ]

270:                                              ; preds = %242
  %271 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %272 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i64 0, i64 0))
  br label %285

273:                                              ; preds = %242
  %274 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %275 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %274, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.55, i64 0, i64 0))
  br label %285

276:                                              ; preds = %242
  %277 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %278 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0))
  br label %285

279:                                              ; preds = %242
  %280 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %281 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0))
  br label %285

282:                                              ; preds = %242
  %283 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %284 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %283, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0))
  br label %285

285:                                              ; preds = %282, %279, %276, %273, %270
  %286 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %287 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @HDSP_SPDIFOpticalOut, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %285
  %293 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %294 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %293, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0))
  br label %298

295:                                              ; preds = %285
  %296 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %297 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %296, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0))
  br label %298

298:                                              ; preds = %295, %292
  %299 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %300 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @HDSP_SPDIFProfessional, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %298
  %306 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %307 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %306, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i64 0, i64 0))
  br label %311

308:                                              ; preds = %298
  %309 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %310 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %309, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308, %305
  %312 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %313 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @HDSP_SPDIFEmphasis, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %311
  %319 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %320 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %319, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0))
  br label %324

321:                                              ; preds = %311
  %322 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %323 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i64 0, i64 0))
  br label %324

324:                                              ; preds = %321, %318
  %325 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %326 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @HDSP_SPDIFNonAudio, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %333 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %332, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0))
  br label %337

334:                                              ; preds = %324
  %335 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %336 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %331
  %338 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %339 = call i32 @hdsp_spdif_sample_rate(%struct.hdsp* %338)
  store i32 %339, i32* %12, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %343 = load i32, i32* %12, align 4
  %344 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %342, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0), i32 %343)
  br label %348

345:                                              ; preds = %337
  %346 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %347 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %346, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.68, i64 0, i64 0))
  br label %348

348:                                              ; preds = %345, %341
  %349 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %350 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* @HDSP_Sync0, align 4
  %353 = and i32 %351, %352
  store i32 %353, i32* %12, align 4
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* @HDSP_Lock0, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %348
  %359 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %360 = load i32, i32* %12, align 4
  %361 = icmp ne i32 %360, 0
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %364 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0), i8* %363)
  br label %368

365:                                              ; preds = %348
  %366 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %367 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %366, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %358
  %369 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %370 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  switch i32 %371, label %409 [
    i32 156, label %372
    i32 155, label %372
  ]

372:                                              ; preds = %368, %368
  %373 = load i32, i32* %6, align 4
  %374 = load i32, i32* @HDSP_Sync1, align 4
  %375 = and i32 %373, %374
  store i32 %375, i32* %12, align 4
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* @HDSP_Lock1, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %372
  %381 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  %384 = zext i1 %383 to i64
  %385 = select i1 %383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %386 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %381, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i8* %385)
  br label %390

387:                                              ; preds = %372
  %388 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %389 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %388, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0))
  br label %390

390:                                              ; preds = %387, %380
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* @HDSP_Sync2, align 4
  %393 = and i32 %391, %392
  store i32 %393, i32* %12, align 4
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* @HDSP_Lock2, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %390
  %399 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %400 = load i32, i32* %12, align 4
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %404 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %399, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0), i8* %403)
  br label %408

405:                                              ; preds = %390
  %406 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %407 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %406, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i64 0, i64 0))
  br label %408

408:                                              ; preds = %405, %398
  br label %410

409:                                              ; preds = %368
  br label %410

410:                                              ; preds = %409, %408
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* @HDSP_SPDIFSync, align 4
  %413 = and i32 %411, %412
  store i32 %413, i32* %12, align 4
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* @HDSP_SPDIFErrorFlag, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %410
  %419 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %420 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i64 0, i64 0))
  br label %428

421:                                              ; preds = %410
  %422 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %423 = load i32, i32* %12, align 4
  %424 = icmp ne i32 %423, 0
  %425 = zext i1 %424 to i64
  %426 = select i1 %424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %427 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %422, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i64 0, i64 0), i8* %426)
  br label %428

428:                                              ; preds = %421, %418
  %429 = load i32, i32* %7, align 4
  %430 = load i32, i32* @HDSP_wc_sync, align 4
  %431 = and i32 %429, %430
  store i32 %431, i32* %12, align 4
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* @HDSP_wc_lock, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %428
  %437 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %438 = load i32, i32* %12, align 4
  %439 = icmp ne i32 %438, 0
  %440 = zext i1 %439 to i64
  %441 = select i1 %439, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %442 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %437, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), i8* %441)
  br label %446

443:                                              ; preds = %428
  %444 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %445 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %444, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i64 0, i64 0))
  br label %446

446:                                              ; preds = %443, %436
  %447 = load i32, i32* %6, align 4
  %448 = load i32, i32* @HDSP_TimecodeSync, align 4
  %449 = and i32 %447, %448
  store i32 %449, i32* %12, align 4
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* @HDSP_TimecodeLock, align 4
  %452 = and i32 %450, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %446
  %455 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %456 = load i32, i32* %12, align 4
  %457 = icmp ne i32 %456, 0
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)
  %460 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %455, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i8* %459)
  br label %464

461:                                              ; preds = %446
  %462 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %463 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %462, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0))
  br label %464

464:                                              ; preds = %461, %454
  %465 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %466 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %467 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %468 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @H9632, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %522

472:                                              ; preds = %464
  %473 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %474 = call i32 @hdsp_ad_gain(%struct.hdsp* %473)
  switch i32 %474, label %477 [
    i32 0, label %475
    i32 1, label %476
  ]

475:                                              ; preds = %472
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i8** %14, align 8
  br label %478

476:                                              ; preds = %472
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i8** %14, align 8
  br label %478

477:                                              ; preds = %472
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0), i8** %14, align 8
  br label %478

478:                                              ; preds = %477, %476, %475
  %479 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %480 = load i8*, i8** %14, align 8
  %481 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %479, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i64 0, i64 0), i8* %480)
  %482 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %483 = call i32 @hdsp_da_gain(%struct.hdsp* %482)
  switch i32 %483, label %486 [
    i32 0, label %484
    i32 1, label %485
  ]

484:                                              ; preds = %478
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i8** %14, align 8
  br label %487

485:                                              ; preds = %478
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i8** %14, align 8
  br label %487

486:                                              ; preds = %478
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i8** %14, align 8
  br label %487

487:                                              ; preds = %486, %485, %484
  %488 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %489 = load i8*, i8** %14, align 8
  %490 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %488, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0), i8* %489)
  %491 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %492 = call i32 @hdsp_phone_gain(%struct.hdsp* %491)
  switch i32 %492, label %495 [
    i32 0, label %493
    i32 1, label %494
  ]

493:                                              ; preds = %487
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i8** %14, align 8
  br label %496

494:                                              ; preds = %487
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0), i8** %14, align 8
  br label %496

495:                                              ; preds = %487
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0), i8** %14, align 8
  br label %496

496:                                              ; preds = %495, %494, %493
  %497 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %498 = load i8*, i8** %14, align 8
  %499 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %497, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i64 0, i64 0), i8* %498)
  %500 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %501 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %502 = call i64 @hdsp_xlr_breakout_cable(%struct.hdsp* %501)
  %503 = icmp ne i64 %502, 0
  %504 = zext i1 %503 to i64
  %505 = select i1 %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0)
  %506 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %500, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i64 0, i64 0), i8* %505)
  %507 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %508 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @HDSP_AnalogExtensionBoard, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %496
  %514 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %515 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %514, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0))
  br label %519

516:                                              ; preds = %496
  %517 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %518 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %517, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i64 0, i64 0))
  br label %519

519:                                              ; preds = %516, %513
  %520 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %521 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %520, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %522

522:                                              ; preds = %74, %92, %101, %519, %464
  ret void
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdsp_check_for_iobox(%struct.hdsp*) #1

declare dso_local i64 @hdsp_check_for_firmware(%struct.hdsp*, i32) #1

declare dso_local i64 @snd_hdsp_load_firmware_from_cache(%struct.hdsp*) #1

declare dso_local i32 @hdsp_decode_latency(i32) #1

declare dso_local i32 @hdsp_hw_pointer(%struct.hdsp*) #1

declare dso_local i32 @hdsp_clock_source(%struct.hdsp*) #1

declare dso_local i64 @hdsp_system_clock_mode(%struct.hdsp*) #1

declare dso_local i32 @hdsp_pref_sync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_autosync_ref(%struct.hdsp*) #1

declare dso_local i32 @hdsp_external_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_in(%struct.hdsp*) #1

declare dso_local i32 @hdsp_spdif_sample_rate(%struct.hdsp*) #1

declare dso_local i32 @hdsp_ad_gain(%struct.hdsp*) #1

declare dso_local i32 @hdsp_da_gain(%struct.hdsp*) #1

declare dso_local i32 @hdsp_phone_gain(%struct.hdsp*) #1

declare dso_local i64 @hdsp_xlr_breakout_cable(%struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
