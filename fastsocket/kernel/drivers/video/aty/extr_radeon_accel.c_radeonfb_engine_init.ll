; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeonfb_engine_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_accel.c_radeonfb_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32, i32, i64, i32 }

@RB3D_CNTL = common dso_local global i32 0, align 4
@RB2D_DSTCACHE_MODE = common dso_local global i32 0, align 4
@RB2D_DC_AUTOFLUSH_ENABLE = common dso_local global i32 0, align 4
@RB2D_DC_DC_DISABLE_IGNORE_PE = common dso_local global i32 0, align 4
@MC_FB_LOCATION = common dso_local global i32 0, align 4
@DEFAULT_PITCH_OFFSET = common dso_local global i32 0, align 4
@DST_PITCH_OFFSET = common dso_local global i32 0, align 4
@SRC_PITCH_OFFSET = common dso_local global i32 0, align 4
@DP_DATATYPE = common dso_local global i32 0, align 4
@HOST_BIG_ENDIAN_EN = common dso_local global i32 0, align 4
@DEFAULT_SC_TOP_LEFT = common dso_local global i32 0, align 4
@DEFAULT_SC_BOTTOM_RIGHT = common dso_local global i32 0, align 4
@DEFAULT_SC_RIGHT_MAX = common dso_local global i32 0, align 4
@DEFAULT_SC_BOTTOM_MAX = common dso_local global i32 0, align 4
@GMC_CLR_CMP_CNTL_DIS = common dso_local global i64 0, align 8
@DP_GUI_MASTER_CNTL = common dso_local global i32 0, align 4
@GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@DST_LINE_START = common dso_local global i32 0, align 4
@DST_LINE_END = common dso_local global i32 0, align 4
@DP_BRUSH_FRGD_CLR = common dso_local global i32 0, align 4
@DP_BRUSH_BKGD_CLR = common dso_local global i32 0, align 4
@DP_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@DP_SRC_BKGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeonfb_engine_init(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca i64, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %4 = load i32, i32* @RB3D_CNTL, align 4
  %5 = call i32 @OUTREG(i32 %4, i32 0)
  %6 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %7 = call i32 @radeonfb_engine_reset(%struct.radeonfb_info* %6)
  %8 = call i32 @radeon_fifo_wait(i32 1)
  %9 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %10 = call i64 @IS_R300_VARIANT(%struct.radeonfb_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @RB2D_DSTCACHE_MODE, align 4
  %14 = load i32, i32* @RB2D_DSTCACHE_MODE, align 4
  %15 = call i32 @INREG(i32 %14)
  %16 = load i32, i32* @RB2D_DC_AUTOFLUSH_ENABLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RB2D_DC_DC_DISABLE_IGNORE_PE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @OUTREG(i32 %13, i32 %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @RB2D_DSTCACHE_MODE, align 4
  %23 = call i32 @OUTREG(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %21, %12
  %25 = call i32 @radeon_fifo_wait(i32 3)
  %26 = load i32, i32* @MC_FB_LOCATION, align 4
  %27 = call i32 @INREG(i32 %26)
  %28 = shl i32 %27, 16
  %29 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %30 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @DEFAULT_PITCH_OFFSET, align 4
  %32 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %33 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 22
  %36 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %37 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 10
  %40 = or i32 %35, %39
  %41 = call i32 @OUTREG(i32 %31, i32 %40)
  %42 = load i32, i32* @DST_PITCH_OFFSET, align 4
  %43 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %44 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 22
  %47 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %48 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 10
  %51 = or i32 %46, %50
  %52 = call i32 @OUTREG(i32 %42, i32 %51)
  %53 = load i32, i32* @SRC_PITCH_OFFSET, align 4
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %55 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 22
  %58 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %59 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 10
  %62 = or i32 %57, %61
  %63 = call i32 @OUTREG(i32 %53, i32 %62)
  %64 = call i32 @radeon_fifo_wait(i32 1)
  %65 = load i32, i32* @DP_DATATYPE, align 4
  %66 = load i32, i32* @HOST_BIG_ENDIAN_EN, align 4
  %67 = xor i32 %66, -1
  %68 = call i32 @OUTREGP(i32 %65, i32 0, i32 %67)
  %69 = call i32 @radeon_fifo_wait(i32 2)
  %70 = load i32, i32* @DEFAULT_SC_TOP_LEFT, align 4
  %71 = call i32 @OUTREG(i32 %70, i32 0)
  %72 = load i32, i32* @DEFAULT_SC_BOTTOM_RIGHT, align 4
  %73 = load i32, i32* @DEFAULT_SC_RIGHT_MAX, align 4
  %74 = load i32, i32* @DEFAULT_SC_BOTTOM_MAX, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @OUTREG(i32 %72, i32 %75)
  %77 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %78 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @radeon_get_dstbpp(i32 %79)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = shl i64 %81, 8
  %83 = load i64, i64* @GMC_CLR_CMP_CNTL_DIS, align 8
  %84 = or i64 %82, %83
  %85 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %86 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = call i32 @radeon_fifo_wait(i32 1)
  %88 = load i32, i32* @DP_GUI_MASTER_CNTL, align 4
  %89 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %90 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @GMC_BRUSH_SOLID_COLOR, align 4
  %93 = sext i32 %92 to i64
  %94 = or i64 %91, %93
  %95 = load i32, i32* @GMC_SRC_DATATYPE_COLOR, align 4
  %96 = sext i32 %95 to i64
  %97 = or i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @OUTREG(i32 %88, i32 %98)
  %100 = call i32 @radeon_fifo_wait(i32 7)
  %101 = load i32, i32* @DST_LINE_START, align 4
  %102 = call i32 @OUTREG(i32 %101, i32 0)
  %103 = load i32, i32* @DST_LINE_END, align 4
  %104 = call i32 @OUTREG(i32 %103, i32 0)
  %105 = load i32, i32* @DP_BRUSH_FRGD_CLR, align 4
  %106 = call i32 @OUTREG(i32 %105, i32 -1)
  %107 = load i32, i32* @DP_BRUSH_BKGD_CLR, align 4
  %108 = call i32 @OUTREG(i32 %107, i32 0)
  %109 = load i32, i32* @DP_SRC_FRGD_CLR, align 4
  %110 = call i32 @OUTREG(i32 %109, i32 -1)
  %111 = load i32, i32* @DP_SRC_BKGD_CLR, align 4
  %112 = call i32 @OUTREG(i32 %111, i32 0)
  %113 = load i32, i32* @DP_WRITE_MSK, align 4
  %114 = call i32 @OUTREG(i32 %113, i32 -1)
  %115 = call i32 (...) @radeon_engine_idle()
  ret void
}

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @radeonfb_engine_reset(%struct.radeonfb_info*) #1

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i64 @IS_R300_VARIANT(%struct.radeonfb_info*) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREGP(i32, i32, i32) #1

declare dso_local i64 @radeon_get_dstbpp(i32) #1

declare dso_local i32 @radeon_engine_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
