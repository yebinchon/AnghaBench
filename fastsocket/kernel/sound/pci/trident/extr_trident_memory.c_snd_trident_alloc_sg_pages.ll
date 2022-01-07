; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_sg_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_snd_trident_alloc_sg_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32 }
%struct.snd_trident = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_util_memhdr* }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@SNDRV_TRIDENT_MAX_PAGES = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_util_memblk* (%struct.snd_trident*, %struct.snd_pcm_substream*)* @snd_trident_alloc_sg_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_util_memblk* @snd_trident_alloc_sg_pages(%struct.snd_trident* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_util_memblk*, align 8
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_util_memhdr*, align 8
  %7 = alloca %struct.snd_util_memblk*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %8, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SNDRV_TRIDENT_MAX_PAGES, align 4
  %26 = load i32, i32* @SNDRV_TRIDENT_PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = icmp sgt i32 %24, %27
  br label %29

29:                                               ; preds = %21, %2
  %30 = phi i1 [ true, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @snd_BUG_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %107

35:                                               ; preds = %29
  %36 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %37 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %38, align 8
  store %struct.snd_util_memhdr* %39, %struct.snd_util_memhdr** %6, align 8
  %40 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %41 = icmp ne %struct.snd_util_memhdr* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @snd_BUG_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %107

47:                                               ; preds = %35
  %48 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %49 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.snd_util_memblk* @search_empty(%struct.snd_util_memhdr* %51, i32 %54)
  store %struct.snd_util_memblk* %55, %struct.snd_util_memblk** %7, align 8
  %56 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %57 = icmp eq %struct.snd_util_memblk* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %60 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %107

62:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  %63 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %64 = call i32 @firstpg(%struct.snd_util_memblk* %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %97, %62
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %68 = call i32 @lastpg(%struct.snd_util_memblk* %67)
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %11, align 8
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %75, i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @snd_pcm_sgbuf_get_ptr(%struct.snd_pcm_substream* %78, i64 %79)
  store i64 %80, i64* %13, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @is_valid_page(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %70
  %85 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %86 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  %87 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %85, %struct.snd_util_memblk* %86)
  %88 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %89 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %107

91:                                               ; preds = %70
  %92 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @set_tlb_bus(%struct.snd_trident* %92, i32 %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %65

102:                                              ; preds = %65
  %103 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %6, align 8
  %104 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %7, align 8
  store %struct.snd_util_memblk* %106, %struct.snd_util_memblk** %3, align 8
  br label %107

107:                                              ; preds = %102, %84, %58, %46, %34
  %108 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %3, align 8
  ret %struct.snd_util_memblk* %108
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_util_memblk* @search_empty(%struct.snd_util_memhdr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @firstpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @lastpg(%struct.snd_util_memblk*) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i64) #1

declare dso_local i64 @snd_pcm_sgbuf_get_ptr(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @is_valid_page(i32) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

declare dso_local i32 @set_tlb_bus(%struct.snd_trident*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
