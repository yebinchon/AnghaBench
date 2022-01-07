; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_madi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_madi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@HDSPM_statusRegister = common dso_local global i32 0, align 4
@HDSPM_statusRegister2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s (Card #%d) Rev.%x Status2first3bits: %x\0A\00", align 1
@HDSPM_version0 = common dso_local global i32 0, align 4
@HDSPM_version1 = common dso_local global i32 0, align 4
@HDSPM_version2 = common dso_local global i32 0, align 4
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
@.str.6 = private unnamed_addr constant [62 x i8] c"Register: ctrl1=0x%x, ctrl2=0x%x, status1=0x%x, status2=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"--- Settings ---\0A\00", align 1
@HDSPM_LatencyMask = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Size (Latency): %d samples (2 periods of %lu bytes)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Line out: %s,   Precise Pointer: %s\0A\00", align 1
@HDSPM_LineOut = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"on \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@HDSPM_InputMask = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Coaxial\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Unkown\00", align 1
@HDSPM_SyncRefMask = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"WordClock\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"MADI\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Inputsel = %s, SyncRef = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"ClearTrackMarker = %s, Transmit in %s Channel Mode, Auto Input %s\0A\00", align 1
@HDSPM_clr_tms = common dso_local global i32 0, align 4
@HDSPM_TX_64ch = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"56\00", align 1
@HDSPM_AutoInp = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"AutoSync\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Internal 32 kHz\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Internal 44.1 kHz\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Internal 48 kHz\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Internal 64 kHz\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Internal 88.2 kHz\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Internal 96 kHz\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Sample Clock Source: %s\0A\00", align 1
@HDSPM_ClockModeMaster = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"System Clock Mode: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"Word Clock\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"MADI Sync\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"XXXX Clock\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Preferred Sync Reference: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"System Clock Frequency: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"--- Status:\0A\00", align 1
@HDSPM_madiSync = common dso_local global i32 0, align 4
@HDSPM_wcSync = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [30 x i8] c"Inputs MADI=%s, WordClock=%s\0A\00", align 1
@HDSPM_madiLock = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"NoLock\00", align 1
@HDSPM_wcLock = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [16 x i8] c"Input not valid\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"AutoSync: Reference= %s, Freq=%d (MADI = %d, Word = %d)\0A\00", align 1
@HDSPM_madiFreqMask = common dso_local global i32 0, align 4
@HDSPM_wcFreqMask = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [20 x i8] c"Input: %s, Mode=%s\0A\00", align 1
@HDSPM_AB_int = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [5 x i8] c"Coax\00", align 1
@HDSPM_RX_64ch = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [12 x i8] c"64 channels\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"56 channels\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_madi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_madi(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %16 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %17 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %16, i32 0, i32 0
  %18 = load %struct.hdspm*, %struct.hdspm** %17, align 8
  store %struct.hdspm* %18, %struct.hdspm** %5, align 8
  %19 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %20 = load i32, i32* @HDSPM_statusRegister, align 4
  %21 = call i32 @hdspm_read(%struct.hdspm* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %23 = load i32, i32* @HDSPM_statusRegister2, align 4
  %24 = call i32 @hdspm_read(%struct.hdspm* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %26 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %30 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %29, i32 0, i32 10
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %36 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @HDSPM_version0, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @HDSPM_version1, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @HDSPM_version2, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %44, %47
  %49 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %34, i32 %37, i32 %48)
  %50 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %51 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %52 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %55 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %58 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i64 %59)
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @HDSPM_audioIRQPending, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @HDSPM_midi0IRQPending, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @HDSPM_midi1IRQPending, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %80 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %72, i32 %78, i32 %81)
  %83 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @HDSPM_BufferID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %97 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 2, %99
  %101 = urem i32 %95, %100
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @HDSPM_BufferPositionMask, align 4
  %104 = and i32 %102, %103
  %105 = sub i32 %104, 64
  %106 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %107 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = mul nsw i32 2, %109
  %111 = urem i32 %105, %110
  %112 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %113 = call i64 @hdspm_hw_pointer(%struct.hdspm* %112)
  %114 = mul nsw i64 %113, 4
  %115 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %83, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %92, i32 %101, i32 %111, i64 %114)
  %116 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %117 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %118 = load i32, i32* @HDSPM_midiStatusOut0, align 4
  %119 = call i32 @hdspm_read(%struct.hdspm* %117, i32 %118)
  %120 = and i32 %119, 255
  %121 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %122 = load i32, i32* @HDSPM_midiStatusOut1, align 4
  %123 = call i32 @hdspm_read(%struct.hdspm* %121, i32 %122)
  %124 = and i32 %123, 255
  %125 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %126 = load i32, i32* @HDSPM_midiStatusIn0, align 4
  %127 = call i32 @hdspm_read(%struct.hdspm* %125, i32 %126)
  %128 = and i32 %127, 255
  %129 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %130 = load i32, i32* @HDSPM_midiStatusIn1, align 4
  %131 = call i32 @hdspm_read(%struct.hdspm* %129, i32 %130)
  %132 = and i32 %131, 255
  %133 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %116, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %120, i32 %124, i32 %128, i32 %132)
  %134 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %135 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %136 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %139 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %134, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %137, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %145 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %146 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %147 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @HDSPM_LatencyMask, align 4
  %150 = and i32 %148, %149
  %151 = call i32 @hdspm_decode_latency(i32 %150)
  %152 = add nsw i32 6, %151
  %153 = shl i32 1, %152
  store i32 %153, i32* %14, align 4
  %154 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %157 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %154, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %155, i64 %158)
  %160 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %161 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %162 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @HDSPM_LineOut, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %169 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %170 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %175 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %160, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %168, i8* %174)
  %176 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %177 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @HDSPM_InputMask, align 4
  %180 = and i32 %178, %179
  switch i32 %180, label %183 [
    i32 132, label %181
    i32 133, label %182
  ]

181:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %184

182:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %184

183:                                              ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %184

184:                                              ; preds = %183, %182, %181
  %185 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %186 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @HDSPM_SyncRefMask, align 4
  %189 = and i32 %187, %188
  switch i32 %189, label %192 [
    i32 128, label %190
    i32 129, label %191
  ]

190:                                              ; preds = %184
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  br label %193

191:                                              ; preds = %184
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %13, align 8
  br label %193

192:                                              ; preds = %184
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %193

193:                                              ; preds = %192, %191, %190
  %194 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %195, i8* %196)
  %198 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %199 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %200 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @HDSPM_clr_tms, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %207 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %208 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HDSPM_TX_64ch, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0)
  %215 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %216 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @HDSPM_AutoInp, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %223 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %198, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.19, i64 0, i64 0), i8* %206, i8* %214, i8* %222)
  %224 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %225 = call i32 @hdspm_clock_source(%struct.hdspm* %224)
  switch i32 %225, label %233 [
    i32 140, label %226
    i32 139, label %227
    i32 138, label %228
    i32 137, label %229
    i32 136, label %230
    i32 135, label %231
    i32 134, label %232
  ]

226:                                              ; preds = %193
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8** %11, align 8
  br label %234

227:                                              ; preds = %193
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %11, align 8
  br label %234

228:                                              ; preds = %193
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %11, align 8
  br label %234

229:                                              ; preds = %193
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8** %11, align 8
  br label %234

230:                                              ; preds = %193
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8** %11, align 8
  br label %234

231:                                              ; preds = %193
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8** %11, align 8
  br label %234

232:                                              ; preds = %193
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %11, align 8
  br label %234

233:                                              ; preds = %193
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %11, align 8
  br label %234

234:                                              ; preds = %233, %232, %231, %230, %229, %228, %227, %226
  %235 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i8* %236)
  %238 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %239 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @HDSPM_ClockModeMaster, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %234
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8** %10, align 8
  br label %246

245:                                              ; preds = %234
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %10, align 8
  br label %246

246:                                              ; preds = %245, %244
  %247 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i8* %248)
  %250 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %251 = call i32 @hdspm_pref_sync_ref(%struct.hdspm* %250)
  switch i32 %251, label %254 [
    i32 130, label %252
    i32 131, label %253
  ]

252:                                              ; preds = %246
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %8, align 8
  br label %255

253:                                              ; preds = %246
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8** %8, align 8
  br label %255

254:                                              ; preds = %246
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8** %8, align 8
  br label %255

255:                                              ; preds = %254, %253, %252
  %256 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %257 = load i8*, i8** %8, align 8
  %258 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* %257)
  %259 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %260 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %261 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i64 0, i64 0), i32 %262)
  %264 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %265 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @HDSPM_madiSync, align 4
  %268 = and i32 %266, %267
  store i32 %268, i32* %14, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @HDSPM_wcSync, align 4
  %271 = and i32 %269, %270
  store i32 %271, i32* %15, align 4
  %272 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @HDSPM_madiLock, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %255
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  br label %283

282:                                              ; preds = %255
  br label %283

283:                                              ; preds = %282, %277
  %284 = phi i8* [ %281, %277 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), %282 ]
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @HDSPM_wcLock, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)
  br label %295

294:                                              ; preds = %283
  br label %295

295:                                              ; preds = %294, %289
  %296 = phi i8* [ %293, %289 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), %294 ]
  %297 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* %284, i8* %296)
  %298 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %299 = call i32 @hdspm_autosync_ref(%struct.hdspm* %298)
  switch i32 %299, label %303 [
    i32 141, label %300
    i32 143, label %301
    i32 142, label %302
  ]

300:                                              ; preds = %295
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %9, align 8
  br label %304

301:                                              ; preds = %295
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8** %9, align 8
  br label %304

302:                                              ; preds = %295
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8** %9, align 8
  br label %304

303:                                              ; preds = %295
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8** %9, align 8
  br label %304

304:                                              ; preds = %303, %302, %301, %300
  %305 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %306 = load i8*, i8** %9, align 8
  %307 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %308 = call i32 @hdspm_external_sample_rate(%struct.hdspm* %307)
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* @HDSPM_madiFreqMask, align 4
  %311 = and i32 %309, %310
  %312 = lshr i32 %311, 22
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @HDSPM_wcFreqMask, align 4
  %315 = and i32 %313, %314
  %316 = lshr i32 %315, 5
  %317 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %305, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i8* %306, i32 %308, i32 %312, i32 %316)
  %318 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* @HDSPM_AB_int, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  %323 = zext i1 %322 to i64
  %324 = select i1 %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @HDSPM_RX_64ch, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)
  %331 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %318, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i64 0, i64 0), i8* %324, i8* %330)
  %332 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %333 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0))
  ret void
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdspm_hw_pointer(%struct.hdspm*) #1

declare dso_local i32 @hdspm_decode_latency(i32) #1

declare dso_local i32 @hdspm_clock_source(%struct.hdspm*) #1

declare dso_local i32 @hdspm_pref_sync_ref(%struct.hdspm*) #1

declare dso_local i32 @hdspm_autosync_ref(%struct.hdspm*) #1

declare dso_local i32 @hdspm_external_sample_rate(%struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
