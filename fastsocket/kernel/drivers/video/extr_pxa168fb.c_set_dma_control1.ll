; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dma_control1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dma_control1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168fb_info = type { i64 }

@LCD_SPU_DMA_CTRL1 = common dso_local global i64 0, align 8
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168fb_info*, i32)* @set_dma_control1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dma_control1(%struct.pxa168fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pxa168fb_info* %0, %struct.pxa168fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LCD_SPU_DMA_CTRL1, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 540213121
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, 134217728
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LCD_SPU_DMA_CTRL1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
