; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dma_control0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dma_control0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168fb_info = type { i32, i32, i64, i64 }

@LCD_SPU_DMA_CTRL0 = common dso_local global i64 0, align 8
@PIX_FMT_PSEUDOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168fb_info*)* @set_dma_control0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dma_control0(%struct.pxa168fb_info* %0) #0 {
  %2 = alloca %struct.pxa168fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa168fb_info* %0, %struct.pxa168fb_info** %2, align 8
  %4 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 256, i32 0
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PIX_FMT_PSEUDOCOLOR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, 268435456
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -983041
  store i32 %30, i32* %3, align 4
  %31 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 1
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, -4097
  store i32 %39, i32* %3, align 4
  %40 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 1
  %44 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %45 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %43, %46
  %48 = shl i32 %47, 12
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %2, align 8
  %53 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LCD_SPU_DMA_CTRL0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
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
