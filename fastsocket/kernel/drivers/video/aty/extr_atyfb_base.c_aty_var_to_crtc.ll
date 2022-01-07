; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_var_to_crtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_var_to_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atyfb_par = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CRTC_PIX_WIDTH_8BPP = common dso_local global i32 0, align 4
@HOST_8BPP = common dso_local global i32 0, align 4
@SRC_8BPP = common dso_local global i32 0, align 4
@DST_8BPP = common dso_local global i32 0, align 4
@BYTE_ORDER_LSB_TO_MSB = common dso_local global i32 0, align 4
@DP_CHAIN_8BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_15BPP = common dso_local global i32 0, align 4
@HOST_15BPP = common dso_local global i32 0, align 4
@SRC_15BPP = common dso_local global i32 0, align 4
@DST_15BPP = common dso_local global i32 0, align 4
@DP_CHAIN_15BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_16BPP = common dso_local global i32 0, align 4
@HOST_16BPP = common dso_local global i32 0, align 4
@SRC_16BPP = common dso_local global i32 0, align 4
@DST_16BPP = common dso_local global i32 0, align 4
@DP_CHAIN_16BPP = common dso_local global i32 0, align 4
@INTEGRATED = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_24BPP = common dso_local global i32 0, align 4
@DP_CHAIN_24BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_32BPP = common dso_local global i32 0, align 4
@HOST_32BPP = common dso_local global i32 0, align 4
@SRC_32BPP = common dso_local global i32 0, align 4
@DST_32BPP = common dso_local global i32 0, align 4
@DP_CHAIN_32BPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid bpp\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"not enough video RAM\00", align 1
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"MACH64 chips are designed for max 1600x1200\0Aselect anoter resolution.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"h_disp too large\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"h_sync_strt too large\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"h_total too large\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"v_disp too large\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"v_sync_stsrt too large\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"v_total too large\00", align 1
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@CRTC_CSYNC_EN = common dso_local global i32 0, align 4
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@CRTC_EN = common dso_local global i32 0, align 4
@CRTC_VGA_LINEAR = common dso_local global i32 0, align 4
@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@CRTC_INTERLACE_EN = common dso_local global i32 0, align 4
@MAGIC_FIFO = common dso_local global i32 0, align 4
@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@CRTC_FIFO_LWM = common dso_local global i32 0, align 4
@AUTO_HORZ_RATIO = common dso_local global i32 0, align 4
@AUTO_VERT_RATIO = common dso_local global i32 0, align 4
@CNFG_PANEL = common dso_local global i32 0, align 4
@CRTC2_DISPLAY_DIS = common dso_local global i32 0, align 4
@CRTC2_EN = common dso_local global i32 0, align 4
@CRTC2_PIX_WIDTH = common dso_local global i32 0, align 4
@CRTC_RW_SELECT = common dso_local global i32 0, align 4
@CRT_ON = common dso_local global i32 0, align 4
@DIS_HOR_CRT_DIVBY2 = common dso_local global i32 0, align 4
@DONT_SHADOW_VPAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT_VERT_STRETCH = common dso_local global i32 0, align 4
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@HORZ_DIVBY2_EN = common dso_local global i32 0, align 4
@HORZ_STRETCHING = common dso_local global i32 0, align 4
@HORZ_STRETCH_BLEND = common dso_local global i32 0, align 4
@HORZ_STRETCH_EN = common dso_local global i32 0, align 4
@HORZ_STRETCH_LOOP = common dso_local global i32 0, align 4
@HORZ_STRETCH_MODE = common dso_local global i32 0, align 4
@HORZ_STRETCH_RATIO = common dso_local global i32 0, align 4
@LCD_DISPLAY_DIS = common dso_local global i32 0, align 4
@LCD_GEN_CNTL = common dso_local global i32 0, align 4
@LCD_INDEX = common dso_local global i32 0, align 4
@LCD_INDEX_MASK = common dso_local global i32 0, align 4
@LCD_ON = common dso_local global i32 0, align 4
@LCD_SRC_SEL = common dso_local global i32 0, align 4
@LOCK_8DOT = common dso_local global i32 0, align 4
@LT_LCD_REGS = common dso_local global i32 0, align 4
@MOBIL_BUS = common dso_local global i32 0, align 4
@SHADOW_EN = common dso_local global i32 0, align 4
@SHADOW_RW_EN = common dso_local global i32 0, align 4
@TVCLK_PM_EN = common dso_local global i32 0, align 4
@USE_SHADOWED_ROWCUR = common dso_local global i32 0, align 4
@USE_SHADOWED_VEND = common dso_local global i32 0, align 4
@VERT_STRETCH_EN = common dso_local global i32 0, align 4
@VERT_STRETCH_MODE = common dso_local global i32 0, align 4
@VERT_STRETCH_RATIO0 = common dso_local global i32 0, align 4
@VERT_STRETCH_RATIO3 = common dso_local global i32 0, align 4
@VERT_STRETCH_USE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*, %struct.crtc*)* @aty_var_to_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_crtc(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1, %struct.crtc* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.crtc*, align 8
  %7 = alloca %struct.atyfb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store %struct.crtc* %2, %struct.crtc** %6, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.atyfb_par*
  store %struct.atyfb_par* %39, %struct.atyfb_par** %7, align 8
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 7
  %44 = and i32 %43, -8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 7
  %52 = and i32 %51, -8
  store i32 %52, i32* %10, align 4
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 7
  %60 = and i32 %59, -8
  store i32 %60, i32* %12, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 16
  br i1 %68, label %69, label %77

69:                                               ; preds = %3
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 16
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 5
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 15, i32 16
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %69, %3
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %85, %86
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %77
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sle i32 %106, 8
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  store i32 8, i32* %14, align 4
  %109 = load i32, i32* @CRTC_PIX_WIDTH_8BPP, align 4
  store i32 %109, i32* %32, align 4
  %110 = load i32, i32* @HOST_8BPP, align 4
  %111 = load i32, i32* @SRC_8BPP, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @DST_8BPP, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %33, align 4
  %117 = load i32, i32* @DP_CHAIN_8BPP, align 4
  store i32 %117, i32* %34, align 4
  br label %180

118:                                              ; preds = %104
  %119 = load i32, i32* %14, align 4
  %120 = icmp sle i32 %119, 15
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  store i32 16, i32* %14, align 4
  %122 = load i32, i32* @CRTC_PIX_WIDTH_15BPP, align 4
  store i32 %122, i32* %32, align 4
  %123 = load i32, i32* @HOST_15BPP, align 4
  %124 = load i32, i32* @SRC_15BPP, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @DST_15BPP, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %33, align 4
  %130 = load i32, i32* @DP_CHAIN_15BPP, align 4
  store i32 %130, i32* %34, align 4
  br label %179

131:                                              ; preds = %118
  %132 = load i32, i32* %14, align 4
  %133 = icmp sle i32 %132, 16
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  store i32 16, i32* %14, align 4
  %135 = load i32, i32* @CRTC_PIX_WIDTH_16BPP, align 4
  store i32 %135, i32* %32, align 4
  %136 = load i32, i32* @HOST_16BPP, align 4
  %137 = load i32, i32* @SRC_16BPP, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @DST_16BPP, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %33, align 4
  %143 = load i32, i32* @DP_CHAIN_16BPP, align 4
  store i32 %143, i32* %34, align 4
  br label %178

144:                                              ; preds = %131
  %145 = load i32, i32* %14, align 4
  %146 = icmp sle i32 %145, 24
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load i32, i32* @INTEGRATED, align 4
  %149 = call i64 @M64_HAS(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  store i32 24, i32* %14, align 4
  %152 = load i32, i32* @CRTC_PIX_WIDTH_24BPP, align 4
  store i32 %152, i32* %32, align 4
  %153 = load i32, i32* @HOST_8BPP, align 4
  %154 = load i32, i32* @SRC_8BPP, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DST_8BPP, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %33, align 4
  %160 = load i32, i32* @DP_CHAIN_24BPP, align 4
  store i32 %160, i32* %34, align 4
  br label %177

161:                                              ; preds = %147, %144
  %162 = load i32, i32* %14, align 4
  %163 = icmp sle i32 %162, 32
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  store i32 32, i32* %14, align 4
  %165 = load i32, i32* @CRTC_PIX_WIDTH_32BPP, align 4
  store i32 %165, i32* %32, align 4
  %166 = load i32, i32* @HOST_32BPP, align 4
  %167 = load i32, i32* @SRC_32BPP, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @DST_32BPP, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %33, align 4
  %173 = load i32, i32* @DP_CHAIN_32BPP, align 4
  store i32 %173, i32* %34, align 4
  br label %176

174:                                              ; preds = %161
  %175 = call i32 @FAIL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %164
  br label %177

177:                                              ; preds = %176, %151
  br label %178

178:                                              ; preds = %177, %134
  br label %179

179:                                              ; preds = %178, %121
  br label %180

180:                                              ; preds = %179, %108
  %181 = load %struct.atyfb_par*, %struct.atyfb_par** %7, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @calc_line_length(%struct.atyfb_par* %181, i32 %182, i32 %183)
  store i32 %184, i32* %35, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %35, align 4
  %187 = mul nsw i32 %185, %186
  %188 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %187, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %180
  %194 = call i32 @FAIL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %180
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 0, i32 1
  store i32 %201, i32* %24, align 4
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 0, i32 1
  store i32 %207, i32* %30, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp sgt i32 %208, 1600
  br i1 %209, label %213, label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %9, align 4
  %212 = icmp sgt i32 %211, 1200
  br i1 %212, label %213, label %215

213:                                              ; preds = %210, %195
  %214 = call i32 @FAIL(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %210
  %216 = load i32, i32* %19, align 4
  %217 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %218 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %221, %224
  store i32 %225, i32* %21, align 4
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 9
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, 7
  store i32 %229, i32* %22, align 4
  %230 = load i32, i32* %21, align 4
  %231 = load i32, i32* %22, align 4
  %232 = add nsw i32 %230, %231
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 11
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %26, align 4
  %238 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %237, %240
  store i32 %241, i32* %27, align 4
  %242 = load i32, i32* %27, align 4
  %243 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %244 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %243, i32 0, i32 13
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %242, %245
  store i32 %246, i32* %28, align 4
  %247 = load i32, i32* %28, align 4
  %248 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %249 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %248, i32 0, i32 14
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %247, %250
  store i32 %251, i32* %25, align 4
  %252 = load i32, i32* %19, align 4
  %253 = ashr i32 %252, 3
  %254 = sub nsw i32 %253, 1
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %20, align 4
  %256 = ashr i32 %255, 3
  %257 = sub nsw i32 %256, 1
  store i32 %257, i32* %20, align 4
  %258 = load i32, i32* %21, align 4
  %259 = ashr i32 %258, 3
  %260 = sub nsw i32 %259, 1
  store i32 %260, i32* %21, align 4
  %261 = load i32, i32* %18, align 4
  %262 = ashr i32 %261, 3
  %263 = sub nsw i32 %262, 1
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %20, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %23, align 4
  %267 = load i32, i32* %19, align 4
  %268 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %267, i32 255)
  %269 = load i32, i32* %20, align 4
  %270 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %269, i32 511)
  %271 = load i32, i32* %23, align 4
  %272 = icmp sgt i32 %271, 31
  br i1 %272, label %273, label %274

273:                                              ; preds = %215
  store i32 31, i32* %23, align 4
  br label %274

274:                                              ; preds = %273, %215
  %275 = load i32, i32* %18, align 4
  %276 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %275, i32 511)
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32, i32* %26, align 4
  %283 = shl i32 %282, 1
  store i32 %283, i32* %26, align 4
  %284 = load i32, i32* %27, align 4
  %285 = shl i32 %284, 1
  store i32 %285, i32* %27, align 4
  %286 = load i32, i32* %28, align 4
  %287 = shl i32 %286, 1
  store i32 %287, i32* %28, align 4
  %288 = load i32, i32* %25, align 4
  %289 = shl i32 %288, 1
  store i32 %289, i32* %25, align 4
  br label %290

290:                                              ; preds = %281, %274
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %26, align 4
  %294 = load i32, i32* %27, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %27, align 4
  %296 = load i32, i32* %28, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %28, align 4
  %298 = load i32, i32* %25, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %25, align 4
  %300 = load i32, i32* %28, align 4
  %301 = load i32, i32* %27, align 4
  %302 = sub nsw i32 %300, %301
  store i32 %302, i32* %29, align 4
  %303 = load i32, i32* %26, align 4
  %304 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %303, i32 2047)
  %305 = load i32, i32* %27, align 4
  %306 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %305, i32 2047)
  %307 = load i32, i32* %29, align 4
  %308 = icmp sgt i32 %307, 31
  br i1 %308, label %309, label %310

309:                                              ; preds = %290
  store i32 31, i32* %29, align 4
  br label %310

310:                                              ; preds = %309, %290
  %311 = load i32, i32* %25, align 4
  %312 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %311, i32 2047)
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %310
  %318 = load i32, i32* @CRTC_CSYNC_EN, align 4
  br label %320

319:                                              ; preds = %310
  br label %320

320:                                              ; preds = %319, %317
  %321 = phi i32 [ %318, %317 ], [ 0, %319 ]
  store i32 %321, i32* %31, align 4
  %322 = load i32, i32* %10, align 4
  %323 = load %struct.crtc*, %struct.crtc** %6, align 8
  %324 = getelementptr inbounds %struct.crtc, %struct.crtc* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %11, align 4
  %326 = load %struct.crtc*, %struct.crtc** %6, align 8
  %327 = getelementptr inbounds %struct.crtc, %struct.crtc* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.crtc*, %struct.crtc** %6, align 8
  %330 = getelementptr inbounds %struct.crtc, %struct.crtc* %329, i32 0, i32 5
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* %13, align 4
  %332 = load %struct.crtc*, %struct.crtc** %6, align 8
  %333 = getelementptr inbounds %struct.crtc, %struct.crtc* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* %14, align 4
  %335 = load %struct.crtc*, %struct.crtc** %6, align 8
  %336 = getelementptr inbounds %struct.crtc, %struct.crtc* %335, i32 0, i32 7
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %35, align 4
  %339 = mul nsw i32 %337, %338
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %14, align 4
  %342 = mul nsw i32 %340, %341
  %343 = sdiv i32 %342, 8
  %344 = add nsw i32 %339, %343
  %345 = sdiv i32 %344, 8
  %346 = load i32, i32* %35, align 4
  %347 = load i32, i32* %14, align 4
  %348 = sdiv i32 %346, %347
  %349 = shl i32 %348, 22
  %350 = or i32 %345, %349
  %351 = load %struct.crtc*, %struct.crtc** %6, align 8
  %352 = getelementptr inbounds %struct.crtc, %struct.crtc* %351, i32 0, i32 8
  store i32 %350, i32* %352, align 8
  %353 = load %struct.crtc*, %struct.crtc** %6, align 8
  %354 = getelementptr inbounds %struct.crtc, %struct.crtc* %353, i32 0, i32 23
  store i64 0, i64* %354, align 8
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %19, align 4
  %357 = shl i32 %356, 16
  %358 = or i32 %355, %357
  %359 = load %struct.crtc*, %struct.crtc** %6, align 8
  %360 = getelementptr inbounds %struct.crtc, %struct.crtc* %359, i32 0, i32 9
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %20, align 4
  %362 = and i32 %361, 255
  %363 = load i32, i32* %22, align 4
  %364 = shl i32 %363, 8
  %365 = or i32 %362, %364
  %366 = load i32, i32* %20, align 4
  %367 = and i32 %366, 256
  %368 = shl i32 %367, 4
  %369 = or i32 %365, %368
  %370 = load i32, i32* %23, align 4
  %371 = shl i32 %370, 16
  %372 = or i32 %369, %371
  %373 = load i32, i32* %24, align 4
  %374 = shl i32 %373, 21
  %375 = or i32 %372, %374
  %376 = load %struct.crtc*, %struct.crtc** %6, align 8
  %377 = getelementptr inbounds %struct.crtc, %struct.crtc* %376, i32 0, i32 10
  store i32 %375, i32* %377, align 8
  %378 = load i32, i32* %25, align 4
  %379 = load i32, i32* %26, align 4
  %380 = shl i32 %379, 16
  %381 = or i32 %378, %380
  %382 = load %struct.crtc*, %struct.crtc** %6, align 8
  %383 = getelementptr inbounds %struct.crtc, %struct.crtc* %382, i32 0, i32 11
  store i32 %381, i32* %383, align 4
  %384 = load i32, i32* %27, align 4
  %385 = load i32, i32* %29, align 4
  %386 = shl i32 %385, 16
  %387 = or i32 %384, %386
  %388 = load i32, i32* %30, align 4
  %389 = shl i32 %388, 21
  %390 = or i32 %387, %389
  %391 = load %struct.crtc*, %struct.crtc** %6, align 8
  %392 = getelementptr inbounds %struct.crtc, %struct.crtc* %391, i32 0, i32 12
  store i32 %390, i32* %392, align 8
  %393 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %394 = load i32, i32* @CRTC_EN, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* %32, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* %31, align 4
  %399 = or i32 %397, %398
  %400 = load %struct.crtc*, %struct.crtc** %6, align 8
  %401 = getelementptr inbounds %struct.crtc, %struct.crtc* %400, i32 0, i32 13
  store i32 %399, i32* %401, align 4
  %402 = load i32, i32* @CRTC_VGA_LINEAR, align 4
  %403 = load %struct.crtc*, %struct.crtc** %6, align 8
  %404 = getelementptr inbounds %struct.crtc, %struct.crtc* %403, i32 0, i32 13
  %405 = load i32, i32* %404, align 4
  %406 = or i32 %405, %402
  store i32 %406, i32* %404, align 4
  %407 = load i32, i32* %16, align 4
  %408 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %320
  %412 = load i32, i32* @CRTC_DBL_SCAN_EN, align 4
  %413 = load %struct.crtc*, %struct.crtc** %6, align 8
  %414 = getelementptr inbounds %struct.crtc, %struct.crtc* %413, i32 0, i32 13
  %415 = load i32, i32* %414, align 4
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %411, %320
  %418 = load i32, i32* %16, align 4
  %419 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %417
  %423 = load i32, i32* @CRTC_INTERLACE_EN, align 4
  %424 = load %struct.crtc*, %struct.crtc** %6, align 8
  %425 = getelementptr inbounds %struct.crtc, %struct.crtc* %424, i32 0, i32 13
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 4
  br label %428

428:                                              ; preds = %422, %417
  %429 = load i32, i32* @MAGIC_FIFO, align 4
  %430 = call i64 @M64_HAS(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %442

432:                                              ; preds = %428
  %433 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %434 = load %struct.atyfb_par*, %struct.atyfb_par** %7, align 8
  %435 = call i32 @aty_ld_le32(i32 %433, %struct.atyfb_par* %434)
  %436 = load i32, i32* @CRTC_FIFO_LWM, align 4
  %437 = and i32 %435, %436
  %438 = load %struct.crtc*, %struct.crtc** %6, align 8
  %439 = getelementptr inbounds %struct.crtc, %struct.crtc* %438, i32 0, i32 13
  %440 = load i32, i32* %439, align 4
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 4
  br label %442

442:                                              ; preds = %432, %428
  %443 = load i32, i32* %33, align 4
  %444 = load %struct.crtc*, %struct.crtc** %6, align 8
  %445 = getelementptr inbounds %struct.crtc, %struct.crtc* %444, i32 0, i32 21
  store i32 %443, i32* %445, align 4
  %446 = load i32, i32* %34, align 4
  %447 = load %struct.crtc*, %struct.crtc** %6, align 8
  %448 = getelementptr inbounds %struct.crtc, %struct.crtc* %447, i32 0, i32 22
  store i32 %446, i32* %448, align 8
  ret i32 0
}

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @FAIL(i8*) #1

declare dso_local i32 @calc_line_length(%struct.atyfb_par*, i32, i32) #1

declare dso_local i32 @FAIL_MAX(i8*, i32, i32) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
