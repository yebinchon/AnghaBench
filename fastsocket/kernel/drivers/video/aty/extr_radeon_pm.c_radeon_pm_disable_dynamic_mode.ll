; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_pm.c_radeon_pm_disable_dynamic_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_pm.c_radeon_pm_disable_dynamic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i64, i64, i64 }

@CHIP_FAMILY_RV100 = common dso_local global i64 0, align 8
@pllSCLK_CNTL = common dso_local global i32 0, align 4
@SCLK_CNTL__DYN_STOP_LAT_MASK = common dso_local global i32 0, align 4
@SCLK_CNTL__CP_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCEON_MASK = common dso_local global i32 0, align 4
@pllMCLK_CNTL = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MCLKA = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MCLKB = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_YCLKA = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_YCLKB = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_AIC = common dso_local global i32 0, align 4
@MCLK_CNTL__FORCE_MC = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_CP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_HDP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_DISP1 = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TOP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_E2 = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_SE = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_IDCT = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_VIP = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_RE = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_PB = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TAM = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TDM = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_RB = common dso_local global i32 0, align 4
@CHIP_FAMILY_RV350 = common dso_local global i64 0, align 8
@pllSCLK_CNTL2 = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_TCL = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_GA = common dso_local global i32 0, align 4
@SCLK_CNTL2__R300_FORCE_CBA = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_DISP2 = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_VAP = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_SR = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_PX = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_TX = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_US = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_TV_SCLK = common dso_local global i32 0, align 4
@SCLK_CNTL__R300_FORCE_SU = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_OV0 = common dso_local global i32 0, align 4
@pllSCLK_MORE_CNTL = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__FORCE_DISPREGS = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__FORCE_MC_GUI = common dso_local global i32 0, align 4
@SCLK_MORE_CNTL__FORCE_MC_HOST = common dso_local global i32 0, align 4
@pllVCLK_ECP_CNTL = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL__R300_DISP_DAC_PIXCLK_DAC_BLANK_OFF = common dso_local global i32 0, align 4
@pllPIXCLKS_CNTL = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_DVOCLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_DVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_TRANS_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_PIXCLK_TVO_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_P2G2CLK_ALWAYS_ONb = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__R300_DISP_DAC_PIXCLK_DAC2_BLANK_OFF = common dso_local global i32 0, align 4
@SCLK_CNTL__FORCE_SUBPIC = common dso_local global i32 0, align 4
@CHIP_FAMILY_R300 = common dso_local global i64 0, align 8
@CHIP_FAMILY_R350 = common dso_local global i64 0, align 8
@pllCLK_PIN_CNTL = common dso_local global i32 0, align 4
@CLK_PIN_CNTL__SCLK_DYN_START_CNTL = common dso_local global i32 0, align 4
@pllMCLK_MISC = common dso_local global i32 0, align 4
@MCLK_MISC__MC_MCLK_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@MCLK_MISC__IO_MCLK_MAX_DYN_STOP_LAT = common dso_local global i32 0, align 4
@MCLK_MISC__MC_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@MCLK_MISC__IO_MCLK_DYN_ENABLE = common dso_local global i32 0, align 4
@PIXCLKS_CNTL__PIXCLK_DIG_TMDS_ALWAYS_ONb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*)* @radeon_pm_disable_dynamic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_pm_disable_dynamic_mode(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %4 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CHIP_FAMILY_RV100, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %9
  %15 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* @pllSCLK_CNTL, align 4
  %21 = call i32 @INPLL(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @SCLK_CNTL__DYN_STOP_LAT_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SCLK_CNTL__CP_MAX_DYN_STOP_LAT, align 4
  %27 = load i32, i32* @SCLK_CNTL__FORCEON_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @pllSCLK_CNTL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @OUTPLL(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %19, %14
  %35 = load i32, i32* @pllMCLK_CNTL, align 4
  %36 = call i32 @INPLL(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @MCLK_CNTL__FORCE_MCLKA, align 4
  %38 = load i32, i32* @MCLK_CNTL__FORCE_MCLKB, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MCLK_CNTL__FORCE_YCLKA, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MCLK_CNTL__FORCE_YCLKB, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MCLK_CNTL__FORCE_AIC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MCLK_CNTL__FORCE_MC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @pllMCLK_CNTL, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @OUTPLL(i32 %50, i32 %51)
  br label %443

53:                                               ; preds = %9, %1
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %55 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @pllSCLK_CNTL, align 4
  %60 = call i32 @INPLL(i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %62 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SCLK_CNTL__FORCE_E2, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SCLK_CNTL__FORCE_SE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SCLK_CNTL__FORCE_RE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SCLK_CNTL__FORCE_PB, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SCLK_CNTL__FORCE_TAM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SCLK_CNTL__FORCE_TDM, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SCLK_CNTL__FORCE_RB, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @pllSCLK_CNTL, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @OUTPLL(i32 %88, i32 %89)
  br label %443

91:                                               ; preds = %53
  %92 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %93 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CHIP_FAMILY_RV350, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %222

97:                                               ; preds = %91
  %98 = load i32, i32* @pllSCLK_CNTL2, align 4
  %99 = call i32 @INPLL(i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @SCLK_CNTL2__R300_FORCE_TCL, align 4
  %101 = load i32, i32* @SCLK_CNTL2__R300_FORCE_GA, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SCLK_CNTL2__R300_FORCE_CBA, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @pllSCLK_CNTL2, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @OUTPLL(i32 %107, i32 %108)
  %110 = load i32, i32* @pllSCLK_CNTL, align 4
  %111 = call i32 @INPLL(i32 %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @SCLK_CNTL__FORCE_DISP2, align 4
  %113 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SCLK_CNTL__FORCE_E2, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SCLK_CNTL__R300_FORCE_VAP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @SCLK_CNTL__R300_FORCE_SR, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @SCLK_CNTL__R300_FORCE_PX, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SCLK_CNTL__R300_FORCE_TX, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SCLK_CNTL__R300_FORCE_US, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SCLK_CNTL__FORCE_TV_SCLK, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SCLK_CNTL__R300_FORCE_SU, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @SCLK_CNTL__FORCE_OV0, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %3, align 4
  %145 = load i32, i32* @pllSCLK_CNTL, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @OUTPLL(i32 %145, i32 %146)
  %148 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %149 = call i32 @INPLL(i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* @SCLK_MORE_CNTL__FORCE_DISPREGS, align 4
  %151 = load i32, i32* @SCLK_MORE_CNTL__FORCE_MC_GUI, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @SCLK_MORE_CNTL__FORCE_MC_HOST, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %3, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @OUTPLL(i32 %157, i32 %158)
  %160 = load i32, i32* @pllMCLK_CNTL, align 4
  %161 = call i32 @INPLL(i32 %160)
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* @MCLK_CNTL__FORCE_MCLKA, align 4
  %163 = load i32, i32* @MCLK_CNTL__FORCE_MCLKB, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @MCLK_CNTL__FORCE_YCLKA, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @MCLK_CNTL__FORCE_YCLKB, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @MCLK_CNTL__FORCE_MC, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %3, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* @pllMCLK_CNTL, align 4
  %174 = load i32, i32* %3, align 4
  %175 = call i32 @OUTPLL(i32 %173, i32 %174)
  %176 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %177 = call i32 @INPLL(i32 %176)
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb, align 4
  %179 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @VCLK_ECP_CNTL__R300_DISP_DAC_PIXCLK_DAC_BLANK_OFF, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %3, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @OUTPLL(i32 %186, i32 %187)
  %189 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %190 = call i32 @INPLL(i32 %189)
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb, align 4
  %192 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @PIXCLKS_CNTL__DISP_TVOUT_PIXCLK_TV_ALWAYS_ONb, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @PIXCLKS_CNTL__R300_DVOCLK_ALWAYS_ONb, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_DVO_ALWAYS_ONb, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_TRANS_ALWAYS_ONb, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @PIXCLKS_CNTL__R300_PIXCLK_TVO_ALWAYS_ONb, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @PIXCLKS_CNTL__R300_P2G2CLK_ALWAYS_ONb, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @PIXCLKS_CNTL__R300_DISP_DAC_PIXCLK_DAC2_BLANK_OFF, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %3, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @OUTPLL(i32 %219, i32 %220)
  br label %443

222:                                              ; preds = %91
  %223 = load i32, i32* @pllSCLK_CNTL, align 4
  %224 = call i32 @INPLL(i32 %223)
  store i32 %224, i32* %3, align 4
  %225 = load i32, i32* @SCLK_CNTL__FORCE_CP, align 4
  %226 = load i32, i32* @SCLK_CNTL__FORCE_E2, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %3, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %3, align 4
  %230 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %231 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %266

234:                                              ; preds = %222
  %235 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %236 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @SCLK_CNTL__FORCE_DISP2, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @SCLK_CNTL__FORCE_SE, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @SCLK_CNTL__FORCE_PB, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @SCLK_CNTL__FORCE_RE, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @SCLK_CNTL__FORCE_TAM, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @SCLK_CNTL__FORCE_TDM, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @SCLK_CNTL__FORCE_RB, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @SCLK_CNTL__FORCE_TV_SCLK, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @SCLK_CNTL__FORCE_SUBPIC, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @SCLK_CNTL__FORCE_OV0, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* %3, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %3, align 4
  br label %293

266:                                              ; preds = %222
  %267 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %268 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @CHIP_FAMILY_R300, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %274 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @CHIP_FAMILY_R350, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %292

278:                                              ; preds = %272, %266
  %279 = load i32, i32* @SCLK_CNTL__FORCE_HDP, align 4
  %280 = load i32, i32* @SCLK_CNTL__FORCE_DISP1, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @SCLK_CNTL__FORCE_DISP2, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @SCLK_CNTL__FORCE_TOP, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @SCLK_CNTL__FORCE_IDCT, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @SCLK_CNTL__FORCE_VIP, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* %3, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %278, %272
  br label %293

293:                                              ; preds = %292, %234
  %294 = load i32, i32* @pllSCLK_CNTL, align 4
  %295 = load i32, i32* %3, align 4
  %296 = call i32 @OUTPLL(i32 %294, i32 %295)
  %297 = call i32 @radeon_msleep(i32 16)
  %298 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %299 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @CHIP_FAMILY_R300, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %309, label %303

303:                                              ; preds = %293
  %304 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %305 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @CHIP_FAMILY_R350, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %323

309:                                              ; preds = %303, %293
  %310 = load i32, i32* @pllSCLK_CNTL2, align 4
  %311 = call i32 @INPLL(i32 %310)
  store i32 %311, i32* %3, align 4
  %312 = load i32, i32* @SCLK_CNTL2__R300_FORCE_TCL, align 4
  %313 = load i32, i32* @SCLK_CNTL2__R300_FORCE_GA, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @SCLK_CNTL2__R300_FORCE_CBA, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* %3, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %3, align 4
  %319 = load i32, i32* @pllSCLK_CNTL2, align 4
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @OUTPLL(i32 %319, i32 %320)
  %322 = call i32 @radeon_msleep(i32 16)
  br label %323

323:                                              ; preds = %309, %303
  %324 = load i32, i32* @pllCLK_PIN_CNTL, align 4
  %325 = call i32 @INPLL(i32 %324)
  store i32 %325, i32* %3, align 4
  %326 = load i32, i32* @CLK_PIN_CNTL__SCLK_DYN_START_CNTL, align 4
  %327 = xor i32 %326, -1
  %328 = load i32, i32* %3, align 4
  %329 = and i32 %328, %327
  store i32 %329, i32* %3, align 4
  %330 = load i32, i32* @pllCLK_PIN_CNTL, align 4
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @OUTPLL(i32 %330, i32 %331)
  %333 = call i32 @radeon_msleep(i32 15)
  %334 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %335 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %323
  %339 = load i32, i32* @pllMCLK_CNTL, align 4
  %340 = call i32 @INPLL(i32 %339)
  store i32 %340, i32* %3, align 4
  %341 = load i32, i32* @MCLK_CNTL__FORCE_MCLKA, align 4
  %342 = load i32, i32* @MCLK_CNTL__FORCE_YCLKA, align 4
  %343 = or i32 %341, %342
  %344 = xor i32 %343, -1
  %345 = load i32, i32* %3, align 4
  %346 = and i32 %345, %344
  store i32 %346, i32* %3, align 4
  %347 = load i32, i32* @pllMCLK_CNTL, align 4
  %348 = load i32, i32* %3, align 4
  %349 = call i32 @OUTPLL(i32 %347, i32 %348)
  %350 = call i32 @radeon_msleep(i32 16)
  br label %389

351:                                              ; preds = %323
  %352 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %353 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %388

356:                                              ; preds = %351
  %357 = load i32, i32* @pllMCLK_CNTL, align 4
  %358 = call i32 @INPLL(i32 %357)
  store i32 %358, i32* %3, align 4
  %359 = load i32, i32* @MCLK_CNTL__FORCE_MCLKA, align 4
  %360 = load i32, i32* @MCLK_CNTL__FORCE_MCLKB, align 4
  %361 = or i32 %359, %360
  %362 = load i32, i32* @MCLK_CNTL__FORCE_YCLKA, align 4
  %363 = or i32 %361, %362
  %364 = load i32, i32* @MCLK_CNTL__FORCE_YCLKB, align 4
  %365 = or i32 %363, %364
  %366 = load i32, i32* %3, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %3, align 4
  %368 = load i32, i32* @pllMCLK_CNTL, align 4
  %369 = load i32, i32* %3, align 4
  %370 = call i32 @OUTPLL(i32 %368, i32 %369)
  %371 = call i32 @radeon_msleep(i32 16)
  %372 = load i32, i32* @pllMCLK_MISC, align 4
  %373 = call i32 @INPLL(i32 %372)
  store i32 %373, i32* %3, align 4
  %374 = load i32, i32* @MCLK_MISC__MC_MCLK_MAX_DYN_STOP_LAT, align 4
  %375 = load i32, i32* @MCLK_MISC__IO_MCLK_MAX_DYN_STOP_LAT, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @MCLK_MISC__MC_MCLK_DYN_ENABLE, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @MCLK_MISC__IO_MCLK_DYN_ENABLE, align 4
  %380 = or i32 %378, %379
  %381 = xor i32 %380, -1
  %382 = load i32, i32* %3, align 4
  %383 = and i32 %382, %381
  store i32 %383, i32* %3, align 4
  %384 = load i32, i32* @pllMCLK_MISC, align 4
  %385 = load i32, i32* %3, align 4
  %386 = call i32 @OUTPLL(i32 %384, i32 %385)
  %387 = call i32 @radeon_msleep(i32 15)
  br label %388

388:                                              ; preds = %356, %351
  br label %389

389:                                              ; preds = %388, %338
  %390 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %391 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %408

394:                                              ; preds = %389
  %395 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %396 = call i32 @INPLL(i32 %395)
  store i32 %396, i32* %3, align 4
  %397 = load i32, i32* @SCLK_MORE_CNTL__FORCE_DISPREGS, align 4
  %398 = load i32, i32* @SCLK_MORE_CNTL__FORCE_MC_GUI, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @SCLK_MORE_CNTL__FORCE_MC_HOST, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* %3, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %3, align 4
  %404 = load i32, i32* @pllSCLK_MORE_CNTL, align 4
  %405 = load i32, i32* %3, align 4
  %406 = call i32 @OUTPLL(i32 %404, i32 %405)
  %407 = call i32 @radeon_msleep(i32 16)
  br label %408

408:                                              ; preds = %394, %389
  %409 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %410 = call i32 @INPLL(i32 %409)
  store i32 %410, i32* %3, align 4
  %411 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_GV_ALWAYS_ONb, align 4
  %412 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_BLEND_ALWAYS_ONb, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_DIG_TMDS_ALWAYS_ONb, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_LVDS_ALWAYS_ONb, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @PIXCLKS_CNTL__PIXCLK_TMDS_ALWAYS_ONb, align 4
  %419 = or i32 %417, %418
  %420 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_ALWAYS_ONb, align 4
  %421 = or i32 %419, %420
  %422 = load i32, i32* @PIXCLKS_CNTL__PIX2CLK_DAC_ALWAYS_ONb, align 4
  %423 = or i32 %421, %422
  %424 = xor i32 %423, -1
  %425 = load i32, i32* %3, align 4
  %426 = and i32 %425, %424
  store i32 %426, i32* %3, align 4
  %427 = load i32, i32* @pllPIXCLKS_CNTL, align 4
  %428 = load i32, i32* %3, align 4
  %429 = call i32 @OUTPLL(i32 %427, i32 %428)
  %430 = call i32 @radeon_msleep(i32 16)
  %431 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %432 = call i32 @INPLL(i32 %431)
  store i32 %432, i32* %3, align 4
  %433 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_ALWAYS_ONb, align 4
  %434 = load i32, i32* @VCLK_ECP_CNTL__PIXCLK_DAC_ALWAYS_ONb, align 4
  %435 = or i32 %433, %434
  %436 = xor i32 %435, -1
  %437 = load i32, i32* %3, align 4
  %438 = and i32 %437, %436
  store i32 %438, i32* %3, align 4
  %439 = load i32, i32* @pllVCLK_ECP_CNTL, align 4
  %440 = load i32, i32* %3, align 4
  %441 = call i32 @OUTPLL(i32 %439, i32 %440)
  %442 = call i32 @radeon_msleep(i32 16)
  br label %443

443:                                              ; preds = %408, %97, %58, %34
  ret void
}

declare dso_local i32 @INPLL(i32) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

declare dso_local i32 @radeon_msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
