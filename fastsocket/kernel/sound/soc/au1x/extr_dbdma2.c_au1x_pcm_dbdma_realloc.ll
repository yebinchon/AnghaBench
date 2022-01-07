; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_dbdma_realloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_dbdma2.c_au1x_pcm_dbdma_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_dmadata = type { i32, i8*, i32 }

@PCM_RX = common dso_local global i32 0, align 4
@DSCR_CMD0_ALWAYS = common dso_local global i32 0, align 4
@au1x_pcm_dmarx_cb = common dso_local global i32 0, align 4
@au1x_pcm_dmatx_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1xpsc_audio_dmadata*, i32, i32)* @au1x_pcm_dbdma_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x_pcm_dbdma_realloc(%struct.au1xpsc_audio_dmadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1xpsc_audio_dmadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.au1xpsc_audio_dmadata* %0, %struct.au1xpsc_audio_dmadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 24
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 32, i32* %7, align 4
  br label %11

11:                                               ; preds = %10, %3
  %12 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %13 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %19 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %80

23:                                               ; preds = %16, %11
  %24 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %25 = call i32 @au1x_pcm_dbdma_free(%struct.au1xpsc_audio_dmadata* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCM_RX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %31 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DSCR_CMD0_ALWAYS, align 4
  %34 = load i32, i32* @au1x_pcm_dmarx_cb, align 4
  %35 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %36 = bitcast %struct.au1xpsc_audio_dmadata* %35 to i8*
  %37 = call i8* @au1xxx_dbdma_chan_alloc(i32 %32, i32 %33, i32 %34, i8* %36)
  %38 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %39 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %51

40:                                               ; preds = %23
  %41 = load i32, i32* @DSCR_CMD0_ALWAYS, align 4
  %42 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %43 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @au1x_pcm_dmatx_cb, align 4
  %46 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %47 = bitcast %struct.au1xpsc_audio_dmadata* %46 to i8*
  %48 = call i8* @au1xxx_dbdma_chan_alloc(i32 %41, i32 %44, i32 %45, i8* %47)
  %49 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %50 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %40, %29
  %52 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %53 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %81

59:                                               ; preds = %51
  %60 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %61 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @au1xxx_dbdma_set_devwidth(i8* %62, i32 %63)
  %65 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %66 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @au1xxx_dbdma_ring_alloc(i8* %67, i32 2)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %71 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %73 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @au1xxx_dbdma_stop(i8* %74)
  %76 = load %struct.au1xpsc_audio_dmadata*, %struct.au1xpsc_audio_dmadata** %5, align 8
  %77 = getelementptr inbounds %struct.au1xpsc_audio_dmadata, %struct.au1xpsc_audio_dmadata* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @au1xxx_dbdma_reset(i8* %78)
  br label %80

80:                                               ; preds = %59, %22
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %56
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @au1x_pcm_dbdma_free(%struct.au1xpsc_audio_dmadata*) #1

declare dso_local i8* @au1xxx_dbdma_chan_alloc(i32, i32, i32, i8*) #1

declare dso_local i32 @au1xxx_dbdma_set_devwidth(i8*, i32) #1

declare dso_local i32 @au1xxx_dbdma_ring_alloc(i8*, i32) #1

declare dso_local i32 @au1xxx_dbdma_stop(i8*) #1

declare dso_local i32 @au1xxx_dbdma_reset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
