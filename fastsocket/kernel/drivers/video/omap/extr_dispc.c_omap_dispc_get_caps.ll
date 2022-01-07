; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_get_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c_omap_dispc_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_caps = type { i32, i32 }

@OMAPFB_CAPS_PLANE_RELOCATE_MEM = common dso_local global i32 0, align 4
@OMAPFB_CAPS_PLANE_SCALE = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB565 = common dso_local global i32 0, align 4
@OMAPFB_COLOR_YUV422 = common dso_local global i32 0, align 4
@OMAPFB_COLOR_YUY422 = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_8BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_4BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_2BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_CLUT_1BPP = common dso_local global i32 0, align 4
@OMAPFB_COLOR_RGB444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.omapfb_caps*)* @omap_dispc_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dispc_get_caps(i32 %0, %struct.omapfb_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb_caps*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.omapfb_caps* %1, %struct.omapfb_caps** %4, align 8
  %5 = load i32, i32* @OMAPFB_CAPS_PLANE_RELOCATE_MEM, align 4
  %6 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %7 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @OMAPFB_CAPS_PLANE_SCALE, align 4
  %14 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %15 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @OMAPFB_COLOR_RGB565, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @OMAPFB_COLOR_YUV422, align 4
  %22 = shl i32 1, %21
  %23 = or i32 %20, %22
  %24 = load i32, i32* @OMAPFB_COLOR_YUY422, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %28 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %18
  %34 = load i32, i32* @OMAPFB_COLOR_CLUT_8BPP, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @OMAPFB_COLOR_CLUT_4BPP, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @OMAPFB_COLOR_CLUT_2BPP, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @OMAPFB_COLOR_CLUT_1BPP, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @OMAPFB_COLOR_RGB444, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load %struct.omapfb_caps*, %struct.omapfb_caps** %4, align 8
  %49 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %33, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
