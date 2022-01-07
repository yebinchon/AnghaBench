; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vga_vesa_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vga_vesa_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.vgastate = type { i32 }

@vga_vesa_blanked = common dso_local global i32 0, align 4
@vga_lock = common dso_local global i32 0, align 4
@VGA_SEQ_I = common dso_local global i32 0, align 4
@vga_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@vga_video_port_reg = common dso_local global i32 0, align 4
@VGA_MIS_R = common dso_local global i32 0, align 4
@vga_video_port_val = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@VESA_VSYNC_SUSPEND = common dso_local global i32 0, align 4
@VESA_HSYNC_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vgastate*, i32)* @vga_vesa_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_vesa_blank(%struct.vgastate* %0, i32 %1) #0 {
  %3 = alloca %struct.vgastate*, align 8
  %4 = alloca i32, align 4
  store %struct.vgastate* %0, %struct.vgastate** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @vga_vesa_blanked, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %2
  %8 = call i32 @spin_lock_irq(i32* @vga_lock)
  %9 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %10 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VGA_SEQ_I, align 4
  %13 = call i8* @vga_r(i32 %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 0), align 8
  %15 = load i32, i32* @vga_video_port_reg, align 4
  %16 = call i8* @inb_p(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 1), align 4
  %18 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %19 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VGA_MIS_R, align 4
  %22 = call i8* @vga_r(i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 2), align 8
  %24 = call i32 @spin_unlock_irq(i32* @vga_lock)
  %25 = load i32, i32* @vga_video_port_reg, align 4
  %26 = call i32 @outb_p(i32 0, i32 %25)
  %27 = load i32, i32* @vga_video_port_val, align 4
  %28 = call i8* @inb_p(i32 %27)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 11), align 8
  %29 = load i32, i32* @vga_video_port_reg, align 4
  %30 = call i32 @outb_p(i32 1, i32 %29)
  %31 = load i32, i32* @vga_video_port_val, align 4
  %32 = call i8* @inb_p(i32 %31)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 10), align 8
  %33 = load i32, i32* @vga_video_port_reg, align 4
  %34 = call i32 @outb_p(i32 4, i32 %33)
  %35 = load i32, i32* @vga_video_port_val, align 4
  %36 = call i8* @inb_p(i32 %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 9), align 8
  %37 = load i32, i32* @vga_video_port_reg, align 4
  %38 = call i32 @outb_p(i32 5, i32 %37)
  %39 = load i32, i32* @vga_video_port_val, align 4
  %40 = call i8* @inb_p(i32 %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 8), align 8
  %41 = load i32, i32* @vga_video_port_reg, align 4
  %42 = call i32 @outb_p(i32 7, i32 %41)
  %43 = load i32, i32* @vga_video_port_val, align 4
  %44 = call i8* @inb_p(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 3), align 4
  %46 = load i32, i32* @vga_video_port_reg, align 4
  %47 = call i32 @outb_p(i32 16, i32 %46)
  %48 = load i32, i32* @vga_video_port_val, align 4
  %49 = call i8* @inb_p(i32 %48)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 7), align 8
  %50 = load i32, i32* @vga_video_port_reg, align 4
  %51 = call i32 @outb_p(i32 17, i32 %50)
  %52 = load i32, i32* @vga_video_port_val, align 4
  %53 = call i8* @inb_p(i32 %52)
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 6), align 8
  %54 = load i32, i32* @vga_video_port_reg, align 4
  %55 = call i32 @outb_p(i32 23, i32 %54)
  %56 = load i32, i32* @vga_video_port_val, align 4
  %57 = call i8* @inb_p(i32 %56)
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 5), align 8
  %58 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %59 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %62 = call i32 @vga_rseq(i32 %60, i32 %61)
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 4), align 8
  br label %63

63:                                               ; preds = %7, %2
  %64 = call i32 @spin_lock_irq(i32* @vga_lock)
  %65 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %66 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VGA_SEQ_CLOCK_MODE, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 4), align 8
  %70 = or i32 %69, 32
  %71 = call i32 @vga_wseq(i32 %67, i32 %68, i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 2), align 8
  %73 = and i32 %72, 128
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %83

75:                                               ; preds = %63
  %76 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %77 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @VGA_MIS_W, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 2), align 8
  %81 = and i32 %80, 239
  %82 = call i32 @vga_w(i32 %78, i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %75, %63
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @VESA_VSYNC_SUSPEND, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32, i32* @vga_video_port_reg, align 4
  %90 = call i32 @outb_p(i32 16, i32 %89)
  %91 = load i32, i32* @vga_video_port_val, align 4
  %92 = call i32 @outb_p(i32 255, i32 %91)
  %93 = load i32, i32* @vga_video_port_reg, align 4
  %94 = call i32 @outb_p(i32 17, i32 %93)
  %95 = load i32, i32* @vga_video_port_val, align 4
  %96 = call i32 @outb_p(i32 64, i32 %95)
  %97 = load i32, i32* @vga_video_port_reg, align 4
  %98 = call i32 @outb_p(i32 7, i32 %97)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 3), align 4
  %100 = or i32 %99, 132
  %101 = load i32, i32* @vga_video_port_val, align 4
  %102 = call i32 @outb_p(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %88, %83
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @VESA_HSYNC_SUSPEND, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @vga_video_port_reg, align 4
  %110 = call i32 @outb_p(i32 4, i32 %109)
  %111 = load i32, i32* @vga_video_port_val, align 4
  %112 = call i32 @outb_p(i32 255, i32 %111)
  %113 = load i32, i32* @vga_video_port_reg, align 4
  %114 = call i32 @outb_p(i32 5, i32 %113)
  %115 = load i32, i32* @vga_video_port_val, align 4
  %116 = call i32 @outb_p(i32 0, i32 %115)
  br label %117

117:                                              ; preds = %108, %103
  %118 = load %struct.vgastate*, %struct.vgastate** %3, align 8
  %119 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @VGA_SEQ_I, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 0), align 8
  %123 = call i32 @vga_w(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vga_state, i32 0, i32 1), align 4
  %125 = load i32, i32* @vga_video_port_reg, align 4
  %126 = call i32 @outb_p(i32 %124, i32 %125)
  %127 = call i32 @spin_unlock_irq(i32* @vga_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @vga_r(i32, i32) #1

declare dso_local i8* @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @vga_rseq(i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i32, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
