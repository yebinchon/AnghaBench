; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_vari_decimate_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_vari_decimate_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_vari_decimate_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_256 = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"VARIDECIMATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_vari_decimate_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.snd_cs46xx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca %struct.dsp_vari_decimate_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 0
  store i32 40, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 1
  store i32 200, i32* %18, align 4
  %19 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 2
  store i32 21845, i32* %19, align 8
  %20 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 5
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 6
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 7
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 8
  store i32 40, i32* %27, align 8
  %28 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 9
  store i32 200, i32* %28, align 4
  %29 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 10
  %30 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %31 = load i64, i64* @RSCONFIG_MODULO_256, align 8
  %32 = add nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 11
  store i32 -8388608, i32* %34, align 4
  %35 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 12
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 13
  store i32 128, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 100
  store i32 %40, i32* %38, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 15
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 16
  %46 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %47 = load i64, i64* @RSCONFIG_MODULO_8, align 8
  %48 = add nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 17
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 16
  store i32 %52, i32* %50, align 4
  %53 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 18
  store i32 67108864, i32* %53, align 8
  %54 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 19
  store i32 32768, i32* %54, align 4
  %55 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 20
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 21
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.dsp_vari_decimate_scb, %struct.dsp_vari_decimate_scb* %16, i32 0, i32 22
  store i64 0, i64* %57, align 8
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = bitcast %struct.dsp_vari_decimate_scb* %16 to i32*
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %58, i8* %59, i32* %60, i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %62, i32 %63)
  store %struct.dsp_scb_descriptor* %64, %struct.dsp_scb_descriptor** %15, align 8
  %65 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  ret %struct.dsp_scb_descriptor* %65
}

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
