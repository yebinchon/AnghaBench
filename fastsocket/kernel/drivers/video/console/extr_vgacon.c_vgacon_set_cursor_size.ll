; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_set_cursor_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_set_cursor_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cursor_size_lastfrom = common dso_local global i32 0, align 4
@cursor_size_lastto = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_VGAC = common dso_local global i64 0, align 8
@VGA_CRTC_CURSOR_START = common dso_local global i32 0, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@VGA_CRTC_CURSOR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @vgacon_set_cursor_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgacon_set_cursor_size(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @cursor_size_lastfrom, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @cursor_size_lastto, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %61

18:                                               ; preds = %13, %3
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* @cursor_size_lastfrom, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* @cursor_size_lastto, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %21)
  %23 = load i64, i64* @vga_video_type, align 8
  %24 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %28 = load i32, i32* @vga_video_port_reg, align 4
  %29 = call i32 @outb_p(i32 %27, i32 %28)
  %30 = load i32, i32* @vga_video_port_val, align 4
  %31 = call i32 @inb_p(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %33 = load i32, i32* @vga_video_port_reg, align 4
  %34 = call i32 @outb_p(i32 %32, i32 %33)
  %35 = load i32, i32* @vga_video_port_val, align 4
  %36 = call i32 @inb_p(i32 %35)
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 192
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 224
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @VGA_CRTC_CURSOR_START, align 4
  %48 = load i32, i32* @vga_video_port_reg, align 4
  %49 = call i32 @outb_p(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @vga_video_port_val, align 4
  %52 = call i32 @outb_p(i32 %50, i32 %51)
  %53 = load i32, i32* @VGA_CRTC_CURSOR_END, align 4
  %54 = load i32, i32* @vga_video_port_reg, align 4
  %55 = call i32 @outb_p(i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @vga_video_port_val, align 4
  %58 = call i32 @outb_p(i32 %56, i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %59)
  br label %61

61:                                               ; preds = %38, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
