; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_aes32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_aes32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@HDSPM_timecodeRegister = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s (Card #%d) Rev.%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IRQ: %d Registers bus: 0x%lx VM: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"--- System ---\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\0A\00", align 1
@HDSPM_audioIRQPending = common dso_local global i32 0, align 4
@HDSPM_midi0IRQPending = common dso_local global i32 0, align 4
@HDSPM_midi1IRQPending = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"HW pointer: id = %d, rawptr = %d (%d->%d) estimated= %ld (bytes)\0A\00", align 1
@HDSPM_BufferID = common dso_local global i32 0, align 4
@HDSPM_BufferPositionMask = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \0A\00", align 1
@HDSPM_midiStatusOut0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusOut1 = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn0 = common dso_local global i32 0, align 4
@HDSPM_midiStatusIn1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"Register: ctrl1=0x%x, status1=0x%x, status2=0x%x, timecode=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"--- Settings ---\0A\00", align 1
@HDSPM_LatencyMask = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Line out: %s,   Precise Pointer: %s\0A\00", align 1
@HDSPM_LineOut = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"ClearTrackMarker %s, Emphasis %s, Dolby %s\0A\00", align 1
@HDSPM_clr_tms = common dso_local global i32 0, align 4
@HDSPM_Emphasis = common dso_local global i32 0, align 4
@HDSPM_Dolby = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Internal 32 kHz\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Internal 44.1 kHz\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Internal 48 kHz\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Internal 64 kHz\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Internal 88.2 kHz\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Internal 96 kHz\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Internal 128 kHz\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Internal 176.4 kHz\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Internal 192 kHz\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Sample Clock Source: %s\0A\00", align 1
@HDSPM_ClockModeMaster = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"System Clock Mode: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Preferred Sync Reference: Word Clock\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Preferred Sync Reference: AES%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Double speed: %s\0A\00", align 1
@HDSPM_DS_DoubleWire = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"Double wire\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Single wire\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Quad speed: %s\0A\00", align 1
@HDSPM_QS_DoubleWire = common dso_local global i32 0, align 4
@HDSPM_QS_QuadWire = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"Quad wire\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"--- Status:\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"Word: %s  Frequency: %d\0A\00", align 1
@HDSPM_AES32_wcLock = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [8 x i8] c"Sync   \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"No Lock\00", align 1
@HDSPM_AES32_wcFreq_bit = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [26 x i8] c"AES%d: %s  Frequency: %d\0A\00", align 1
@HDSPM_LockAES = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"AES1\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"AES2\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"AES3\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"AES4\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"AES5\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"AES6\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"AES7\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"AES8\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"AutoSync ref = %s\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_aes32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_aes32(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %15 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %14, i32 0, i32 0
  %16 = load %struct.hdspm*, %struct.hdspm** %15, align 8
  store %struct.hdspm* %16, %struct.hdspm** %5, align 8
  %17 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %18 = load i32, i32* @HDSPM_statusRegister, align 4
  %19 = call i32 @hdspm_read(%struct.hdspm* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %21 = load i32, i32* @HDSPM_statusRegister2, align 4
  %22 = call i32 @hdspm_read(%struct.hdspm* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %24 = load i32, i32* @HDSPM_timecodeRegister, align 4
  %25 = call i32 @hdspm_read(%struct.hdspm* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %27 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %28 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %31 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %30, i32 0, i32 9
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %35, i32 %38)
  %40 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %41 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %42 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %45 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %48 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i64 %49)
  %51 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %52 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @HDSPM_audioIRQPending, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @HDSPM_midi0IRQPending, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @HDSPM_midi1IRQPending, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %70 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %62, i32 %68, i32 %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @HDSPM_BufferID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %87 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = mul nsw i32 2, %89
  %91 = urem i32 %85, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %94 = and i32 %92, %93
  %95 = sub i32 %94, 64
  %96 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %97 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 2, %99
  %101 = urem i32 %95, %100
  %102 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %103 = call i64 @hdspm_hw_pointer(%struct.hdspm* %102)
  %104 = mul nsw i64 %103, 4
  %105 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %82, i32 %91, i32 %101, i64 %104)
  %106 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %107 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %108 = load i32, i32* @HDSPM_midiStatusOut0, align 4
  %109 = call i32 @hdspm_read(%struct.hdspm* %107, i32 %108)
  %110 = and i32 %109, 255
  %111 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %112 = load i32, i32* @HDSPM_midiStatusOut1, align 4
  %113 = call i32 @hdspm_read(%struct.hdspm* %111, i32 %112)
  %114 = and i32 %113, 255
  %115 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %116 = load i32, i32* @HDSPM_midiStatusIn0, align 4
  %117 = call i32 @hdspm_read(%struct.hdspm* %115, i32 %116)
  %118 = and i32 %117, 255
  %119 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %120 = load i32, i32* @HDSPM_midiStatusIn1, align 4
  %121 = call i32 @hdspm_read(%struct.hdspm* %119, i32 %120)
  %122 = and i32 %121, 255
  %123 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %110, i32 %114, i32 %118, i32 %122)
  %124 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %125 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %126 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %124, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %133 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %134 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %135 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @HDSPM_LatencyMask, align 4
  %138 = and i32 %136, %137
  %139 = call i32 @hdspm_decode_latency(i32 %138)
  %140 = add nsw i32 6, %139
  %141 = shl i32 1, %140
  store i32 %141, i32* %13, align 4
  %142 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %145 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %142, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %143, i64 %146)
  %148 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %149 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %150 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @HDSPM_LineOut, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %157 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %158 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %163 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %156, i8* %162)
  %164 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %165 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %166 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @HDSPM_clr_tms, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %173 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %174 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @HDSPM_Emphasis, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %181 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %182 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HDSPM_Dolby, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %189 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i8* %172, i8* %180, i8* %188)
  %190 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %191 = call i32 @hdspm_clock_source(%struct.hdspm* %190)
  switch i32 %191, label %202 [
    i32 137, label %192
    i32 133, label %193
    i32 132, label %194
    i32 131, label %195
    i32 130, label %196
    i32 129, label %197
    i32 128, label %198
    i32 136, label %199
    i32 135, label %200
    i32 134, label %201
  ]

192:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %203

193:                                              ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %203

194:                                              ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %203

195:                                              ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %12, align 8
  br label %203

196:                                              ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %203

197:                                              ; preds = %2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8** %12, align 8
  br label %203

198:                                              ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %12, align 8
  br label %203

199:                                              ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8** %12, align 8
  br label %203

200:                                              ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %203

201:                                              ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8** %12, align 8
  br label %203

202:                                              ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8** %12, align 8
  br label %203

203:                                              ; preds = %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192
  %204 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %204, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %205)
  %207 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %208 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HDSPM_ClockModeMaster, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %203
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %11, align 8
  br label %215

214:                                              ; preds = %203
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8** %11, align 8
  br label %215

215:                                              ; preds = %214, %213
  %216 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8* %217)
  %219 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %220 = call i32 @hdspm_pref_sync_ref(%struct.hdspm* %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %225 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0))
  br label %230

226:                                              ; preds = %215
  %227 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %223
  %231 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %232 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %233 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i32 %234)
  %236 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %237 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %238 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @HDSPM_DS_DoubleWire, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)
  %245 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* %244)
  %246 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %247 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %248 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @HDSPM_QS_DoubleWire, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %230
  br label %263

254:                                              ; preds = %230
  %255 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %256 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @HDSPM_QS_QuadWire, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0)
  br label %263

263:                                              ; preds = %254, %253
  %264 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), %253 ], [ %262, %254 ]
  %265 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* %264)
  %266 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %267 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %266, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  %268 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @HDSPM_AES32_wcLock, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @HDSPM_AES32_wcFreq_bit, align 4
  %277 = lshr i32 %275, %276
  %278 = and i32 %277, 15
  %279 = call i32 @HDSPM_bit2freq(i32 %278)
  %280 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i8* %274, i32 %279)
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %303, %263
  %282 = load i32, i32* %13, align 4
  %283 = icmp slt i32 %282, 8
  br i1 %283, label %284, label %306

284:                                              ; preds = %281
  %285 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %286 = load i32, i32* %13, align 4
  %287 = add nsw i32 %286, 1
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @HDSPM_LockAES, align 4
  %290 = load i32, i32* %13, align 4
  %291 = ashr i32 %289, %290
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0)
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %13, align 4
  %298 = mul nsw i32 4, %297
  %299 = lshr i32 %296, %298
  %300 = and i32 %299, 15
  %301 = call i32 @HDSPM_bit2freq(i32 %300)
  %302 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i32 %287, i8* %295, i32 %301)
  br label %303

303:                                              ; preds = %284
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %281

306:                                              ; preds = %281
  %307 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %308 = call i32 @hdspm_autosync_ref(%struct.hdspm* %307)
  switch i32 %308, label %319 [
    i32 139, label %309
    i32 138, label %310
    i32 147, label %311
    i32 146, label %312
    i32 145, label %313
    i32 144, label %314
    i32 143, label %315
    i32 142, label %316
    i32 141, label %317
    i32 140, label %318
  ]

309:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i8** %10, align 8
  br label %320

310:                                              ; preds = %306
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %10, align 8
  br label %320

311:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8** %10, align 8
  br label %320

312:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8** %10, align 8
  br label %320

313:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8** %10, align 8
  br label %320

314:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8** %10, align 8
  br label %320

315:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8** %10, align 8
  br label %320

316:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8** %10, align 8
  br label %320

317:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i8** %10, align 8
  br label %320

318:                                              ; preds = %306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8** %10, align 8
  br label %320

319:                                              ; preds = %306
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8** %10, align 8
  br label %320

320:                                              ; preds = %319, %318, %317, %316, %315, %314, %313, %312, %311, %310, %309
  %321 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %321, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i8* %322)
  %324 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %325 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdspm_hw_pointer(%struct.hdspm*) #1

declare dso_local i32 @hdspm_decode_latency(i32) #1

declare dso_local i32 @hdspm_clock_source(%struct.hdspm*) #1

declare dso_local i32 @hdspm_pref_sync_ref(%struct.hdspm*) #1

declare dso_local i32 @HDSPM_bit2freq(i32) #1

declare dso_local i32 @hdspm_autosync_ref(%struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
