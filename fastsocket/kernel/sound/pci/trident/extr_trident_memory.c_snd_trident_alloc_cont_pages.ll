; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_cont_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_cont_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32 }
%struct.snd_trident = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_util_memhdr* }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64 }

@SNDRV_TRIDENT_MAX_PAGES = common dso_local global i64 0, align 8
@SNDRV_TRIDENT_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_util_memblk* (%struct.snd_trident*, %struct.snd_pcm_substream*)* @snd_trident_alloc_cont_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_util_memblk* @snd_trident_alloc_cont_pages(%struct.snd_trident* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_util_memblk*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_util_memhdr*, align 8
  %7 = alloca %struct.snd_util_memblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %9, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ule i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_TRIDENT_MAX_PAGES, align 8
  %24 = load i64, i64* @SNDRV_TRIDENT_PAGE_SIZE, align 8
  %25 = mul i64 %23, %24
  %26 = icmp ugt i64 %22, %25
  br label %27

27:                                               ; preds = %19, %2
  %28 = phi i1 [ true, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @snd_BUG_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %105

33:                                               ; preds = %27
  %34 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %35 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %36, align 8
  store %struct.snd_util_memhdr* %37, %struct.snd_util_memhdr** %6, align 8
  %38 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %39 = icmp ne %struct.snd_util_memhdr* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @snd_BUG_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %105

45:                                               ; preds = %33
  %46 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %47 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call %struct.snd_util_memblk* @search_empty(%struct.snd_util_memhdr* %49, i64 %52)
  store %struct.snd_util_memblk* %53, %struct.snd_util_memblk** %7, align 8
  %54 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %55 = icmp eq %struct.snd_util_memblk* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %58 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %105

60:                                               ; preds = %45
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %68 = call i32 @firstpg(%struct.snd_util_memblk* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %91, %60
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %72 = call i32 @lastpg(%struct.snd_util_memblk* %71)
  %73 = icmp sle i32 %70, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @is_valid_page(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %80 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %81 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %79, %struct.snd_util_memblk* %80)
  %82 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %83 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %105

85:                                               ; preds = %74
  %86 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @set_tlb_bus(%struct.snd_trident* %86, i32 %87, i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = load i64, i64* @SNDRV_TRIDENT_PAGE_SIZE, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* @SNDRV_TRIDENT_PAGE_SIZE, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %69

100:                                              ; preds = %69
  %101 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %102 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  store %struct.snd_util_memblk* %104, %struct.snd_util_memblk** %3, align 8
  br label %105

105:                                              ; preds = %100, %78, %56, %44, %32
  %106 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %3, align 8
  ret %struct.snd_util_memblk* %106
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_util_memblk* @search_empty(%struct.snd_util_memhdr*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @firstpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @lastpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @is_valid_page(i64) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @set_tlb_bus(%struct.snd_trident*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
