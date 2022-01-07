; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_aty_init_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_mach64_accel.c_aty_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atyfb_par = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@RESET_3D = common dso_local global i32 0, align 4
@MEM_VGA_WP_SEL = common dso_local global i32 0, align 4
@MEM_VGA_RP_SEL = common dso_local global i32 0, align 4
@CONTEXT_MASK = common dso_local global i32 0, align 4
@DST_OFF_PITCH = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT = common dso_local global i32 0, align 4
@DST_BRES_ERR = common dso_local global i32 0, align 4
@DST_BRES_INC = common dso_local global i32 0, align 4
@DST_BRES_DEC = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@SRC_OFF_PITCH = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@SRC_HEIGHT1_WIDTH1 = common dso_local global i32 0, align 4
@SRC_Y_X_START = common dso_local global i32 0, align 4
@SRC_HEIGHT2_WIDTH2 = common dso_local global i32 0, align 4
@SRC_CNTL = common dso_local global i32 0, align 4
@SRC_LINE_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@HOST_CNTL = common dso_local global i32 0, align 4
@PAT_REG0 = common dso_local global i32 0, align 4
@PAT_REG1 = common dso_local global i32 0, align 4
@PAT_CNTL = common dso_local global i32 0, align 4
@SC_LEFT = common dso_local global i32 0, align 4
@SC_TOP = common dso_local global i32 0, align 4
@SC_BOTTOM = common dso_local global i32 0, align 4
@SC_RIGHT = common dso_local global i32 0, align 4
@DP_BKGD_CLR = common dso_local global i32 0, align 4
@DP_FRGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MASK = common dso_local global i32 0, align 4
@DP_MIX = common dso_local global i32 0, align 4
@FRGD_MIX_S = common dso_local global i32 0, align 4
@BKGD_MIX_D = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@CLR_CMP_CLR = common dso_local global i32 0, align 4
@CLR_CMP_MASK = common dso_local global i32 0, align 4
@CLR_CMP_CNTL = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@DP_CHAIN_MASK = common dso_local global i32 0, align 4
@SCALE_3D_CNTL = common dso_local global i32 0, align 4
@Z_CNTL = common dso_local global i32 0, align 4
@CRTC_INT_CNTL = common dso_local global i32 0, align 4
@GUI_TRAJ_CNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aty_init_engine(%struct.atyfb_par* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.atyfb_par*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atyfb_par* %0, %struct.atyfb_par** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 8
  %16 = sdiv i32 %10, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 3
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @RESET_3D, align 4
  %33 = call i64 @M64_HAS(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %37 = call i32 @reset_GTC_3D_engine(%struct.atyfb_par* %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %40 = call i32 @aty_reset_engine(%struct.atyfb_par* %39)
  %41 = load i32, i32* @MEM_VGA_WP_SEL, align 4
  %42 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %43 = call i32 @aty_st_le32(i32 %41, i32 65536, %struct.atyfb_par* %42)
  %44 = load i32, i32* @MEM_VGA_RP_SEL, align 4
  %45 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %46 = call i32 @aty_st_le32(i32 %44, i32 65536, %struct.atyfb_par* %45)
  %47 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %48 = call i32 @wait_for_fifo(i32 14, %struct.atyfb_par* %47)
  %49 = load i32, i32* @CONTEXT_MASK, align 4
  %50 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %51 = call i32 @aty_st_le32(i32 %49, i32 -1, %struct.atyfb_par* %50)
  %52 = load i32, i32* @DST_OFF_PITCH, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 8
  %55 = shl i32 %54, 22
  %56 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %57 = call i32 @aty_st_le32(i32 %52, i32 %55, %struct.atyfb_par* %56)
  %58 = load i32, i32* @DST_Y_X, align 4
  %59 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %60 = call i32 @aty_st_le32(i32 %58, i32 0, %struct.atyfb_par* %59)
  %61 = load i32, i32* @DST_HEIGHT, align 4
  %62 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %63 = call i32 @aty_st_le32(i32 %61, i32 0, %struct.atyfb_par* %62)
  %64 = load i32, i32* @DST_BRES_ERR, align 4
  %65 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %66 = call i32 @aty_st_le32(i32 %64, i32 0, %struct.atyfb_par* %65)
  %67 = load i32, i32* @DST_BRES_INC, align 4
  %68 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %69 = call i32 @aty_st_le32(i32 %67, i32 0, %struct.atyfb_par* %68)
  %70 = load i32, i32* @DST_BRES_DEC, align 4
  %71 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %72 = call i32 @aty_st_le32(i32 %70, i32 0, %struct.atyfb_par* %71)
  %73 = load i32, i32* @DST_CNTL, align 4
  %74 = load i32, i32* @DST_LAST_PEL, align 4
  %75 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %80 = call i32 @aty_st_le32(i32 %73, i32 %78, %struct.atyfb_par* %79)
  %81 = load i32, i32* @SRC_OFF_PITCH, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sdiv i32 %82, 8
  %84 = shl i32 %83, 22
  %85 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %86 = call i32 @aty_st_le32(i32 %81, i32 %84, %struct.atyfb_par* %85)
  %87 = load i32, i32* @SRC_Y_X, align 4
  %88 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %89 = call i32 @aty_st_le32(i32 %87, i32 0, %struct.atyfb_par* %88)
  %90 = load i32, i32* @SRC_HEIGHT1_WIDTH1, align 4
  %91 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %92 = call i32 @aty_st_le32(i32 %90, i32 1, %struct.atyfb_par* %91)
  %93 = load i32, i32* @SRC_Y_X_START, align 4
  %94 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %95 = call i32 @aty_st_le32(i32 %93, i32 0, %struct.atyfb_par* %94)
  %96 = load i32, i32* @SRC_HEIGHT2_WIDTH2, align 4
  %97 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %98 = call i32 @aty_st_le32(i32 %96, i32 1, %struct.atyfb_par* %97)
  %99 = load i32, i32* @SRC_CNTL, align 4
  %100 = load i32, i32* @SRC_LINE_X_LEFT_TO_RIGHT, align 4
  %101 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %102 = call i32 @aty_st_le32(i32 %99, i32 %100, %struct.atyfb_par* %101)
  %103 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %104 = call i32 @wait_for_fifo(i32 13, %struct.atyfb_par* %103)
  %105 = load i32, i32* @HOST_CNTL, align 4
  %106 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %107 = call i32 @aty_st_le32(i32 %105, i32 0, %struct.atyfb_par* %106)
  %108 = load i32, i32* @PAT_REG0, align 4
  %109 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %110 = call i32 @aty_st_le32(i32 %108, i32 0, %struct.atyfb_par* %109)
  %111 = load i32, i32* @PAT_REG1, align 4
  %112 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %113 = call i32 @aty_st_le32(i32 %111, i32 0, %struct.atyfb_par* %112)
  %114 = load i32, i32* @PAT_CNTL, align 4
  %115 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %116 = call i32 @aty_st_le32(i32 %114, i32 0, %struct.atyfb_par* %115)
  %117 = load i32, i32* @SC_LEFT, align 4
  %118 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %119 = call i32 @aty_st_le32(i32 %117, i32 0, %struct.atyfb_par* %118)
  %120 = load i32, i32* @SC_TOP, align 4
  %121 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %122 = call i32 @aty_st_le32(i32 %120, i32 0, %struct.atyfb_par* %121)
  %123 = load i32, i32* @SC_BOTTOM, align 4
  %124 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %125 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %130 = call i32 @aty_st_le32(i32 %123, i32 %128, %struct.atyfb_par* %129)
  %131 = load i32, i32* @SC_RIGHT, align 4
  %132 = load i32, i32* %6, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %135 = call i32 @aty_st_le32(i32 %131, i32 %133, %struct.atyfb_par* %134)
  %136 = load i32, i32* @DP_BKGD_CLR, align 4
  %137 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %138 = call i32 @aty_st_le32(i32 %136, i32 0, %struct.atyfb_par* %137)
  %139 = load i32, i32* @DP_FRGD_CLR, align 4
  %140 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %141 = call i32 @aty_st_le32(i32 %139, i32 -1, %struct.atyfb_par* %140)
  %142 = load i32, i32* @DP_WRITE_MASK, align 4
  %143 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %144 = call i32 @aty_st_le32(i32 %142, i32 -1, %struct.atyfb_par* %143)
  %145 = load i32, i32* @DP_MIX, align 4
  %146 = load i32, i32* @FRGD_MIX_S, align 4
  %147 = load i32, i32* @BKGD_MIX_D, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %150 = call i32 @aty_st_le32(i32 %145, i32 %148, %struct.atyfb_par* %149)
  %151 = load i32, i32* @DP_SRC, align 4
  %152 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %153 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %154 = call i32 @aty_st_le32(i32 %151, i32 %152, %struct.atyfb_par* %153)
  %155 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %156 = call i32 @wait_for_fifo(i32 3, %struct.atyfb_par* %155)
  %157 = load i32, i32* @CLR_CMP_CLR, align 4
  %158 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %159 = call i32 @aty_st_le32(i32 %157, i32 0, %struct.atyfb_par* %158)
  %160 = load i32, i32* @CLR_CMP_MASK, align 4
  %161 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %162 = call i32 @aty_st_le32(i32 %160, i32 -1, %struct.atyfb_par* %161)
  %163 = load i32, i32* @CLR_CMP_CNTL, align 4
  %164 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %165 = call i32 @aty_st_le32(i32 %163, i32 0, %struct.atyfb_par* %164)
  %166 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %167 = call i32 @wait_for_fifo(i32 2, %struct.atyfb_par* %166)
  %168 = load i32, i32* @DP_PIX_WIDTH, align 4
  %169 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %170 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %174 = call i32 @aty_st_le32(i32 %168, i32 %172, %struct.atyfb_par* %173)
  %175 = load i32, i32* @DP_CHAIN_MASK, align 4
  %176 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %177 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %181 = call i32 @aty_st_le32(i32 %175, i32 %179, %struct.atyfb_par* %180)
  %182 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %183 = call i32 @wait_for_fifo(i32 5, %struct.atyfb_par* %182)
  %184 = load i32, i32* @SCALE_3D_CNTL, align 4
  %185 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %186 = call i32 @aty_st_le32(i32 %184, i32 0, %struct.atyfb_par* %185)
  %187 = load i32, i32* @Z_CNTL, align 4
  %188 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %189 = call i32 @aty_st_le32(i32 %187, i32 0, %struct.atyfb_par* %188)
  %190 = load i32, i32* @CRTC_INT_CNTL, align 4
  %191 = load i32, i32* @CRTC_INT_CNTL, align 4
  %192 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %193 = call i32 @aty_ld_le32(i32 %191, %struct.atyfb_par* %192)
  %194 = and i32 %193, -33
  %195 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %196 = call i32 @aty_st_le32(i32 %190, i32 %194, %struct.atyfb_par* %195)
  %197 = load i32, i32* @GUI_TRAJ_CNTL, align 4
  %198 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %199 = call i32 @aty_st_le32(i32 %197, i32 1048611, %struct.atyfb_par* %198)
  %200 = load %struct.atyfb_par*, %struct.atyfb_par** %3, align 8
  %201 = call i32 @wait_for_idle(%struct.atyfb_par* %200)
  ret void
}

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @reset_GTC_3D_engine(%struct.atyfb_par*) #1

declare dso_local i32 @aty_reset_engine(%struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

declare dso_local i32 @wait_for_idle(%struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
