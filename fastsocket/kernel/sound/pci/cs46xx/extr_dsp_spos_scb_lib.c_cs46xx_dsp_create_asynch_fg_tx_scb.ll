; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_asynch_fg_tx_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_asynch_fg_tx_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_asynch_fg_tx_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AFGTxAccumPhi = common dso_local global i64 0, align 8
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_256 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ASYNCHFGTXCODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i64, i32, i32, %struct.dsp_scb_descriptor*, i32)* @cs46xx_dsp_create_asynch_fg_tx_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @cs46xx_dsp_create_asynch_fg_tx_scb(%struct.snd_cs46xx* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.snd_cs46xx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca %struct.dsp_asynch_fg_tx_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 0
  store i32 64512, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 1
  store i32 1023, i32* %18, align 4
  %19 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 2
  store i32 88, i32* %19, align 8
  %20 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 3
  store i32 40, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 5
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 6
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 8
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 9
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 10
  store i32 10923, i32* %28, align 8
  %29 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 11
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 12
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 13
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 14
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 15
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @AFGTxAccumPhi, align 8
  %36 = add nsw i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 16
  %39 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %40 = load i64, i64* @RSCONFIG_MODULO_256, align 8
  %41 = add nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 17
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 %45, 16
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 402653184, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 32768, i32* %48, align 4
  %49 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 18
  store i32 32768, i32* %49, align 8
  %50 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 19
  store i32 32768, i32* %50, align 4
  %51 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 20
  store i32 32768, i32* %51, align 8
  %52 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 21
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, %struct.dsp_asynch_fg_tx_scb* %16, i32 0, i32 22
  store i32 0, i32* %53, align 8
  %54 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast %struct.dsp_asynch_fg_tx_scb* %16 to i64*
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %54, i8* %55, i64* %56, i64 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %58, i32 %59)
  store %struct.dsp_scb_descriptor* %60, %struct.dsp_scb_descriptor** %15, align 8
  %61 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  ret %struct.dsp_scb_descriptor* %61
}

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i64*, i64, i8*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
