; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audio_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.audio* }
%struct.audio = type { i32, i32, i32, i64, i32*, i32, %struct.TYPE_2__*, i32*, i32, i64, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"audio_release()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @audio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.audio*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.audio*, %struct.audio** %7, align 8
  store %struct.audio* %8, %struct.audio** %5, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.audio*, %struct.audio** %5, align 8
  %11 = getelementptr inbounds %struct.audio, %struct.audio* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.audio*, %struct.audio** %5, align 8
  %14 = call i32 @audio_disable(%struct.audio* %13)
  %15 = load %struct.audio*, %struct.audio** %5, align 8
  %16 = call i32 @audio_flush(%struct.audio* %15)
  %17 = load %struct.audio*, %struct.audio** %5, align 8
  %18 = call i32 @audio_flush_pcm_buf(%struct.audio* %17)
  %19 = load %struct.audio*, %struct.audio** %5, align 8
  %20 = getelementptr inbounds %struct.audio, %struct.audio* %19, i32 0, i32 11
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @msm_adsp_put(i32* %21)
  %23 = load %struct.audio*, %struct.audio** %5, align 8
  %24 = getelementptr inbounds %struct.audio, %struct.audio* %23, i32 0, i32 11
  store i32* null, i32** %24, align 8
  %25 = load %struct.audio*, %struct.audio** %5, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.audio*, %struct.audio** %5, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.audio*, %struct.audio** %5, align 8
  %30 = getelementptr inbounds %struct.audio, %struct.audio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.audio*, %struct.audio** %5, align 8
  %33 = getelementptr inbounds %struct.audio, %struct.audio* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.audio*, %struct.audio** %5, align 8
  %36 = getelementptr inbounds %struct.audio, %struct.audio* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dma_free_coherent(i32* null, i32 %31, i32* %34, i32 %37)
  %39 = load %struct.audio*, %struct.audio** %5, align 8
  %40 = getelementptr inbounds %struct.audio, %struct.audio* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load %struct.audio*, %struct.audio** %5, align 8
  %42 = getelementptr inbounds %struct.audio, %struct.audio* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %2
  %46 = load %struct.audio*, %struct.audio** %5, align 8
  %47 = getelementptr inbounds %struct.audio, %struct.audio* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.audio*, %struct.audio** %5, align 8
  %53 = getelementptr inbounds %struct.audio, %struct.audio* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load %struct.audio*, %struct.audio** %5, align 8
  %57 = getelementptr inbounds %struct.audio, %struct.audio* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.audio*, %struct.audio** %5, align 8
  %60 = getelementptr inbounds %struct.audio, %struct.audio* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dma_free_coherent(i32* null, i32 %55, i32* %58, i32 %61)
  %63 = load %struct.audio*, %struct.audio** %5, align 8
  %64 = getelementptr inbounds %struct.audio, %struct.audio* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %45, %2
  %66 = load %struct.audio*, %struct.audio** %5, align 8
  %67 = getelementptr inbounds %struct.audio, %struct.audio* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.audio*, %struct.audio** %5, align 8
  %69 = getelementptr inbounds %struct.audio, %struct.audio* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audio_disable(%struct.audio*) #1

declare dso_local i32 @audio_flush(%struct.audio*) #1

declare dso_local i32 @audio_flush_pcm_buf(%struct.audio*) #1

declare dso_local i32 @msm_adsp_put(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
