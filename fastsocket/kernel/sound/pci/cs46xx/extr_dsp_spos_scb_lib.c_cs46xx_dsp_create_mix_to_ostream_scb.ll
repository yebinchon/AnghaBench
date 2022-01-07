; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_mix_to_ostream_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_mix_to_ostream_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_mix2_ostream_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@DMA_RQ_C1_SOURCE_MOD64 = common dso_local global i64 0, align 8
@DMA_RQ_C1_DEST_ON_HOST = common dso_local global i64 0, align 8
@DMA_RQ_C1_DEST_MOD1024 = common dso_local global i64 0, align 8
@DMA_RQ_C1_WRITEBACK_SRC_FLAG = common dso_local global i64 0, align 8
@DMA_RQ_C1_WRITEBACK_DEST_FLAG = common dso_local global i64 0, align 8
@RSCONFIG_DMA_ENABLE = common dso_local global i32 0, align 4
@RSCONFIG_MAX_DMA_SIZE_SHIFT = common dso_local global i32 0, align 4
@RSCONFIG_STREAM_NUM_SHIFT = common dso_local global i32 0, align 4
@RSCONFIG_DMA_TO_HOST = common dso_local global i32 0, align 4
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i32 0, align 4
@RSCONFIG_MODULO_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"S16_MIX_TO_OSTREAM\00", align 1
@CS46XX_DSP_CAPTURE_CHANNEL = common dso_local global i64 0, align 8
@DMA_RQ_C2_AC_NONE = common dso_local global i64 0, align 8
@DMA_RQ_C2_SIGNAL_DEST_PINGPONG = common dso_local global i64 0, align 8
@DMA_RQ_SD_SP_SAMPLE_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_mix_to_ostream_scb(%struct.snd_cs46xx* %0, i8* %1, i64 %2, i64 %3, i32 %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.snd_cs46xx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dsp_scb_descriptor*, align 8
  %16 = alloca %struct.dsp_mix2_ostream_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 0
  %18 = load i64, i64* @DMA_RQ_C1_SOURCE_MOD64, align 8
  %19 = load i64, i64* @DMA_RQ_C1_DEST_ON_HOST, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* @DMA_RQ_C1_DEST_MOD1024, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @DMA_RQ_C1_WRITEBACK_SRC_FLAG, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @DMA_RQ_C1_WRITEBACK_DEST_FLAG, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 15
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %17, align 8
  %29 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 5
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 6
  %37 = load i32, i32* @RSCONFIG_DMA_ENABLE, align 4
  %38 = load i32, i32* @RSCONFIG_MAX_DMA_SIZE_SHIFT, align 4
  %39 = shl i32 19, %38
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, 4
  %43 = load i32, i32* @RSCONFIG_STREAM_NUM_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = add nsw i32 %40, %44
  %46 = load i32, i32* @RSCONFIG_DMA_TO_HOST, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @RSCONFIG_SAMPLE_16STEREO, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* @RSCONFIG_MODULO_64, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %36, align 8
  %52 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 7
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 128
  %55 = shl i64 %54, 16
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 8
  store i64 1, i64* %57, align 8
  %58 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 9
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 10
  store i32 1, i32* %59, align 4
  %60 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 11
  store i32 128, i32* %60, align 8
  %61 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 12
  %62 = bitcast %struct.TYPE_4__* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 20, i1 false)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 65535, i32* %63, align 4
  %64 = getelementptr inbounds %struct.dsp_mix2_ostream_scb, %struct.dsp_mix2_ostream_scb* %16, i32 0, i32 13
  %65 = bitcast %struct.TYPE_3__* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 32, i1 false)
  %66 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast %struct.dsp_mix2_ostream_scb* %16 to i32*
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %66, i8* %67, i32* %68, i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %70, i32 %71)
  store %struct.dsp_scb_descriptor* %72, %struct.dsp_scb_descriptor** %15, align 8
  %73 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %15, align 8
  ret %struct.dsp_scb_descriptor* %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
