; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_doresize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_doresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@vga_lock = common dso_local global i32 0, align 4
@VGA_FONTWIDTH = common dso_local global i32 0, align 4
@vgacon_xres = common dso_local global i32 0, align 4
@vgacon_yres = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_VGAC = common dso_local global i64 0, align 8
@VGA_CRTC_MAX_SCAN = common dso_local global i32 0, align 4
@vga_video_port_reg = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@VGA_CRTC_MODE = common dso_local global i32 0, align 4
@VGA_CRTC_OVERFLOW = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_H_DISP = common dso_local global i32 0, align 4
@VGA_CRTC_OFFSET = common dso_local global i32 0, align 4
@VGA_CRTC_V_DISP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32)* @vgacon_doresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_doresize(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %14, %18
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @vga_lock, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VGA_FONTWIDTH, align 4
  %24 = mul i32 %22, %23
  store i32 %24, i32* @vgacon_xres, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %25, %29
  store i32 %30, i32* @vgacon_yres, align 4
  %31 = load i64, i64* @vga_video_type, align 8
  %32 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %3
  %35 = load i32, i32* @VGA_CRTC_MAX_SCAN, align 4
  %36 = load i32, i32* @vga_video_port_reg, align 4
  %37 = call i32 @outb_p(i32 %35, i32 %36)
  %38 = load i32, i32* @vga_video_port_val, align 4
  %39 = call i32 @inb_p(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load i32, i32* @VGA_CRTC_MODE, align 4
  %48 = load i32, i32* @vga_video_port_reg, align 4
  %49 = call i32 @outb_p(i32 %47, i32 %48)
  %50 = load i32, i32* @vga_video_port_val, align 4
  %51 = call i32 @inb_p(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = lshr i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @VGA_CRTC_OVERFLOW, align 4
  %64 = load i32, i32* @vga_video_port_reg, align 4
  %65 = call i32 @outb_p(i32 %63, i32 %64)
  %66 = load i32, i32* @vga_video_port_val, align 4
  %67 = call i32 @inb_p(i32 %66)
  %68 = and i32 %67, -67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 256
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 512
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, 64
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %84 = load i32, i32* @vga_video_port_reg, align 4
  %85 = call i32 @outb_p(i32 %83, i32 %84)
  %86 = load i32, i32* @vga_video_port_val, align 4
  %87 = call i32 @inb_p(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %89 = load i32, i32* @vga_video_port_reg, align 4
  %90 = call i32 @outb_p(i32 %88, i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, -129
  %93 = load i32, i32* @vga_video_port_val, align 4
  %94 = call i32 @outb_p(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %82, %3
  %96 = load i32, i32* @VGA_CRTC_H_DISP, align 4
  %97 = load i32, i32* @vga_video_port_reg, align 4
  %98 = call i32 @outb_p(i32 %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = sub i32 %99, 1
  %101 = load i32, i32* @vga_video_port_val, align 4
  %102 = call i32 @outb_p(i32 %100, i32 %101)
  %103 = load i32, i32* @VGA_CRTC_OFFSET, align 4
  %104 = load i32, i32* @vga_video_port_reg, align 4
  %105 = call i32 @outb_p(i32 %103, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = lshr i32 %106, 1
  %108 = load i32, i32* @vga_video_port_val, align 4
  %109 = call i32 @outb_p(i32 %107, i32 %108)
  %110 = load i64, i64* @vga_video_type, align 8
  %111 = load i64, i64* @VIDEO_TYPE_VGAC, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %95
  %114 = load i32, i32* @VGA_CRTC_V_DISP_END, align 4
  %115 = load i32, i32* @vga_video_port_reg, align 4
  %116 = call i32 @outb_p(i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @vga_video_port_val, align 4
  %119 = call i32 @outb_p(i32 %117, i32 %118)
  %120 = load i32, i32* @VGA_CRTC_OVERFLOW, align 4
  %121 = load i32, i32* @vga_video_port_reg, align 4
  %122 = call i32 @outb_p(i32 %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @vga_video_port_val, align 4
  %125 = call i32 @outb_p(i32 %123, i32 %124)
  %126 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %127 = load i32, i32* @vga_video_port_reg, align 4
  %128 = call i32 @outb_p(i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @vga_video_port_val, align 4
  %131 = call i32 @outb_p(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %113, %95
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* @vga_lock, i64 %133)
  ret i32 0
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
