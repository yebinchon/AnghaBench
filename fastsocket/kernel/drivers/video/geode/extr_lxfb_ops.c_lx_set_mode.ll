; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_lxfb_ops.c_lx_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/geode/extr_lxfb_ops.c_lx_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.lxfb_par* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.lxfb_par = type { i32 }

@DC_UNLOCK = common dso_local global i32 0, align 4
@DC_UNLOCK_UNLOCK = common dso_local global i32 0, align 4
@MSR_LX_GLD_MSR_CONFIG = common dso_local global i32 0, align 4
@MSR_LX_GLD_MSR_CONFIG_FMT = common dso_local global i32 0, align 4
@OUTPUT_PANEL = common dso_local global i32 0, align 4
@MSR_LX_GLD_MSR_CONFIG_FMT_FP = common dso_local global i32 0, align 4
@OUTPUT_CRT = common dso_local global i32 0, align 4
@MSR_LX_GLD_MSR_CONFIG_FPC = common dso_local global i32 0, align 4
@MSR_LX_GLD_MSR_CONFIG_FMT_CRT = common dso_local global i32 0, align 4
@DC_FB_ST_OFFSET = common dso_local global i32 0, align 4
@DC_CB_ST_OFFSET = common dso_local global i32 0, align 4
@DC_CURS_ST_OFFSET = common dso_local global i32 0, align 4
@DC_GENLK_CTL = common dso_local global i32 0, align 4
@DC_GENLK_CTL_ALPHA_FLICK_EN = common dso_local global i32 0, align 4
@DC_GENLK_CTL_FLICK_EN = common dso_local global i32 0, align 4
@DC_GENLK_CTL_FLICK_SEL_MASK = common dso_local global i32 0, align 4
@DC_GFX_SCALE = common dso_local global i32 0, align 4
@DC_IRQ_FILT_CTL = common dso_local global i32 0, align 4
@DC_DV_CTL_DV_LINE_SIZE_8K = common dso_local global i32 0, align 4
@DC_DV_CTL_DV_LINE_SIZE_4K = common dso_local global i32 0, align 4
@DC_DV_CTL_DV_LINE_SIZE_2K = common dso_local global i32 0, align 4
@DC_DV_CTL_DV_LINE_SIZE_1K = common dso_local global i32 0, align 4
@DC_DV_TOP = common dso_local global i32 0, align 4
@DC_DV_TOP_DV_TOP_EN = common dso_local global i32 0, align 4
@DC_DV_CTL = common dso_local global i32 0, align 4
@DC_DV_CTL_DV_LINE_SIZE = common dso_local global i32 0, align 4
@DC_GFX_PITCH = common dso_local global i32 0, align 4
@DC_LINE_SIZE = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_DIS_CFIFO_HGO = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_VFIFO_ARB_SEL = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_LOAD_WM_LPEN_M = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_WM_LPEN_OVRD = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_DIS_VIFO_WM = common dso_local global i32 0, align 4
@MSR_LX_SPARE_MSR_DIS_INIT_V_PRI = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFLE = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFHPSL_SHIFT = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_DFHPEL_SHIFT = common dso_local global i32 0, align 4
@DC_GENERAL_CFG_FDTY = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_VDEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_GDEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_TGEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_TRUP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_PALB = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_VISL = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DCEN = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_8BPP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_16BPP = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG_DISP_MODE_24BPP = common dso_local global i32 0, align 4
@DC_H_ACTIVE_TIMING = common dso_local global i32 0, align 4
@DC_H_BLANK_TIMING = common dso_local global i32 0, align 4
@DC_H_SYNC_TIMING = common dso_local global i32 0, align 4
@DC_V_ACTIVE_TIMING = common dso_local global i32 0, align 4
@DC_V_BLANK_TIMING = common dso_local global i32 0, align 4
@DC_V_SYNC_TIMING = common dso_local global i32 0, align 4
@DC_FB_ACTIVE = common dso_local global i32 0, align 4
@DC_DISPLAY_CFG = common dso_local global i32 0, align 4
@DC_ARB_CFG = common dso_local global i32 0, align 4
@DC_GENERAL_CFG = common dso_local global i32 0, align 4
@DC_UNLOCK_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lx_set_mode(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.lxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 2
  %25 = load %struct.lxfb_par*, %struct.lxfb_par** %24, align 8
  store %struct.lxfb_par* %25, %struct.lxfb_par** %3, align 8
  %26 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %27 = load i32, i32* @DC_UNLOCK, align 4
  %28 = load i32, i32* @DC_UNLOCK_UNLOCK, align 4
  %29 = call i32 @write_dc(%struct.lxfb_par* %26, i32 %27, i32 %28)
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = call i32 @lx_graphics_disable(%struct.fb_info* %30)
  %32 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %33 = call i32 @lx_set_clock(%struct.fb_info* %32)
  %34 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @rdmsrl(i32 %34, i32 %35)
  %37 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG_FMT, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %42 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OUTPUT_PANEL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %1
  %48 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG_FMT_FP, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %52 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OUTPUT_CRT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG_FPC, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %47
  %62 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG_FPC, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %57
  br label %71

67:                                               ; preds = %1
  %68 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG_FMT_CRT, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* @MSR_LX_GLD_MSR_CONFIG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @wrmsrl(i32 %72, i32 %73)
  %75 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %76 = load i32, i32* @DC_FB_ST_OFFSET, align 4
  %77 = call i32 @write_dc(%struct.lxfb_par* %75, i32 %76, i32 0)
  %78 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %79 = load i32, i32* @DC_CB_ST_OFFSET, align 4
  %80 = call i32 @write_dc(%struct.lxfb_par* %78, i32 %79, i32 0)
  %81 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %82 = load i32, i32* @DC_CURS_ST_OFFSET, align 4
  %83 = call i32 @write_dc(%struct.lxfb_par* %81, i32 %82, i32 0)
  %84 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %85 = load i32, i32* @DC_GENLK_CTL, align 4
  %86 = call i32 @read_dc(%struct.lxfb_par* %84, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @DC_GENLK_CTL_ALPHA_FLICK_EN, align 4
  %88 = load i32, i32* @DC_GENLK_CTL_FLICK_EN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @DC_GENLK_CTL_FLICK_SEL_MASK, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %96 = load i32, i32* @DC_GFX_SCALE, align 4
  %97 = call i32 @write_dc(%struct.lxfb_par* %95, i32 %96, i32 1073758208)
  %98 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %99 = load i32, i32* @DC_IRQ_FILT_CTL, align 4
  %100 = call i32 @write_dc(%struct.lxfb_par* %98, i32 %99, i32 0)
  %101 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %102 = load i32, i32* @DC_GENLK_CTL, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @write_dc(%struct.lxfb_par* %101, i32 %102, i32 %103)
  %105 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 4096
  br i1 %109, label %110, label %112

110:                                              ; preds = %71
  %111 = load i32, i32* @DC_DV_CTL_DV_LINE_SIZE_8K, align 4
  store i32 %111, i32* %6, align 4
  br label %132

112:                                              ; preds = %71
  %113 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 2048
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @DC_DV_CTL_DV_LINE_SIZE_4K, align 4
  store i32 %119, i32* %6, align 4
  br label %131

120:                                              ; preds = %112
  %121 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 1024
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @DC_DV_CTL_DV_LINE_SIZE_2K, align 4
  store i32 %127, i32* %6, align 4
  br label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @DC_DV_CTL_DV_LINE_SIZE_1K, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %126
  br label %131

131:                                              ; preds = %130, %118
  br label %132

132:                                              ; preds = %131, %110
  %133 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul i32 %136, %140
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add i32 %142, 1023
  %144 = and i32 %143, -1024
  store i32 %144, i32* %5, align 4
  %145 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %146 = load i32, i32* @DC_DV_TOP, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @DC_DV_TOP_DV_TOP_EN, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @write_dc(%struct.lxfb_par* %145, i32 %146, i32 %149)
  %151 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %152 = load i32, i32* @DC_DV_CTL, align 4
  %153 = call i32 @read_dc(%struct.lxfb_par* %151, i32 %152)
  %154 = load i32, i32* @DC_DV_CTL_DV_LINE_SIZE, align 4
  %155 = xor i32 %154, -1
  %156 = and i32 %153, %155
  store i32 %156, i32* %7, align 4
  %157 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %158 = load i32, i32* @DC_DV_CTL, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @write_dc(%struct.lxfb_par* %157, i32 %158, i32 %161)
  %163 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = ashr i32 %170, 3
  %172 = mul nsw i32 %166, %171
  store i32 %172, i32* %8, align 4
  %173 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %174 = load i32, i32* @DC_GFX_PITCH, align 4
  %175 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 3
  %180 = call i32 @write_dc(%struct.lxfb_par* %173, i32 %174, i32 %179)
  %181 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %182 = load i32, i32* @DC_LINE_SIZE, align 4
  %183 = load i32, i32* %8, align 4
  %184 = add i32 %183, 7
  %185 = lshr i32 %184, 3
  %186 = call i32 @write_dc(%struct.lxfb_par* %181, i32 %182, i32 %185)
  %187 = load i32, i32* @MSR_LX_SPARE_MSR, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @rdmsrl(i32 %187, i32 %188)
  %190 = load i32, i32* @MSR_LX_SPARE_MSR_DIS_CFIFO_HGO, align 4
  %191 = load i32, i32* @MSR_LX_SPARE_MSR_VFIFO_ARB_SEL, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @MSR_LX_SPARE_MSR_LOAD_WM_LPEN_M, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @MSR_LX_SPARE_MSR_WM_LPEN_OVRD, align 4
  %196 = or i32 %194, %195
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %4, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* @MSR_LX_SPARE_MSR_DIS_VIFO_WM, align 4
  %201 = load i32, i32* @MSR_LX_SPARE_MSR_DIS_INIT_V_PRI, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* @MSR_LX_SPARE_MSR, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @wrmsrl(i32 %205, i32 %206)
  %208 = load i32, i32* @DC_GENERAL_CFG_DFLE, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* @DC_GENERAL_CFG_DFHPSL_SHIFT, align 4
  %210 = shl i32 6, %209
  %211 = load i32, i32* @DC_GENERAL_CFG_DFHPEL_SHIFT, align 4
  %212 = shl i32 11, %211
  %213 = or i32 %210, %212
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* @DC_GENERAL_CFG_FDTY, align 4
  %217 = load i32, i32* %9, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* @DC_DISPLAY_CFG_VDEN, align 4
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* @DC_DISPLAY_CFG_GDEN, align 4
  %221 = load i32, i32* %10, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* @DC_DISPLAY_CFG_TGEN, align 4
  %224 = load i32, i32* %10, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* @DC_DISPLAY_CFG_TRUP, align 4
  %227 = load i32, i32* %10, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* @DC_DISPLAY_CFG_PALB, align 4
  %230 = load i32, i32* %10, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* @DC_DISPLAY_CFG_VISL, align 4
  %233 = load i32, i32* %10, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* @DC_DISPLAY_CFG_DCEN, align 4
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  %238 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %239 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %254 [
    i32 8, label %242
    i32 16, label %246
    i32 32, label %250
    i32 24, label %250
  ]

242:                                              ; preds = %132
  %243 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_8BPP, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %254

246:                                              ; preds = %132
  %247 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_16BPP, align 4
  %248 = load i32, i32* %10, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %10, align 4
  br label %254

250:                                              ; preds = %132, %132
  %251 = load i32, i32* @DC_DISPLAY_CFG_DISP_MODE_24BPP, align 4
  %252 = load i32, i32* %10, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %132, %250, %246, %242
  %255 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %256 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %262 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %260, %264
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %13, align 4
  %267 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %268 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %266, %270
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %274 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %272, %276
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %15, align 4
  store i32 %278, i32* %16, align 4
  %279 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %280 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %17, align 4
  store i32 %283, i32* %18, align 4
  %284 = load i32, i32* %18, align 4
  %285 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %284, %288
  store i32 %289, i32* %19, align 4
  %290 = load i32, i32* %19, align 4
  %291 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %292 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %290, %294
  store i32 %295, i32* %20, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %298 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 8
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %296, %300
  store i32 %301, i32* %21, align 4
  %302 = load i32, i32* %21, align 4
  store i32 %302, i32* %22, align 4
  %303 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %304 = load i32, i32* @DC_H_ACTIVE_TIMING, align 4
  %305 = load i32, i32* %11, align 4
  %306 = sub nsw i32 %305, 1
  %307 = load i32, i32* %16, align 4
  %308 = sub nsw i32 %307, 1
  %309 = shl i32 %308, 16
  %310 = or i32 %306, %309
  %311 = call i32 @write_dc(%struct.lxfb_par* %303, i32 %304, i32 %310)
  %312 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %313 = load i32, i32* @DC_H_BLANK_TIMING, align 4
  %314 = load i32, i32* %12, align 4
  %315 = sub nsw i32 %314, 1
  %316 = load i32, i32* %15, align 4
  %317 = sub nsw i32 %316, 1
  %318 = shl i32 %317, 16
  %319 = or i32 %315, %318
  %320 = call i32 @write_dc(%struct.lxfb_par* %312, i32 %313, i32 %319)
  %321 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %322 = load i32, i32* @DC_H_SYNC_TIMING, align 4
  %323 = load i32, i32* %13, align 4
  %324 = sub nsw i32 %323, 1
  %325 = load i32, i32* %14, align 4
  %326 = sub nsw i32 %325, 1
  %327 = shl i32 %326, 16
  %328 = or i32 %324, %327
  %329 = call i32 @write_dc(%struct.lxfb_par* %321, i32 %322, i32 %328)
  %330 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %331 = load i32, i32* @DC_V_ACTIVE_TIMING, align 4
  %332 = load i32, i32* %17, align 4
  %333 = sub nsw i32 %332, 1
  %334 = load i32, i32* %22, align 4
  %335 = sub nsw i32 %334, 1
  %336 = shl i32 %335, 16
  %337 = or i32 %333, %336
  %338 = call i32 @write_dc(%struct.lxfb_par* %330, i32 %331, i32 %337)
  %339 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %340 = load i32, i32* @DC_V_BLANK_TIMING, align 4
  %341 = load i32, i32* %18, align 4
  %342 = sub nsw i32 %341, 1
  %343 = load i32, i32* %21, align 4
  %344 = sub nsw i32 %343, 1
  %345 = shl i32 %344, 16
  %346 = or i32 %342, %345
  %347 = call i32 @write_dc(%struct.lxfb_par* %339, i32 %340, i32 %346)
  %348 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %349 = load i32, i32* @DC_V_SYNC_TIMING, align 4
  %350 = load i32, i32* %19, align 4
  %351 = sub nsw i32 %350, 1
  %352 = load i32, i32* %20, align 4
  %353 = sub nsw i32 %352, 1
  %354 = shl i32 %353, 16
  %355 = or i32 %351, %354
  %356 = call i32 @write_dc(%struct.lxfb_par* %348, i32 %349, i32 %355)
  %357 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %358 = load i32, i32* @DC_FB_ACTIVE, align 4
  %359 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %360 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %362, 1
  %364 = shl i32 %363, 16
  %365 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %366 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = sub i32 %368, 1
  %370 = or i32 %364, %369
  %371 = call i32 @write_dc(%struct.lxfb_par* %357, i32 %358, i32 %370)
  %372 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %373 = call i32 @lx_graphics_enable(%struct.fb_info* %372)
  %374 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %375 = load i32, i32* @DC_DISPLAY_CFG, align 4
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @write_dc(%struct.lxfb_par* %374, i32 %375, i32 %376)
  %378 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %379 = load i32, i32* @DC_ARB_CFG, align 4
  %380 = call i32 @write_dc(%struct.lxfb_par* %378, i32 %379, i32 0)
  %381 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %382 = load i32, i32* @DC_GENERAL_CFG, align 4
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @write_dc(%struct.lxfb_par* %381, i32 %382, i32 %383)
  %385 = load %struct.lxfb_par*, %struct.lxfb_par** %3, align 8
  %386 = load i32, i32* @DC_UNLOCK, align 4
  %387 = load i32, i32* @DC_UNLOCK_LOCK, align 4
  %388 = call i32 @write_dc(%struct.lxfb_par* %385, i32 %386, i32 %387)
  ret void
}

declare dso_local i32 @write_dc(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @lx_graphics_disable(%struct.fb_info*) #1

declare dso_local i32 @lx_set_clock(%struct.fb_info*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @read_dc(%struct.lxfb_par*, i32) #1

declare dso_local i32 @lx_graphics_enable(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
