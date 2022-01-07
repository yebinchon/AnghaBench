; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@vga_vesa_blanked = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@vga_palette_blanked = common dso_local global i32 0, align 4
@color_table = common dso_local global i32 0, align 4
@vga_is_gfx = common dso_local global i32 0, align 4
@vga_video_type = common dso_local global i32 0, align 4
@VIDEO_TYPE_VGAC = common dso_local global i32 0, align 4
@vga_vram_base = common dso_local global i64 0, align 8
@BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32)* @vgacon_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_blank(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %45 [
    i32 0, label %9
    i32 1, label %22
    i32 -1, label %22
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @vga_vesa_blanked, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @vga_vesa_unblank(i32* @state)
  store i32 0, i32* @vga_vesa_blanked, align 4
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @vga_palette_blanked, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %19 = load i32, i32* @color_table, align 4
  %20 = call i32 @vga_set_palette(%struct.vc_data* %18, i32 %19)
  store i32 0, i32* @vga_palette_blanked, align 4
  store i32 0, i32* %4, align 4
  br label %55

21:                                               ; preds = %14
  store i32 0, i32* @vga_is_gfx, align 4
  store i32 1, i32* %4, align 4
  br label %55

22:                                               ; preds = %3, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @vga_video_type, align 4
  %27 = load i32, i32* @VIDEO_TYPE_VGAC, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @vga_pal_blank(i32* @state)
  store i32 1, i32* @vga_palette_blanked, align 4
  store i32 0, i32* %4, align 4
  br label %55

31:                                               ; preds = %25, %22
  %32 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %33 = call i32 @vgacon_set_origin(%struct.vc_data* %32)
  %34 = load i64, i64* @vga_vram_base, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @BLANK, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @scr_memsetw(i8* %35, i32 %36, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* @vga_is_gfx, align 4
  br label %44

44:                                               ; preds = %43, %31
  store i32 1, i32* %4, align 4
  br label %55

45:                                               ; preds = %3
  %46 = load i32, i32* @vga_video_type, align 4
  %47 = load i32, i32* @VIDEO_TYPE_VGAC, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @vga_vesa_blank(i32* @state, i32 %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @vga_vesa_blanked, align 4
  br label %54

54:                                               ; preds = %49, %45
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %44, %29, %21, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @vga_vesa_unblank(i32*) #1

declare dso_local i32 @vga_set_palette(%struct.vc_data*, i32) #1

declare dso_local i32 @vga_pal_blank(i32*) #1

declare dso_local i32 @vgacon_set_origin(%struct.vc_data*) #1

declare dso_local i32 @scr_memsetw(i8*, i32, i32) #1

declare dso_local i32 @vga_vesa_blank(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
