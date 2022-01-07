; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.audio* }
%struct.audio = type { i32, i32, i64, i32*, i32, %struct.TYPE_2__*, i32*, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"audevrc_release()\0A\00", align 1
@DMASZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @audevrc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audevrc_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.audio*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.audio*, %struct.audio** %7, align 8
  store %struct.audio* %8, %struct.audio** %5, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.audio*, %struct.audio** %5, align 8
  %11 = getelementptr inbounds %struct.audio, %struct.audio* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.audio*, %struct.audio** %5, align 8
  %14 = call i32 @audevrc_disable(%struct.audio* %13)
  %15 = load %struct.audio*, %struct.audio** %5, align 8
  %16 = call i32 @audevrc_flush(%struct.audio* %15)
  %17 = load %struct.audio*, %struct.audio** %5, align 8
  %18 = call i32 @audevrc_flush_pcm_buf(%struct.audio* %17)
  %19 = load %struct.audio*, %struct.audio** %5, align 8
  %20 = getelementptr inbounds %struct.audio, %struct.audio* %19, i32 0, i32 9
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @msm_adsp_put(i32* %21)
  %23 = load %struct.audio*, %struct.audio** %5, align 8
  %24 = getelementptr inbounds %struct.audio, %struct.audio* %23, i32 0, i32 9
  store i32* null, i32** %24, align 8
  %25 = load %struct.audio*, %struct.audio** %5, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @DMASZ, align 4
  %28 = load %struct.audio*, %struct.audio** %5, align 8
  %29 = getelementptr inbounds %struct.audio, %struct.audio* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.audio*, %struct.audio** %5, align 8
  %32 = getelementptr inbounds %struct.audio, %struct.audio* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(i32* null, i32 %27, i32* %30, i32 %33)
  %35 = load %struct.audio*, %struct.audio** %5, align 8
  %36 = getelementptr inbounds %struct.audio, %struct.audio* %35, i32 0, i32 6
  store i32* null, i32** %36, align 8
  %37 = load %struct.audio*, %struct.audio** %5, align 8
  %38 = getelementptr inbounds %struct.audio, %struct.audio* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %2
  %42 = load %struct.audio*, %struct.audio** %5, align 8
  %43 = getelementptr inbounds %struct.audio, %struct.audio* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.audio*, %struct.audio** %5, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = load %struct.audio*, %struct.audio** %5, align 8
  %53 = getelementptr inbounds %struct.audio, %struct.audio* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.audio*, %struct.audio** %5, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* null, i32 %51, i32* %54, i32 %57)
  %59 = load %struct.audio*, %struct.audio** %5, align 8
  %60 = getelementptr inbounds %struct.audio, %struct.audio* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %41, %2
  %62 = load %struct.audio*, %struct.audio** %5, align 8
  %63 = getelementptr inbounds %struct.audio, %struct.audio* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.audio*, %struct.audio** %5, align 8
  %65 = getelementptr inbounds %struct.audio, %struct.audio* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audevrc_disable(%struct.audio*) #1

declare dso_local i32 @audevrc_flush(%struct.audio*) #1

declare dso_local i32 @audevrc_flush_pcm_buf(%struct.audio*) #1

declare dso_local i32 @msm_adsp_put(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
