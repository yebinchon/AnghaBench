; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_textmode_vga_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_set_textmode_vga_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VGA_SEQ_MEMORY_MODE = common dso_local global i32 0, align 4
@VGA_SR04_EXT_MEM = common dso_local global i32 0, align 4
@VGA_SEQ_PLANE_WRITE = common dso_local global i32 0, align 4
@VGA_CRTC_MAX_SCAN = common dso_local global i32 0, align 4
@VGA_CRTC_UNDERLINE = common dso_local global i32 0, align 4
@VGA_CRTC_MODE = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_START = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_END = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_HI = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_LO = common dso_local global i32 0, align 4
@VGA_GFX_MODE = common dso_local global i32 0, align 4
@VGA_GFX_MISC = common dso_local global i32 0, align 4
@VGA_GFX_COMPARE_MASK = common dso_local global i32 0, align 4
@VGA_ATT_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svga_set_textmode_vga_regs() #0 {
  %1 = load i32, i32* @VGA_SEQ_MEMORY_MODE, align 4
  %2 = load i32, i32* @VGA_SR04_EXT_MEM, align 4
  %3 = call i32 @vga_wseq(i32* null, i32 %1, i32 %2)
  %4 = load i32, i32* @VGA_SEQ_PLANE_WRITE, align 4
  %5 = call i32 @vga_wseq(i32* null, i32 %4, i32 3)
  %6 = load i32, i32* @VGA_CRTC_MAX_SCAN, align 4
  %7 = call i32 @vga_wcrt(i32* null, i32 %6, i32 15)
  %8 = load i32, i32* @VGA_CRTC_UNDERLINE, align 4
  %9 = call i32 @vga_wcrt(i32* null, i32 %8, i32 31)
  %10 = load i32, i32* @VGA_CRTC_MODE, align 4
  %11 = call i32 @svga_wcrt_mask(i32 %10, i32 35, i32 127)
  %12 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %13 = call i32 @vga_wcrt(i32* null, i32 %12, i32 13)
  %14 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %15 = call i32 @vga_wcrt(i32* null, i32 %14, i32 14)
  %16 = load i32, i32* @VGA_CRTC_CURSOR_HI, align 4
  %17 = call i32 @vga_wcrt(i32* null, i32 %16, i32 0)
  %18 = load i32, i32* @VGA_CRTC_CURSOR_LO, align 4
  %19 = call i32 @vga_wcrt(i32* null, i32 %18, i32 0)
  %20 = load i32, i32* @VGA_GFX_MODE, align 4
  %21 = call i32 @vga_wgfx(i32* null, i32 %20, i32 16)
  %22 = load i32, i32* @VGA_GFX_MISC, align 4
  %23 = call i32 @vga_wgfx(i32* null, i32 %22, i32 14)
  %24 = load i32, i32* @VGA_GFX_COMPARE_MASK, align 4
  %25 = call i32 @vga_wgfx(i32* null, i32 %24, i32 0)
  %26 = call i32 @vga_r(i32* null, i32 986)
  %27 = load i32, i32* @VGA_ATT_W, align 4
  %28 = call i32 @vga_w(i32* null, i32 %27, i32 0)
  %29 = call i32 @svga_wattr(i32 16, i32 12)
  %30 = call i32 @svga_wattr(i32 19, i32 8)
  %31 = call i32 @vga_r(i32* null, i32 986)
  %32 = load i32, i32* @VGA_ATT_W, align 4
  %33 = call i32 @vga_w(i32* null, i32 %32, i32 32)
  ret void
}

declare dso_local i32 @vga_wseq(i32*, i32, i32) #1

declare dso_local i32 @vga_wcrt(i32*, i32, i32) #1

declare dso_local i32 @svga_wcrt_mask(i32, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32*, i32, i32) #1

declare dso_local i32 @vga_r(i32*, i32) #1

declare dso_local i32 @vga_w(i32*, i32, i32) #1

declare dso_local i32 @svga_wattr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
