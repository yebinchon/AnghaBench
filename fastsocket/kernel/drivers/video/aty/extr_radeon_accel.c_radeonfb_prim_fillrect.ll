; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeonfb_prim_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeonfb_prim_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32, i32*, i32 }
%struct.fb_fillrect = type { i64, i32, i32, i32, i32 }

@DP_GUI_MASTER_CNTL = common dso_local global i32 0, align 4
@GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@ROP3_P = common dso_local global i32 0, align 4
@DST_8BPP = common dso_local global i64 0, align 8
@DP_BRUSH_FRGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MSK = common dso_local global i32 0, align 4
@DP_CNTL = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RB2D_DC_FLUSH_ALL = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_WIDTH_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.fb_fillrect*)* @radeonfb_prim_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeonfb_prim_fillrect(%struct.radeonfb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %5 = call i32 @radeon_fifo_wait(i32 4)
  %6 = load i32, i32* @DP_GUI_MASTER_CNTL, align 4
  %7 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GMC_BRUSH_SOLID_COLOR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ROP3_P, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @OUTREG(i32 %6, i32 %13)
  %15 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %16 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @radeon_get_dstbpp(i32 %17)
  %19 = load i64, i64* @DST_8BPP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @DP_BRUSH_FRGD_CLR, align 4
  %23 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %24 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %27 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @OUTREG(i32 %22, i32 %30)
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @DP_BRUSH_FRGD_CLR, align 4
  %34 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %35 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @OUTREG(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %21
  %40 = load i32, i32* @DP_WRITE_MSK, align 4
  %41 = call i32 @OUTREG(i32 %40, i32 -1)
  %42 = load i32, i32* @DP_CNTL, align 4
  %43 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %44 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @OUTREG(i32 %42, i32 %45)
  %47 = call i32 @radeon_fifo_wait(i32 2)
  %48 = load i32, i32* @DSTCACHE_CTLSTAT, align 4
  %49 = load i32, i32* @RB2D_DC_FLUSH_ALL, align 4
  %50 = call i32 @OUTREG(i32 %48, i32 %49)
  %51 = load i32, i32* @WAIT_UNTIL, align 4
  %52 = load i32, i32* @WAIT_2D_IDLECLEAN, align 4
  %53 = load i32, i32* @WAIT_DMA_GUI_IDLE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @OUTREG(i32 %51, i32 %54)
  %56 = call i32 @radeon_fifo_wait(i32 2)
  %57 = load i32, i32* @DST_Y_X, align 4
  %58 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 16
  %62 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = call i32 @OUTREG(i32 %57, i32 %65)
  %67 = load i32, i32* @DST_WIDTH_HEIGHT, align 4
  %68 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %69 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 16
  %72 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %73 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = call i32 @OUTREG(i32 %67, i32 %75)
  ret void
}

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i64 @radeon_get_dstbpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
