; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_mode_to_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_mode_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.intelfb_hwstate = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PIPE_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"intelfbhw_mode_to_hw\0A\00", align 1
@VGA_DISABLE = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@ADPA_USE_VGA_HVPOLARITY = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_MASK = common dso_local global i32 0, align 4
@ADPA_VSYNC_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@ADPA_HSYNC_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@PIPE_MASK = common dso_local global i32 0, align 4
@ADPA_PIPE_SELECT_SHIFT = common dso_local global i32 0, align 4
@ADPA_DPMS_CONTROL_MASK = common dso_local global i32 0, align 4
@ADPA_DPMS_D0 = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DISABLE = common dso_local global i32 0, align 4
@DPLL_RATE_SELECT_MASK = common dso_local global i32 0, align 4
@DPLL_REFERENCE_SELECT_MASK = common dso_local global i32 0, align 4
@DPLL_REFERENCE_DEFAULT = common dso_local global i32 0, align 4
@DPLL_RATE_SELECT_FP0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"calc_pll_params failed\0A\00", align 1
@DPLL_P1_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PLL P1 parameter\00", align 1
@DPLL_P2_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"PLL P2 parameter\00", align 1
@FP_DIVISOR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"PLL M1 parameter\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PLL M2 parameter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PLL N parameter\00", align 1
@DPLL_P1_FORCE_DIV2 = common dso_local global i32 0, align 4
@DPLL_P2_SHIFT = common dso_local global i32 0, align 4
@DPLL_P1_SHIFT = common dso_local global i32 0, align 4
@DPLL_I9XX_P2_SHIFT = common dso_local global i32 0, align 4
@FP_N_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@FP_M1_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@FP_M2_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@PORT_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i32 0, align 4
@DISPPLANE_8BPP = common dso_local global i32 0, align 4
@DISPPLANE_15_16BPP = common dso_local global i32 0, align 4
@DISPPLANE_16BPP = common dso_local global i32 0, align 4
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"H: act %d, ss %d, se %d, tot %d bs %d, be %d\0A\00", align 1
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"V: act %d, ss %d, se %d, tot %d bs %d, be %d\0A\00", align 1
@HACTIVE_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"CRTC hactive\00", align 1
@HSYNCSTART_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"CRTC hsync_start\00", align 1
@HSYNCEND_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"CRTC hsync_end\00", align 1
@HTOTAL_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"CRTC htotal\00", align 1
@HBLANKSTART_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"CRTC hblank_start\00", align 1
@HBLANKEND_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"CRTC hblank_end\00", align 1
@VACTIVE_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"CRTC vactive\00", align 1
@VSYNCSTART_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"CRTC vsync_start\00", align 1
@VSYNCEND_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"CRTC vsync_end\00", align 1
@VTOTAL_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"CRTC vtotal\00", align 1
@VBLANKSTART_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"CRTC vblank_start\00", align 1
@VBLANKEND_MASK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"CRTC vblank_end\00", align 1
@HTOTAL_SHIFT = common dso_local global i32 0, align 4
@HACTIVE_SHIFT = common dso_local global i32 0, align 4
@HBLANKSTART_SHIFT = common dso_local global i32 0, align 4
@HSYNCEND_SHIFT = common dso_local global i32 0, align 4
@HSYNCSTART_SHIFT = common dso_local global i32 0, align 4
@VTOTAL_SHIFT = common dso_local global i32 0, align 4
@VACTIVE_SHIFT = common dso_local global i32 0, align 4
@VBLANKSTART_SHIFT = common dso_local global i32 0, align 4
@VSYNCEND_SHIFT = common dso_local global i32 0, align 4
@VSYNCSTART_SHIFT = common dso_local global i32 0, align 4
@SRC_SIZE_HORIZ_SHIFT = common dso_local global i32 0, align 4
@SRC_SIZE_VERT_SHIFT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"pitch is %d\0A\00", align 1
@STRIDE_ALIGNMENT_I9XX = common dso_local global i32 0, align 4
@STRIDE_ALIGNMENT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"display stride %d has bad alignment %d\0A\00", align 1
@PIPECONF_GAMMA = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_W_FIELD_INDICATION = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_mode_to_hw(%struct.intelfb_info* %0, %struct.intelfb_hwstate* %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca %struct.intelfb_hwstate*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %5, align 8
  store %struct.intelfb_hwstate* %1, %struct.intelfb_hwstate** %6, align 8
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %7, align 8
  %42 = load i32, i32* @PIPE_A, align 4
  store i32 %42, i32* %8, align 4
  %43 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @VGA_DISABLE, align 4
  %45 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %46 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %45, i32 0, i32 28
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %50 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PIPECONF_ENABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = load i32, i32* @PIPE_A, align 4
  store i32 %56, i32* %8, align 4
  br label %67

57:                                               ; preds = %3
  %58 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %59 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PIPECONF_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @PIPE_B, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %57
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PIPE_B, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %73 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %72, i32 0, i32 2
  store i32* %73, i32** %9, align 8
  %74 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %75 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %74, i32 0, i32 3
  store i32* %75, i32** %10, align 8
  %76 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %77 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %76, i32 0, i32 4
  store i32* %77, i32** %11, align 8
  %78 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %79 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %78, i32 0, i32 5
  store i32* %79, i32** %36, align 8
  %80 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %81 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %80, i32 0, i32 6
  store i32* %81, i32** %37, align 8
  %82 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %83 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %82, i32 0, i32 7
  store i32* %83, i32** %38, align 8
  %84 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %85 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %84, i32 0, i32 8
  store i32* %85, i32** %33, align 8
  %86 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %87 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %86, i32 0, i32 9
  store i32* %87, i32** %34, align 8
  %88 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %89 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %88, i32 0, i32 10
  store i32* %89, i32** %35, align 8
  %90 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %91 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %90, i32 0, i32 11
  store i32* %91, i32** %39, align 8
  %92 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %93 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %92, i32 0, i32 1
  store i32* %93, i32** %40, align 8
  br label %117

94:                                               ; preds = %67
  %95 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %96 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %95, i32 0, i32 12
  store i32* %96, i32** %9, align 8
  %97 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %98 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %97, i32 0, i32 13
  store i32* %98, i32** %10, align 8
  %99 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %100 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %99, i32 0, i32 14
  store i32* %100, i32** %11, align 8
  %101 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %102 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %101, i32 0, i32 15
  store i32* %102, i32** %36, align 8
  %103 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %104 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %103, i32 0, i32 16
  store i32* %104, i32** %37, align 8
  %105 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %106 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %105, i32 0, i32 17
  store i32* %106, i32** %38, align 8
  %107 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %108 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %107, i32 0, i32 18
  store i32* %108, i32** %33, align 8
  %109 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %110 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %109, i32 0, i32 19
  store i32* %110, i32** %34, align 8
  %111 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %112 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %111, i32 0, i32 20
  store i32* %112, i32** %35, align 8
  %113 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %114 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %113, i32 0, i32 21
  store i32* %114, i32** %39, align 8
  %115 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %116 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %115, i32 0, i32 0
  store i32* %116, i32** %40, align 8
  br label %117

117:                                              ; preds = %94, %71
  %118 = load i32, i32* @ADPA_USE_VGA_HVPOLARITY, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %121 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %120, i32 0, i32 22
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %125 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* @ADPA_SYNC_ACTIVE_HIGH, align 4
  br label %134

132:                                              ; preds = %117
  %133 = load i32, i32* @ADPA_SYNC_ACTIVE_LOW, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %32, align 4
  %136 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @ADPA_SYNC_ACTIVE_HIGH, align 4
  br label %146

144:                                              ; preds = %134
  %145 = load i32, i32* @ADPA_SYNC_ACTIVE_LOW, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %31, align 4
  %148 = load i32, i32* @ADPA_SYNC_ACTIVE_MASK, align 4
  %149 = load i32, i32* @ADPA_VSYNC_ACTIVE_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* @ADPA_SYNC_ACTIVE_MASK, align 4
  %152 = load i32, i32* @ADPA_HSYNC_ACTIVE_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %150, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %157 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %156, i32 0, i32 22
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %32, align 4
  %161 = load i32, i32* @ADPA_HSYNC_ACTIVE_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %31, align 4
  %164 = load i32, i32* @ADPA_VSYNC_ACTIVE_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = or i32 %162, %165
  %167 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %168 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %167, i32 0, i32 22
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @PIPE_MASK, align 4
  %172 = load i32, i32* @ADPA_PIPE_SELECT_SHIFT, align 4
  %173 = shl i32 %171, %172
  %174 = xor i32 %173, -1
  %175 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %176 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %175, i32 0, i32 22
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @ADPA_PIPE_SELECT_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %183 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %182, i32 0, i32 22
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* @ADPA_DPMS_CONTROL_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %189 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %188, i32 0, i32 22
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* @ADPA_DPMS_D0, align 4
  %193 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %194 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %193, i32 0, i32 22
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %198 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %199 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %198, i32 0, i32 22
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %203 = load i32, i32* @DPLL_VGA_MODE_DISABLE, align 4
  %204 = or i32 %202, %203
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* @DPLL_RATE_SELECT_MASK, align 4
  %209 = load i32, i32* @DPLL_REFERENCE_SELECT_MASK, align 4
  %210 = or i32 %208, %209
  %211 = xor i32 %210, -1
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %211
  store i32 %214, i32* %212, align 4
  %215 = load i32, i32* @DPLL_REFERENCE_DEFAULT, align 4
  %216 = load i32, i32* @DPLL_RATE_SELECT_FP0, align 4
  %217 = or i32 %215, %216
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %217
  store i32 %220, i32* %218, align 4
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sdiv i32 1000000000, %223
  store i32 %224, i32* %17, align 4
  %225 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %226 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i64 @calc_pll_params(i32 %227, i32 %228, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %18)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %146
  %232 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %697

233:                                              ; preds = %146
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @DPLL_P1_MASK, align 4
  %236 = call i64 @check_overflow(i32 %234, i32 %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 1, i32* %4, align 4
  br label %697

239:                                              ; preds = %233
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* @DPLL_P2_MASK, align 4
  %242 = call i64 @check_overflow(i32 %240, i32 %241, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %697

245:                                              ; preds = %239
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %248 = call i64 @check_overflow(i32 %246, i32 %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i32 1, i32* %4, align 4
  br label %697

251:                                              ; preds = %245
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %254 = call i64 @check_overflow(i32 %252, i32 %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  store i32 1, i32* %4, align 4
  br label %697

257:                                              ; preds = %251
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %260 = call i64 @check_overflow(i32 %258, i32 %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i32 1, i32* %4, align 4
  br label %697

263:                                              ; preds = %257
  %264 = load i32, i32* @DPLL_P1_FORCE_DIV2, align 4
  %265 = xor i32 %264, -1
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %265
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* @DPLL_P2_MASK, align 4
  %270 = load i32, i32* @DPLL_P2_SHIFT, align 4
  %271 = shl i32 %269, %270
  %272 = load i32, i32* @DPLL_P1_MASK, align 4
  %273 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %274 = shl i32 %272, %273
  %275 = or i32 %271, %274
  %276 = xor i32 %275, -1
  %277 = load i32*, i32** %9, align 8
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, %276
  store i32 %279, i32* %277, align 4
  %280 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %281 = call i64 @IS_I9XX(%struct.intelfb_info* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %263
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* @DPLL_I9XX_P2_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %286
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* %15, align 4
  %291 = sub nsw i32 %290, 1
  %292 = shl i32 1, %291
  %293 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %294 = shl i32 %292, %293
  %295 = load i32*, i32** %9, align 8
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %294
  store i32 %297, i32* %295, align 4
  br label %309

298:                                              ; preds = %263
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* @DPLL_P2_SHIFT, align 4
  %301 = shl i32 %299, %300
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %304 = shl i32 %302, %303
  %305 = or i32 %301, %304
  %306 = load i32*, i32** %9, align 8
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %305
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %298, %283
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* @FP_N_DIVISOR_SHIFT, align 4
  %312 = shl i32 %310, %311
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* @FP_M1_DIVISOR_SHIFT, align 4
  %315 = shl i32 %313, %314
  %316 = or i32 %312, %315
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* @FP_M2_DIVISOR_SHIFT, align 4
  %319 = shl i32 %317, %318
  %320 = or i32 %316, %319
  %321 = load i32*, i32** %10, align 8
  store i32 %320, i32* %321, align 4
  %322 = load i32*, i32** %10, align 8
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %11, align 8
  store i32 %323, i32* %324, align 4
  %325 = load i32, i32* @PORT_ENABLE, align 4
  %326 = xor i32 %325, -1
  %327 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %328 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %327, i32 0, i32 27
  %329 = load i32, i32* %328, align 4
  %330 = and i32 %329, %326
  store i32 %330, i32* %328, align 4
  %331 = load i32, i32* @PORT_ENABLE, align 4
  %332 = xor i32 %331, -1
  %333 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %334 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %333, i32 0, i32 26
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %338 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %339 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %338, i32 0, i32 23
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  %342 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %345 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %344, i32 0, i32 23
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 4
  %348 = load i32, i32* @DISPPLANE_PIXFORMAT_MASK, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %351 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %350, i32 0, i32 23
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 4
  %354 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %355 = call i32 @intelfb_var_to_depth(%struct.fb_var_screeninfo* %354)
  switch i32 %355, label %382 [
    i32 8, label %356
    i32 15, label %364
    i32 16, label %370
    i32 24, label %376
  ]

356:                                              ; preds = %309
  %357 = load i32, i32* @DISPPLANE_8BPP, align 4
  %358 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %359 = or i32 %357, %358
  %360 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %361 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %360, i32 0, i32 23
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %382

364:                                              ; preds = %309
  %365 = load i32, i32* @DISPPLANE_15_16BPP, align 4
  %366 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %367 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %366, i32 0, i32 23
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %382

370:                                              ; preds = %309
  %371 = load i32, i32* @DISPPLANE_16BPP, align 4
  %372 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %373 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %372, i32 0, i32 23
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 4
  br label %382

376:                                              ; preds = %309
  %377 = load i32, i32* @DISPPLANE_32BPP_NO_ALPHA, align 4
  %378 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %379 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %378, i32 0, i32 23
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 4
  br label %382

382:                                              ; preds = %309, %376, %370, %364, %356
  %383 = load i32, i32* @PIPE_MASK, align 4
  %384 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %385 = shl i32 %383, %384
  %386 = xor i32 %385, -1
  %387 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %388 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %387, i32 0, i32 23
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, %386
  store i32 %390, i32* %388, align 4
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %393 = shl i32 %391, %392
  %394 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %395 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %394, i32 0, i32 23
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  %398 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %399 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  store i32 %400, i32* %24, align 4
  %401 = load i32, i32* %24, align 4
  %402 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %401, %404
  store i32 %405, i32* %19, align 4
  %406 = load i32, i32* %19, align 4
  %407 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %408 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %406, %409
  store i32 %410, i32* %20, align 4
  %411 = load i32, i32* %20, align 4
  %412 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %413 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %411, %414
  store i32 %415, i32* %23, align 4
  %416 = load i32, i32* %24, align 4
  store i32 %416, i32* %21, align 4
  %417 = load i32, i32* %23, align 4
  store i32 %417, i32* %22, align 4
  %418 = load i32, i32* %24, align 4
  %419 = load i32, i32* %19, align 4
  %420 = load i32, i32* %20, align 4
  %421 = load i32, i32* %23, align 4
  %422 = load i32, i32* %21, align 4
  %423 = load i32, i32* %22, align 4
  %424 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423)
  %425 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %426 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %425, i32 0, i32 6
  %427 = load i32, i32* %426, align 4
  store i32 %427, i32* %30, align 4
  %428 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %429 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %428, i32 0, i32 7
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %382
  %435 = load i32, i32* %30, align 4
  %436 = add nsw i32 %435, -1
  store i32 %436, i32* %30, align 4
  br label %437

437:                                              ; preds = %434, %382
  %438 = load i32, i32* %30, align 4
  %439 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %440 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %439, i32 0, i32 8
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %438, %441
  store i32 %442, i32* %25, align 4
  %443 = load i32, i32* %25, align 4
  %444 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %445 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %444, i32 0, i32 9
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %443, %446
  store i32 %447, i32* %26, align 4
  %448 = load i32, i32* %26, align 4
  %449 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %450 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %449, i32 0, i32 10
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %448, %451
  store i32 %452, i32* %29, align 4
  %453 = load i32, i32* %30, align 4
  store i32 %453, i32* %27, align 4
  %454 = load i32, i32* %29, align 4
  store i32 %454, i32* %28, align 4
  %455 = load i32, i32* %26, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %28, align 4
  %457 = load i32, i32* %30, align 4
  %458 = load i32, i32* %25, align 4
  %459 = load i32, i32* %26, align 4
  %460 = load i32, i32* %29, align 4
  %461 = load i32, i32* %27, align 4
  %462 = load i32, i32* %28, align 4
  %463 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %457, i32 %458, i32 %459, i32 %460, i32 %461, i32 %462)
  %464 = load i32, i32* %24, align 4
  %465 = add nsw i32 %464, -1
  store i32 %465, i32* %24, align 4
  %466 = load i32, i32* %24, align 4
  %467 = load i32, i32* @HACTIVE_MASK, align 4
  %468 = call i64 @check_overflow(i32 %466, i32 %467, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %437
  store i32 1, i32* %4, align 4
  br label %697

471:                                              ; preds = %437
  %472 = load i32, i32* %19, align 4
  %473 = add nsw i32 %472, -1
  store i32 %473, i32* %19, align 4
  %474 = load i32, i32* %19, align 4
  %475 = load i32, i32* @HSYNCSTART_MASK, align 4
  %476 = call i64 @check_overflow(i32 %474, i32 %475, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %471
  store i32 1, i32* %4, align 4
  br label %697

479:                                              ; preds = %471
  %480 = load i32, i32* %20, align 4
  %481 = add nsw i32 %480, -1
  store i32 %481, i32* %20, align 4
  %482 = load i32, i32* %20, align 4
  %483 = load i32, i32* @HSYNCEND_MASK, align 4
  %484 = call i64 @check_overflow(i32 %482, i32 %483, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %479
  store i32 1, i32* %4, align 4
  br label %697

487:                                              ; preds = %479
  %488 = load i32, i32* %23, align 4
  %489 = add nsw i32 %488, -1
  store i32 %489, i32* %23, align 4
  %490 = load i32, i32* %23, align 4
  %491 = load i32, i32* @HTOTAL_MASK, align 4
  %492 = call i64 @check_overflow(i32 %490, i32 %491, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %487
  store i32 1, i32* %4, align 4
  br label %697

495:                                              ; preds = %487
  %496 = load i32, i32* %21, align 4
  %497 = add nsw i32 %496, -1
  store i32 %497, i32* %21, align 4
  %498 = load i32, i32* %21, align 4
  %499 = load i32, i32* @HBLANKSTART_MASK, align 4
  %500 = call i64 @check_overflow(i32 %498, i32 %499, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %495
  store i32 1, i32* %4, align 4
  br label %697

503:                                              ; preds = %495
  %504 = load i32, i32* %22, align 4
  %505 = add nsw i32 %504, -1
  store i32 %505, i32* %22, align 4
  %506 = load i32, i32* %22, align 4
  %507 = load i32, i32* @HBLANKEND_MASK, align 4
  %508 = call i64 @check_overflow(i32 %506, i32 %507, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %503
  store i32 1, i32* %4, align 4
  br label %697

511:                                              ; preds = %503
  %512 = load i32, i32* %30, align 4
  %513 = add nsw i32 %512, -1
  store i32 %513, i32* %30, align 4
  %514 = load i32, i32* %30, align 4
  %515 = load i32, i32* @VACTIVE_MASK, align 4
  %516 = call i64 @check_overflow(i32 %514, i32 %515, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %511
  store i32 1, i32* %4, align 4
  br label %697

519:                                              ; preds = %511
  %520 = load i32, i32* %25, align 4
  %521 = add nsw i32 %520, -1
  store i32 %521, i32* %25, align 4
  %522 = load i32, i32* %25, align 4
  %523 = load i32, i32* @VSYNCSTART_MASK, align 4
  %524 = call i64 @check_overflow(i32 %522, i32 %523, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %527

526:                                              ; preds = %519
  store i32 1, i32* %4, align 4
  br label %697

527:                                              ; preds = %519
  %528 = load i32, i32* %26, align 4
  %529 = add nsw i32 %528, -1
  store i32 %529, i32* %26, align 4
  %530 = load i32, i32* %26, align 4
  %531 = load i32, i32* @VSYNCEND_MASK, align 4
  %532 = call i64 @check_overflow(i32 %530, i32 %531, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %527
  store i32 1, i32* %4, align 4
  br label %697

535:                                              ; preds = %527
  %536 = load i32, i32* %29, align 4
  %537 = add nsw i32 %536, -1
  store i32 %537, i32* %29, align 4
  %538 = load i32, i32* %29, align 4
  %539 = load i32, i32* @VTOTAL_MASK, align 4
  %540 = call i64 @check_overflow(i32 %538, i32 %539, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %535
  store i32 1, i32* %4, align 4
  br label %697

543:                                              ; preds = %535
  %544 = load i32, i32* %27, align 4
  %545 = add nsw i32 %544, -1
  store i32 %545, i32* %27, align 4
  %546 = load i32, i32* %27, align 4
  %547 = load i32, i32* @VBLANKSTART_MASK, align 4
  %548 = call i64 @check_overflow(i32 %546, i32 %547, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %551

550:                                              ; preds = %543
  store i32 1, i32* %4, align 4
  br label %697

551:                                              ; preds = %543
  %552 = load i32, i32* %28, align 4
  %553 = add nsw i32 %552, -1
  store i32 %553, i32* %28, align 4
  %554 = load i32, i32* %28, align 4
  %555 = load i32, i32* @VBLANKEND_MASK, align 4
  %556 = call i64 @check_overflow(i32 %554, i32 %555, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %551
  store i32 1, i32* %4, align 4
  br label %697

559:                                              ; preds = %551
  %560 = load i32, i32* %23, align 4
  %561 = load i32, i32* @HTOTAL_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = load i32, i32* %24, align 4
  %564 = load i32, i32* @HACTIVE_SHIFT, align 4
  %565 = shl i32 %563, %564
  %566 = or i32 %562, %565
  %567 = load i32*, i32** %38, align 8
  store i32 %566, i32* %567, align 4
  %568 = load i32, i32* %21, align 4
  %569 = load i32, i32* @HBLANKSTART_SHIFT, align 4
  %570 = shl i32 %568, %569
  %571 = load i32, i32* %22, align 4
  %572 = load i32, i32* @HSYNCEND_SHIFT, align 4
  %573 = shl i32 %571, %572
  %574 = or i32 %570, %573
  %575 = load i32*, i32** %37, align 8
  store i32 %574, i32* %575, align 4
  %576 = load i32, i32* %19, align 4
  %577 = load i32, i32* @HSYNCSTART_SHIFT, align 4
  %578 = shl i32 %576, %577
  %579 = load i32, i32* %20, align 4
  %580 = load i32, i32* @HSYNCEND_SHIFT, align 4
  %581 = shl i32 %579, %580
  %582 = or i32 %578, %581
  %583 = load i32*, i32** %36, align 8
  store i32 %582, i32* %583, align 4
  %584 = load i32, i32* %29, align 4
  %585 = load i32, i32* @VTOTAL_SHIFT, align 4
  %586 = shl i32 %584, %585
  %587 = load i32, i32* %30, align 4
  %588 = load i32, i32* @VACTIVE_SHIFT, align 4
  %589 = shl i32 %587, %588
  %590 = or i32 %586, %589
  %591 = load i32*, i32** %35, align 8
  store i32 %590, i32* %591, align 4
  %592 = load i32, i32* %27, align 4
  %593 = load i32, i32* @VBLANKSTART_SHIFT, align 4
  %594 = shl i32 %592, %593
  %595 = load i32, i32* %28, align 4
  %596 = load i32, i32* @VSYNCEND_SHIFT, align 4
  %597 = shl i32 %595, %596
  %598 = or i32 %594, %597
  %599 = load i32*, i32** %34, align 8
  store i32 %598, i32* %599, align 4
  %600 = load i32, i32* %25, align 4
  %601 = load i32, i32* @VSYNCSTART_SHIFT, align 4
  %602 = shl i32 %600, %601
  %603 = load i32, i32* %26, align 4
  %604 = load i32, i32* @VSYNCEND_SHIFT, align 4
  %605 = shl i32 %603, %604
  %606 = or i32 %602, %605
  %607 = load i32*, i32** %33, align 8
  store i32 %606, i32* %607, align 4
  %608 = load i32, i32* %24, align 4
  %609 = load i32, i32* @SRC_SIZE_HORIZ_SHIFT, align 4
  %610 = shl i32 %608, %609
  %611 = load i32, i32* %30, align 4
  %612 = load i32, i32* @SRC_SIZE_VERT_SHIFT, align 4
  %613 = shl i32 %611, %612
  %614 = or i32 %610, %613
  %615 = load i32*, i32** %39, align 8
  store i32 %614, i32* %615, align 4
  %616 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %617 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %620 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %619, i32 0, i32 24
  store i32 %618, i32* %620, align 4
  %621 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %622 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %621, i32 0, i32 24
  %623 = load i32, i32* %622, align 4
  %624 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %623)
  %625 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %626 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %625, i32 0, i32 24
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %629 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %628, i32 0, i32 11
  %630 = load i32, i32* %629, align 4
  %631 = mul nsw i32 %627, %630
  %632 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %633 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %632, i32 0, i32 12
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %636 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %635, i32 0, i32 13
  %637 = load i32, i32* %636, align 4
  %638 = mul nsw i32 %634, %637
  %639 = sdiv i32 %638, 8
  %640 = add nsw i32 %631, %639
  %641 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %642 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %641, i32 0, i32 25
  store i32 %640, i32* %642, align 4
  %643 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %644 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = shl i32 %646, 12
  %648 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %649 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %648, i32 0, i32 25
  %650 = load i32, i32* %649, align 4
  %651 = add nsw i32 %650, %647
  store i32 %651, i32* %649, align 4
  %652 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %653 = call i64 @IS_I9XX(%struct.intelfb_info* %652)
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %657

655:                                              ; preds = %559
  %656 = load i32, i32* @STRIDE_ALIGNMENT_I9XX, align 4
  br label %659

657:                                              ; preds = %559
  %658 = load i32, i32* @STRIDE_ALIGNMENT, align 4
  br label %659

659:                                              ; preds = %657, %655
  %660 = phi i32 [ %656, %655 ], [ %658, %657 ]
  store i32 %660, i32* %41, align 4
  %661 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %662 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %661, i32 0, i32 24
  %663 = load i32, i32* %662, align 4
  %664 = load i32, i32* %41, align 4
  %665 = srem i32 %663, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %673

667:                                              ; preds = %659
  %668 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %669 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %668, i32 0, i32 24
  %670 = load i32, i32* %669, align 4
  %671 = load i32, i32* %41, align 4
  %672 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %670, i32 %671)
  store i32 1, i32* %4, align 4
  br label %697

673:                                              ; preds = %659
  %674 = load i32, i32* @PIPECONF_GAMMA, align 4
  %675 = xor i32 %674, -1
  %676 = load i32*, i32** %40, align 8
  %677 = load i32, i32* %676, align 4
  %678 = and i32 %677, %675
  store i32 %678, i32* %676, align 4
  %679 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %680 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %679, i32 0, i32 7
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %683 = and i32 %681, %682
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %690

685:                                              ; preds = %673
  %686 = load i32, i32* @PIPECONF_INTERLACE_W_FIELD_INDICATION, align 4
  %687 = load i32*, i32** %40, align 8
  %688 = load i32, i32* %687, align 4
  %689 = or i32 %688, %686
  store i32 %689, i32* %687, align 4
  br label %696

690:                                              ; preds = %673
  %691 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %692 = xor i32 %691, -1
  %693 = load i32*, i32** %40, align 8
  %694 = load i32, i32* %693, align 4
  %695 = and i32 %694, %692
  store i32 %695, i32* %693, align 4
  br label %696

696:                                              ; preds = %690, %685
  store i32 0, i32* %4, align 4
  br label %697

697:                                              ; preds = %696, %667, %558, %550, %542, %534, %526, %518, %510, %502, %494, %486, %478, %470, %262, %256, %250, %244, %238, %231
  %698 = load i32, i32* %4, align 4
  ret i32 %698
}

declare dso_local i32 @DBG_MSG(i8*, ...) #1

declare dso_local i64 @calc_pll_params(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WRN_MSG(i8*, ...) #1

declare dso_local i64 @check_overflow(i32, i32, i8*) #1

declare dso_local i64 @IS_I9XX(%struct.intelfb_info*) #1

declare dso_local i32 @intelfb_var_to_depth(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
