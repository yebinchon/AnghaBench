; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hgafb.c_hga_gfx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hgafb.c_hga_gfx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hga_reg_lock = common dso_local global i32 0, align 4
@HGA_STATUS_PORT = common dso_local global i32 0, align 4
@HGA_GFX_MODE_EN = common dso_local global i32 0, align 4
@HGA_GFX_PORT = common dso_local global i32 0, align 4
@HGA_MODE_VIDEO_EN = common dso_local global i32 0, align 4
@HGA_MODE_GRAPHICS = common dso_local global i32 0, align 4
@HGA_MODE_PORT = common dso_local global i32 0, align 4
@HGA_GFX = common dso_local global i32 0, align 4
@hga_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hga_gfx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hga_gfx_mode() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @hga_reg_lock, i64 %2)
  %4 = load i32, i32* @HGA_STATUS_PORT, align 4
  %5 = call i32 @outb_p(i32 0, i32 %4)
  %6 = load i32, i32* @HGA_GFX_MODE_EN, align 4
  %7 = load i32, i32* @HGA_GFX_PORT, align 4
  %8 = call i32 @outb_p(i32 %6, i32 %7)
  %9 = load i32, i32* @HGA_MODE_VIDEO_EN, align 4
  %10 = load i32, i32* @HGA_MODE_GRAPHICS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HGA_MODE_PORT, align 4
  %13 = call i32 @outb_p(i32 %11, i32 %12)
  %14 = call i32 @write_hga_b(i32 53, i32 0)
  %15 = call i32 @write_hga_b(i32 45, i32 1)
  %16 = call i32 @write_hga_b(i32 46, i32 2)
  %17 = call i32 @write_hga_b(i32 7, i32 3)
  %18 = call i32 @write_hga_b(i32 91, i32 4)
  %19 = call i32 @write_hga_b(i32 2, i32 5)
  %20 = call i32 @write_hga_b(i32 87, i32 6)
  %21 = call i32 @write_hga_b(i32 87, i32 7)
  %22 = call i32 @write_hga_b(i32 2, i32 8)
  %23 = call i32 @write_hga_b(i32 3, i32 9)
  %24 = call i32 @write_hga_b(i32 0, i32 10)
  %25 = call i32 @write_hga_b(i32 0, i32 11)
  %26 = call i32 @write_hga_w(i32 0, i32 12)
  %27 = call i32 @write_hga_w(i32 0, i32 14)
  %28 = load i32, i32* @HGA_GFX, align 4
  store i32 %28, i32* @hga_mode, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @hga_reg_lock, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @write_hga_b(i32, i32) #1

declare dso_local i32 @write_hga_w(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
