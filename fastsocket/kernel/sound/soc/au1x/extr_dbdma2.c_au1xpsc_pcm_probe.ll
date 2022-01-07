; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1xpsc_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@au1xpsc_audio_pcmdma = common dso_local global %struct.TYPE_4__** null, align 8
@PCM_TX = common dso_local global i64 0, align 8
@PCM_RX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1xpsc_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_pcm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %7 = load i64, i64* @PCM_TX, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %6, i64 %7
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %13 = load i64, i64* @PCM_RX, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %12, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %102

20:                                               ; preds = %11
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %21)
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %24 = load i64, i64* @PCM_TX, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 %24
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %27 = load i64, i64* @PCM_TX, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %102

34:                                               ; preds = %20
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_DMA, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %4, align 8
  %38 = load %struct.resource*, %struct.resource** %4, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %92

43:                                               ; preds = %34
  %44 = load %struct.resource*, %struct.resource** %4, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %48 = load i64, i64* @PCM_TX, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %52)
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %55 = load i64, i64* @PCM_RX, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %55
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %58 = load i64, i64* @PCM_RX, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %102

65:                                               ; preds = %43
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_DMA, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 1)
  store %struct.resource* %68, %struct.resource** %4, align 8
  %69 = load %struct.resource*, %struct.resource** %4, align 8
  %70 = icmp ne %struct.resource* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %83

74:                                               ; preds = %65
  %75 = load %struct.resource*, %struct.resource** %4, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %79 = load i64, i64* @PCM_RX, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %102

83:                                               ; preds = %71
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %85 = load i64, i64* @PCM_RX, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = call i32 @kfree(%struct.TYPE_4__* %87)
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %90 = load i64, i64* @PCM_RX, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %90
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  br label %92

92:                                               ; preds = %83, %40
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %94 = load i64, i64* @PCM_TX, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_4__* %96)
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @au1xpsc_audio_pcmdma, align 8
  %99 = load i64, i64* @PCM_TX, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 %99
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %100, align 8
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %92, %74, %62, %31, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
