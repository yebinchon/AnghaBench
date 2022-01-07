; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_setup_lcd_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_lcdc.c_setup_lcd_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_plane_struct = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@setup_lcd_dma.dma_elem_type = internal constant [5 x i32] [i32 0, i32 128, i32 130, i32 0, i32 129], align 16
@lcdc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@OMAPFB_COLOR_YUV420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_lcd_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_lcd_dma() #0 {
  %1 = alloca %struct.omapfb_plane_struct*, align 8
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 7), align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %13, align 8
  store %struct.omapfb_plane_struct* %14, %struct.omapfb_plane_struct** %1, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 7), align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.fb_var_screeninfo* %20, %struct.fb_var_screeninfo** %2, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 1), align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %3, align 8
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %66 [
    i32 0, label %27
    i32 90, label %55
    i32 180, label %55
    i32 270, label %55
  ]

27:                                               ; preds = %0
  %28 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %1, align 8
  %29 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = and i64 %34, 3
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 2), align 8
  %39 = load i64, i64* @OMAPFB_COLOR_YUV420, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 3), align 8
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33, %27
  store i32 2, i32* %4, align 4
  br label %47

46:                                               ; preds = %41
  store i32 4, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 3), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 4), align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 8
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 5), align 8
  store i32 %54, i32* %6, align 4
  br label %68

55:                                               ; preds = %0, %0, %0
  %56 = call i64 (...) @cpu_is_omap15xx()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @BUG()
  br label %60

60:                                               ; preds = %58, %55
  store i32 2, i32* %4, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 5), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 4), align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 16
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 3), align 8
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %0
  %67 = call i32 (...) @BUG()
  br label %104

68:                                               ; preds = %60, %47
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* @setup_lcd_dma.dma_elem_type, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @omap_set_lcd_dma_b1(i64 %69, i32 %70, i32 %71, i32 %75)
  %77 = call i64 (...) @cpu_is_omap15xx()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 4), align 4
  store i32 %80, i32* %7, align 4
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 2), align 8
  %82 = load i64, i64* @OMAPFB_COLOR_YUV420, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 16, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lcdc, i32 0, i32 6), align 4
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sdiv i32 %88, 8
  %90 = load i32, i32* %4, align 4
  %91 = sdiv i32 %89, %90
  %92 = call i32 @omap_set_lcd_dma_b1_vxres(i32 %91)
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @omap_set_lcd_dma_b1_rotation(i32 %95)
  %97 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %1, align 8
  %98 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @omap_set_lcd_dma_b1_mirror(i32 %100)
  br label %102

102:                                              ; preds = %85, %68
  %103 = call i32 (...) @omap_setup_lcd_dma()
  br label %104

104:                                              ; preds = %102, %66
  ret void
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @omap_set_lcd_dma_b1(i64, i32, i32, i32) #1

declare dso_local i32 @omap_set_lcd_dma_b1_vxres(i32) #1

declare dso_local i32 @omap_set_lcd_dma_b1_rotation(i32) #1

declare dso_local i32 @omap_set_lcd_dma_b1_mirror(i32) #1

declare dso_local i32 @omap_setup_lcd_dma(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
