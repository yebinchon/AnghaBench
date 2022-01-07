; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_synth_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_synth_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i32*, i32*, i32 }
%struct.snd_emu10k1_memblk = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*)* @synth_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_alloc_pages(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_memblk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %5, align 8
  %10 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %11 = call i32 @emu10k1_memblk_init(%struct.snd_emu10k1_memblk* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %5, align 8
  %16 = call i32 @get_single_page_range(i32 %14, %struct.snd_emu10k1_memblk* %15, i32* %7, i32* %8)
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %85, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @GFP_DMA32, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_NOWARN, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.page* @alloc_page(i32 %27)
  store %struct.page* %28, %struct.page** %9, align 8
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = call i32 @page_to_pfn(%struct.page* %32)
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %33, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %31, %22
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i32 @__free_page(%struct.page* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = load i32, i32* @GFP_DMA, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @__GFP_NORETRY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @__GFP_NOWARN, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.page* @alloc_page(i32 %55)
  store %struct.page* %56, %struct.page** %9, align 8
  br label %57

57:                                               ; preds = %48, %31
  %58 = load %struct.page*, %struct.page** %9, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @__synth_free_pages(%struct.snd_emu10k1* %61, i32 %62, i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %57
  %69 = load %struct.page*, %struct.page** %9, align 8
  %70 = call i32 @page_to_phys(%struct.page* %69)
  %71 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %72 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = call i32 @page_address(%struct.page* %77)
  %79 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %18

88:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @emu10k1_memblk_init(%struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @get_single_page_range(i32, %struct.snd_emu10k1_memblk*, i32*, i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @__synth_free_pages(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
