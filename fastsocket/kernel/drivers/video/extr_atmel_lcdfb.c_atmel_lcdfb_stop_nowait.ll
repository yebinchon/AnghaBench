; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_stop_nowait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_stop_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { i32 }

@ATMEL_LCDC_PWRCON = common dso_local global i32 0, align 4
@ATMEL_LCDC_GUARDT_OFFSET = common dso_local global i32 0, align 4
@ATMEL_LCDC_BUSY = common dso_local global i32 0, align 4
@ATMEL_LCDC_DMACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_lcdfb_info*)* @atmel_lcdfb_stop_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_lcdfb_stop_nowait(%struct.atmel_lcdfb_info* %0) #0 {
  %2 = alloca %struct.atmel_lcdfb_info*, align 8
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %2, align 8
  %3 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %4 = load i32, i32* @ATMEL_LCDC_PWRCON, align 4
  %5 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATMEL_LCDC_GUARDT_OFFSET, align 4
  %9 = shl i32 %7, %8
  %10 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %3, i32 %4, i32 %9)
  br label %11

11:                                               ; preds = %18, %1
  %12 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %13 = load i32, i32* @ATMEL_LCDC_PWRCON, align 4
  %14 = call i32 @lcdc_readl(%struct.atmel_lcdfb_info* %12, i32 %13)
  %15 = load i32, i32* @ATMEL_LCDC_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @msleep(i32 10)
  br label %11

20:                                               ; preds = %11
  %21 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %22 = load i32, i32* @ATMEL_LCDC_DMACON, align 4
  %23 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

declare dso_local i32 @lcdc_readl(%struct.atmel_lcdfb_info*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
