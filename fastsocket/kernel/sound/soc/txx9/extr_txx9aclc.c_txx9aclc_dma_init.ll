; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/txx9/extr_txx9aclc.c_txx9aclc_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9aclc_soc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.txx9aclc_dmadata = type { i64, i32, i32, i32, %struct.txx9dmac_slave }
%struct.txx9dmac_slave = type { i32, i64, i64 }
%struct.txx9aclc_plat_drvdata = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ACAUDODAT = common dso_local global i64 0, align 8
@ACAUDIDAT = common dso_local global i64 0, align 8
@DMA_SLAVE = common dso_local global i32 0, align 4
@filter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DMA channel for %s is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@txx9aclc_dma_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.txx9aclc_soc_device*, %struct.txx9aclc_dmadata*)* @txx9aclc_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9aclc_dma_init(%struct.txx9aclc_soc_device* %0, %struct.txx9aclc_dmadata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.txx9aclc_soc_device*, align 8
  %5 = alloca %struct.txx9aclc_dmadata*, align 8
  %6 = alloca %struct.txx9aclc_plat_drvdata*, align 8
  %7 = alloca %struct.txx9dmac_slave*, align 8
  %8 = alloca i32, align 4
  store %struct.txx9aclc_soc_device* %0, %struct.txx9aclc_soc_device** %4, align 8
  store %struct.txx9aclc_dmadata* %1, %struct.txx9aclc_dmadata** %5, align 8
  %9 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %4, align 8
  %10 = call %struct.txx9aclc_plat_drvdata* @txx9aclc_get_plat_drvdata(%struct.txx9aclc_soc_device* %9)
  store %struct.txx9aclc_plat_drvdata* %10, %struct.txx9aclc_plat_drvdata** %6, align 8
  %11 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %12 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %11, i32 0, i32 4
  store %struct.txx9dmac_slave* %12, %struct.txx9dmac_slave** %7, align 8
  %13 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %14 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %7, align 8
  %17 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %16, i32 0, i32 0
  store i32 4, i32* %17, align 8
  %18 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %19 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %6, align 8
  %25 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACAUDODAT, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %7, align 8
  %30 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %7, align 8
  %32 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %7, align 8
  %35 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.txx9aclc_plat_drvdata*, %struct.txx9aclc_plat_drvdata** %6, align 8
  %37 = getelementptr inbounds %struct.txx9aclc_plat_drvdata, %struct.txx9aclc_plat_drvdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACAUDIDAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %7, align 8
  %42 = getelementptr inbounds %struct.txx9dmac_slave, %struct.txx9dmac_slave* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dma_cap_zero(i32 %44)
  %46 = load i32, i32* @DMA_SLAVE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @dma_cap_set(i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @filter, align 4
  %51 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %52 = call i32 @dma_request_channel(i32 %49, i32 %50, %struct.txx9aclc_dmadata* %51)
  %53 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %54 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %56 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %43
  %60 = load %struct.txx9aclc_soc_device*, %struct.txx9aclc_soc_device** %4, align 8
  %61 = getelementptr inbounds %struct.txx9aclc_soc_device, %struct.txx9aclc_soc_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %65 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %43
  %75 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %76 = getelementptr inbounds %struct.txx9aclc_dmadata, %struct.txx9aclc_dmadata* %75, i32 0, i32 1
  %77 = load i32, i32* @txx9aclc_dma_tasklet, align 4
  %78 = load %struct.txx9aclc_dmadata*, %struct.txx9aclc_dmadata** %5, align 8
  %79 = ptrtoint %struct.txx9aclc_dmadata* %78 to i64
  %80 = call i32 @tasklet_init(i32* %76, i32 %77, i64 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %59
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.txx9aclc_plat_drvdata* @txx9aclc_get_plat_drvdata(%struct.txx9aclc_soc_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, %struct.txx9aclc_dmadata*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
