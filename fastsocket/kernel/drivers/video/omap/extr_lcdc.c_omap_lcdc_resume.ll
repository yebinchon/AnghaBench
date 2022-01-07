; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_omap_lcdc_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_omap_lcdc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@lcdc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OMAPFB_AUTO_UPDATE = common dso_local global i64 0, align 8
@OMAP_LCDC_LOAD_FRAME = common dso_local global i32 0, align 4
@OMAP_LCDC_IRQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @omap_lcdc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_lcdc_resume() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lcdc, i32 0, i32 0), align 8
  %2 = load i64, i64* @OMAPFB_AUTO_UPDATE, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = call i32 (...) @setup_regs()
  %6 = call i32 (...) @load_palette()
  %7 = call i32 (...) @setup_lcd_dma()
  %8 = load i32, i32* @OMAP_LCDC_LOAD_FRAME, align 4
  %9 = call i32 @set_load_mode(i32 %8)
  %10 = load i32, i32* @OMAP_LCDC_IRQ_DONE, align 4
  %11 = call i32 @enable_irqs(i32 %10)
  %12 = call i32 (...) @enable_controller()
  br label %13

13:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @setup_regs(...) #1

declare dso_local i32 @load_palette(...) #1

declare dso_local i32 @setup_lcd_dma(...) #1

declare dso_local i32 @set_load_mode(i32) #1

declare dso_local i32 @enable_irqs(i32) #1

declare dso_local i32 @enable_controller(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
