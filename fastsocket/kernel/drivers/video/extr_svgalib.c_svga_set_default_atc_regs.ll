; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_default_atc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_default_atc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VGA_ATT_W = common dso_local global i32 0, align 4
@VGA_ATC_MODE = common dso_local global i32 0, align 4
@VGA_ATC_OVERSCAN = common dso_local global i32 0, align 4
@VGA_ATC_PLANE_ENABLE = common dso_local global i32 0, align 4
@VGA_ATC_PEL = common dso_local global i32 0, align 4
@VGA_ATC_COLOR_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_set_default_atc_regs() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @vga_r(i32* null, i32 986)
  %3 = load i32, i32* @VGA_ATT_W, align 4
  %4 = call i32 @vga_w(i32* null, i32 %3, i32 0)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp sle i32 %6, 15
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @svga_wattr(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %5

15:                                               ; preds = %5
  %16 = load i32, i32* @VGA_ATC_MODE, align 4
  %17 = call i32 @svga_wattr(i32 %16, i32 1)
  %18 = load i32, i32* @VGA_ATC_OVERSCAN, align 4
  %19 = call i32 @svga_wattr(i32 %18, i32 0)
  %20 = load i32, i32* @VGA_ATC_PLANE_ENABLE, align 4
  %21 = call i32 @svga_wattr(i32 %20, i32 15)
  %22 = load i32, i32* @VGA_ATC_PEL, align 4
  %23 = call i32 @svga_wattr(i32 %22, i32 0)
  %24 = load i32, i32* @VGA_ATC_COLOR_PAGE, align 4
  %25 = call i32 @svga_wattr(i32 %24, i32 0)
  %26 = call i32 @vga_r(i32* null, i32 986)
  %27 = load i32, i32* @VGA_ATT_W, align 4
  %28 = call i32 @vga_w(i32* null, i32 %27, i32 32)
  ret void
}

declare dso_local i32 @vga_r(i32*, i32) #1

declare dso_local i32 @vga_w(i32*, i32, i32) #1

declare dso_local i32 @svga_wattr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
