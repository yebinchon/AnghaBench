; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_sound_free_dmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_sound_free_dmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buffparms = type { i32, i32, i32* }
%struct.page = type { i32 }

@DMA_MAP_MAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buffparms*)* @sound_free_dmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sound_free_dmap(%struct.dma_buffparms* %0) #0 {
  %2 = alloca %struct.dma_buffparms*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dma_buffparms* %0, %struct.dma_buffparms** %2, align 8
  %8 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %9 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %15 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DMA_MAP_MAPPED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %68

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %30, %21
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %26 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %37 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i64
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %42 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %40, %44
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call %struct.page* @virt_to_page(i64 %46)
  store %struct.page* %47, %struct.page** %5, align 8
  br label %48

48:                                               ; preds = %56, %35
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call %struct.page* @virt_to_page(i64 %50)
  %52 = icmp ule %struct.page* %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = call i32 @ClearPageReserved(%struct.page* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 1
  store %struct.page* %58, %struct.page** %5, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %61 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @free_pages(i64 %63, i32 %64)
  %66 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %67 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %59, %20, %12
  ret void
}

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @ClearPageReserved(%struct.page*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
