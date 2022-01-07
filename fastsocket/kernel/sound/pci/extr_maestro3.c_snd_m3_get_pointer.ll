; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_get_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_get_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.m3_dma = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@CDATA_HOST_SRC_CURRENTH = common dso_local global i64 0, align 8
@CDATA_HOST_SRC_CURRENTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.m3_dma*, %struct.snd_pcm_substream*)* @snd_m3_get_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_get_pointer(%struct.snd_m3* %0, %struct.m3_dma* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca %struct.m3_dma*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 10, i32* %9, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %17 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %18 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %19 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CDATA_HOST_SRC_CURRENTH, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @snd_m3_assp_read(%struct.snd_m3* %16, i32 %17, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %26 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %27 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %28 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CDATA_HOST_SRC_CURRENTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @snd_m3_assp_read(%struct.snd_m3* %25, i32 %26, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %36 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %37 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %38 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CDATA_HOST_SRC_CURRENTH, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @snd_m3_assp_read(%struct.snd_m3* %35, i32 %36, i64 %42)
  %44 = icmp eq i64 %34, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %15
  br label %47

46:                                               ; preds = %15
  br label %11

47:                                               ; preds = %45, %11
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = or i64 %48, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %58 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i64 @snd_m3_assp_read(%struct.snd_m3*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
