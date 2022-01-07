; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_mix_only_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_mix_only_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_mix_only_scb = type { i32, %struct.TYPE_4__, i32, i64, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"S16_MIX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_mix_only_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, %struct.dsp_scb_descriptor* %4, i32 %5) #0 {
  %7 = alloca %struct.snd_cs46xx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsp_scb_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_scb_descriptor*, align 8
  %14 = alloca %struct.dsp_mix_only_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dsp_scb_descriptor* %4, %struct.dsp_scb_descriptor** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 6
  %26 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %27 = load i64, i64* @RSCONFIG_MODULO_32, align 8
  %28 = add nsw i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 7
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 64
  %33 = shl i32 %32, 16
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 8
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 20, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 32768, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dsp_mix_only_scb, %struct.dsp_mix_only_scb* %14, i32 0, i32 9
  %38 = bitcast %struct.TYPE_5__* %37 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast %struct.dsp_mix_only_scb* %14 to i32*
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %39, i8* %40, i32* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dsp_scb_descriptor* %43, i32 %44)
  store %struct.dsp_scb_descriptor* %45, %struct.dsp_scb_descriptor** %13, align 8
  %46 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %13, align 8
  ret %struct.dsp_scb_descriptor* %46
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
