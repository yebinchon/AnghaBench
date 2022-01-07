; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, i32 }
%struct.list_head = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@LDSM2R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.list_head*)* @sh_mobile_lcdc_deferred_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_deferred_io(%struct.fb_info* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %8, align 8
  store %struct.sh_mobile_lcdc_chan* %9, %struct.sh_mobile_lcdc_chan** %5, align 8
  %10 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %11 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sh_mobile_lcdc_clk_on(i32 %12)
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = call i32 @sh_mobile_lcdc_sginit(%struct.fb_info* %14, %struct.list_head* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_map_sg(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %27 = load i32, i32* @LDSM2R, align 4
  %28 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %26, i32 %27, i32 1)
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_sg(i32 %31, i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @sh_mobile_lcdc_clk_on(i32) #1

declare dso_local i32 @sh_mobile_lcdc_sginit(%struct.fb_info*, %struct.list_head*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
