; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc5200_dma.c_psc_dma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.snd_card = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm = type { %struct.TYPE_22__*, %struct.TYPE_16__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_20__*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.psc_dma* }
%struct.psc_dma = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.psc_dma* }

@psc_dma_hardware = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [38 x i8] c"psc_dma_new(card=%p, dai=%p, pcm=%p)\0A\00", align 1
@psc_dma_dmamask = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot allocate buffer(s)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_soc_dai*, %struct.snd_pcm*)* @psc_dma_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psc_dma_new(%struct.snd_card* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.psc_dma*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %6, align 8
  store %struct.snd_pcm* %2, %struct.snd_pcm** %7, align 8
  %12 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %12, i32 0, i32 2
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.psc_dma*, %struct.psc_dma** %20, align 8
  store %struct.psc_dma* %21, %struct.psc_dma** %9, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @psc_dma_hardware, i32 0, i32 0), align 8
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %31 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.snd_card* %28, %struct.snd_soc_dai* %29, %struct.snd_pcm* %30)
  %32 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store i32* @psc_dma_dmamask, i32** %42, align 8
  br label %43

43:                                               ; preds = %38, %3
  %44 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %45 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %52 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  %56 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %57 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %55
  %64 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %66 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %72 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = call i32 @snd_dma_alloc_pages(i32 %64, i32 %69, i64 %70, i32* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %153

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %55
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = icmp ne %struct.TYPE_21__* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %93 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %94 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %100 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %99, i32 0, i32 0
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = call i32 @snd_dma_alloc_pages(i32 %92, i32 %97, i64 %98, i32* %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %135

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %83
  %112 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %113 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = icmp ne %struct.TYPE_17__* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %111
  %123 = load %struct.psc_dma*, %struct.psc_dma** %9, align 8
  %124 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %125 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %124, i32 0, i32 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  store %struct.psc_dma* %123, %struct.psc_dma** %133, align 8
  br label %134

134:                                              ; preds = %122, %111
  store i32 0, i32* %4, align 4
  br label %160

135:                                              ; preds = %109
  %136 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %137 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %136, i32 0, i32 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = icmp ne %struct.TYPE_21__* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %145 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %144, i32 0, i32 0
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = call i32 @snd_dma_free_pages(i32* %150)
  br label %152

152:                                              ; preds = %143, %135
  br label %153

153:                                              ; preds = %152, %81
  %154 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %155 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = call i32 @dev_err(%struct.TYPE_13__* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %153, %134
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.snd_card*, %struct.snd_soc_dai*, %struct.snd_pcm*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i64, i32*) #1

declare dso_local i32 @snd_dma_free_pages(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
