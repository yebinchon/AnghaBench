; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.inode = type { i32 }
%struct.file = type { %struct.audio* }

@the_amrnb_audio = common dso_local global %struct.audio zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"audio: busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMASZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"audio: could not allocate DMA buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"AUDPLAY0TASK\00", align 1
@audplay_adsp_ops_amrnb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"audio: failed to get audplay0 dsp module\0A\00", align 1
@BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @audamrnb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audamrnb_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.audio*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.audio* @the_amrnb_audio, %struct.audio** %5, align 8
  %7 = load %struct.audio*, %struct.audio** %5, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.audio*, %struct.audio** %5, align 8
  %11 = getelementptr inbounds %struct.audio, %struct.audio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %132

18:                                               ; preds = %2
  %19 = load %struct.audio*, %struct.audio** %5, align 8
  %20 = getelementptr inbounds %struct.audio, %struct.audio* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @DMASZ, align 4
  %25 = load %struct.audio*, %struct.audio** %5, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @dma_alloc_coherent(i32* null, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.audio*, %struct.audio** %5, align 8
  %30 = getelementptr inbounds %struct.audio, %struct.audio* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load %struct.audio*, %struct.audio** %5, align 8
  %32 = getelementptr inbounds %struct.audio, %struct.audio* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %23
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %132

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.audio*, %struct.audio** %5, align 8
  %42 = getelementptr inbounds %struct.audio, %struct.audio* %41, i32 0, i32 7
  %43 = call i32 @audmgr_open(i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %132

47:                                               ; preds = %40
  %48 = load %struct.audio*, %struct.audio** %5, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 8
  %50 = load %struct.audio*, %struct.audio** %5, align 8
  %51 = call i32 @msm_adsp_get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %49, i32* @audplay_adsp_ops_amrnb, %struct.audio* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.audio*, %struct.audio** %5, align 8
  %57 = getelementptr inbounds %struct.audio, %struct.audio* %56, i32 0, i32 7
  %58 = call i32 @audmgr_disable(i32* %57)
  %59 = load i32, i32* @DMASZ, align 4
  %60 = load %struct.audio*, %struct.audio** %5, align 8
  %61 = getelementptr inbounds %struct.audio, %struct.audio* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.audio*, %struct.audio** %5, align 8
  %64 = getelementptr inbounds %struct.audio, %struct.audio* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dma_free_coherent(i32* null, i32 %59, i32* %62, i32 %65)
  %67 = load %struct.audio*, %struct.audio** %5, align 8
  %68 = getelementptr inbounds %struct.audio, %struct.audio* %67, i32 0, i32 5
  store i32* null, i32** %68, align 8
  br label %132

69:                                               ; preds = %47
  %70 = load %struct.audio*, %struct.audio** %5, align 8
  %71 = getelementptr inbounds %struct.audio, %struct.audio* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.audio*, %struct.audio** %5, align 8
  %73 = getelementptr inbounds %struct.audio, %struct.audio* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.audio*, %struct.audio** %5, align 8
  %77 = getelementptr inbounds %struct.audio, %struct.audio* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32* %75, i32** %80, align 8
  %81 = load %struct.audio*, %struct.audio** %5, align 8
  %82 = getelementptr inbounds %struct.audio, %struct.audio* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 0
  %85 = load %struct.audio*, %struct.audio** %5, align 8
  %86 = getelementptr inbounds %struct.audio, %struct.audio* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load i32, i32* @BUFSZ, align 4
  %91 = load %struct.audio*, %struct.audio** %5, align 8
  %92 = getelementptr inbounds %struct.audio, %struct.audio* %91, i32 0, i32 4
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 4
  %96 = load %struct.audio*, %struct.audio** %5, align 8
  %97 = getelementptr inbounds %struct.audio, %struct.audio* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @BUFSZ, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.audio*, %struct.audio** %5, align 8
  %103 = getelementptr inbounds %struct.audio, %struct.audio* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32* %101, i32** %106, align 8
  %107 = load %struct.audio*, %struct.audio** %5, align 8
  %108 = getelementptr inbounds %struct.audio, %struct.audio* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BUFSZ, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.audio*, %struct.audio** %5, align 8
  %113 = getelementptr inbounds %struct.audio, %struct.audio* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  %117 = load i32, i32* @BUFSZ, align 4
  %118 = load %struct.audio*, %struct.audio** %5, align 8
  %119 = getelementptr inbounds %struct.audio, %struct.audio* %118, i32 0, i32 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.audio*, %struct.audio** %5, align 8
  %124 = getelementptr inbounds %struct.audio, %struct.audio* %123, i32 0, i32 2
  store i32 8192, i32* %124, align 8
  %125 = load %struct.audio*, %struct.audio** %5, align 8
  %126 = call i32 @audamrnb_flush(%struct.audio* %125)
  %127 = load %struct.audio*, %struct.audio** %5, align 8
  %128 = load %struct.file*, %struct.file** %4, align 8
  %129 = getelementptr inbounds %struct.file, %struct.file* %128, i32 0, i32 0
  store %struct.audio* %127, %struct.audio** %129, align 8
  %130 = load %struct.audio*, %struct.audio** %5, align 8
  %131 = getelementptr inbounds %struct.audio, %struct.audio* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %69, %54, %46, %35, %14
  %133 = load %struct.audio*, %struct.audio** %5, align 8
  %134 = getelementptr inbounds %struct.audio, %struct.audio* %133, i32 0, i32 3
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @audmgr_open(i32*) #1

declare dso_local i32 @msm_adsp_get(i8*, i32*, i32*, %struct.audio*) #1

declare dso_local i32 @audmgr_disable(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @audamrnb_flush(%struct.audio*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
