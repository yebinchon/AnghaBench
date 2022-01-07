; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_3__, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pixclock_div = type { i32, i32, i32 }

@GSCTRL = common dso_local global i32 0, align 4
@GSADR = common dso_local global i32 0, align 4
@GSCTRL_GPIXFMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GSCTRL_LUT_EN = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@GSCTRL_GPIXFMT_ARGB1555 = common dso_local global i32 0, align 4
@GSCTRL_GPIXFMT_RGB565 = common dso_local global i32 0, align 4
@GSCTRL_GPIXFMT_RGB888 = common dso_local global i32 0, align 4
@GSCTRL_GPIXFMT_ARGB8888 = common dso_local global i32 0, align 4
@GSCTRL_GSWIDTH = common dso_local global i32 0, align 4
@GSCTRL_GSHEIGHT = common dso_local global i32 0, align 4
@GSADR_SRCSTRIDE = common dso_local global i32 0, align 4
@DISP_PLL_EN = common dso_local global i32 0, align 4
@DISPPLL = common dso_local global i32 0, align 4
@DHT01 = common dso_local global i32 0, align 4
@DHT02 = common dso_local global i32 0, align 4
@DHT03 = common dso_local global i32 0, align 4
@DHDET = common dso_local global i32 0, align 4
@DVT01 = common dso_local global i32 0, align 4
@DVT02 = common dso_local global i32 0, align 4
@DVT03 = common dso_local global i32 0, align 4
@DVDET = common dso_local global i32 0, align 4
@DVECTRL = common dso_local global i32 0, align 4
@DSCTRL = common dso_local global i32 0, align 4
@DSCTRL_SYNCGEN_EN = common dso_local global i32 0, align 4
@DINTRE_VEVENT0_EN = common dso_local global i32 0, align 4
@DINTRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @mbxfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.pixclock_div, align 4
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
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  store %struct.fb_var_screeninfo* %17, %struct.fb_var_screeninfo** %4, align 8
  %18 = load i32, i32* @GSCTRL, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @GSADR, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sdiv i32 %28, 8
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @GSCTRL_GPIXFMT, align 4
  %34 = call i32 @FMsk(i32 %33)
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %264

46:                                               ; preds = %1
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 2
  %49 = call i32 @fb_dealloc_cmap(i32* %48)
  %50 = load i32, i32* @GSCTRL_LUT_EN, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %86 [
    i32 16, label %62
    i32 24, label %78
    i32 32, label %82
  ]

62:                                               ; preds = %46
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 5
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @GSCTRL_GPIXFMT_ARGB1555, align 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* @GSCTRL_GPIXFMT_RGB565, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %86

78:                                               ; preds = %46
  %79 = load i32, i32* @GSCTRL_GPIXFMT_RGB888, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %86

82:                                               ; preds = %46
  %83 = load i32, i32* @GSCTRL_GPIXFMT_ARGB8888, align 4
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %46, %82, %78, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @GSCTRL_GSWIDTH, align 4
  %89 = call i32 @FMsk(i32 %88)
  %90 = load i32, i32* @GSCTRL_GSHEIGHT, align 4
  %91 = call i32 @FMsk(i32 %90)
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @Gsctrl_Width(i32 %99)
  %101 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @Gsctrl_Height(i32 %104)
  %106 = or i32 %100, %105
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @GSCTRL, align 4
  %111 = call i32 @write_reg_dly(i32 %109, i32 %110)
  %112 = load i32, i32* @GSADR_SRCSTRIDE, align 4
  %113 = call i32 @FMsk(i32 %112)
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %15, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %15, align 4
  %117 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %120, %124
  %126 = sdiv i32 %125, 128
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @Gsadr_Srcstride(i32 %127)
  %129 = load i32, i32* %15, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @GSADR, align 4
  %133 = call i32 @write_reg_dly(i32 %131, i32 %132)
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @mbxfb_get_pixclock(i32 %137, %struct.pixclock_div* %5)
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %5, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @Disp_Pll_M(i32 %142)
  %144 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %5, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @Disp_Pll_N(i32 %145)
  %147 = or i32 %143, %146
  %148 = getelementptr inbounds %struct.pixclock_div, %struct.pixclock_div* %5, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @Disp_Pll_P(i32 %149)
  %151 = or i32 %147, %150
  %152 = load i32, i32* @DISP_PLL_EN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @DISPPLL, align 4
  %155 = call i32 @write_reg_dly(i32 %153, i32 %154)
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %164, %167
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %171 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %7, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %182, %185
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @Dht01_Hbps(i32 %192)
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @Dht01_Ht(i32 %194)
  %196 = or i32 %193, %195
  %197 = load i32, i32* @DHT01, align 4
  %198 = call i32 @write_reg_dly(i32 %196, i32 %197)
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @Dht02_Hlbs(i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @Dht02_Has(i32 %201)
  %203 = or i32 %200, %202
  %204 = load i32, i32* @DHT02, align 4
  %205 = call i32 @write_reg_dly(i32 %203, i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @Dht03_Hfps(i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @Dht03_Hrbs(i32 %208)
  %210 = or i32 %207, %209
  %211 = load i32, i32* @DHT03, align 4
  %212 = call i32 @write_reg_dly(i32 %210, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @Dhdet_Hdes(i32 %213)
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @Dhdet_Hdef(i32 %215)
  %217 = or i32 %214, %216
  %218 = load i32, i32* @DHDET, align 4
  %219 = call i32 @write_reg_dly(i32 %217, i32 %218)
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @Dvt01_Vbps(i32 %220)
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @Dvt01_Vt(i32 %222)
  %224 = or i32 %221, %223
  %225 = load i32, i32* @DVT01, align 4
  %226 = call i32 @write_reg_dly(i32 %224, i32 %225)
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @Dvt02_Vtbs(i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @Dvt02_Vas(i32 %229)
  %231 = or i32 %228, %230
  %232 = load i32, i32* @DVT02, align 4
  %233 = call i32 @write_reg_dly(i32 %231, i32 %232)
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @Dvt03_Vfps(i32 %234)
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @Dvt03_Vbbs(i32 %236)
  %238 = or i32 %235, %237
  %239 = load i32, i32* @DVT03, align 4
  %240 = call i32 @write_reg_dly(i32 %238, i32 %239)
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @Dvdet_Vdes(i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @Dvdet_Vdef(i32 %243)
  %245 = or i32 %242, %244
  %246 = load i32, i32* @DVDET, align 4
  %247 = call i32 @write_reg_dly(i32 %245, i32 %246)
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @Dvectrl_Vevent(i32 %248)
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @Dvectrl_Vfetch(i32 %250)
  %252 = or i32 %249, %251
  %253 = load i32, i32* @DVECTRL, align 4
  %254 = call i32 @write_reg_dly(i32 %252, i32 %253)
  %255 = load i32, i32* @DSCTRL, align 4
  %256 = call i32 @readl(i32 %255)
  %257 = load i32, i32* @DSCTRL_SYNCGEN_EN, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @DSCTRL, align 4
  %260 = call i32 @write_reg_dly(i32 %258, i32 %259)
  %261 = load i32, i32* @DINTRE_VEVENT0_EN, align 4
  %262 = load i32, i32* @DINTRE, align 4
  %263 = call i32 @write_reg_dly(i32 %261, i32 %262)
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %87, %43
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FMsk(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @Gsctrl_Width(i32) #1

declare dso_local i32 @Gsctrl_Height(i32) #1

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @Gsadr_Srcstride(i32) #1

declare dso_local i32 @mbxfb_get_pixclock(i32, %struct.pixclock_div*) #1

declare dso_local i32 @Disp_Pll_M(i32) #1

declare dso_local i32 @Disp_Pll_N(i32) #1

declare dso_local i32 @Disp_Pll_P(i32) #1

declare dso_local i32 @Dht01_Hbps(i32) #1

declare dso_local i32 @Dht01_Ht(i32) #1

declare dso_local i32 @Dht02_Hlbs(i32) #1

declare dso_local i32 @Dht02_Has(i32) #1

declare dso_local i32 @Dht03_Hfps(i32) #1

declare dso_local i32 @Dht03_Hrbs(i32) #1

declare dso_local i32 @Dhdet_Hdes(i32) #1

declare dso_local i32 @Dhdet_Hdef(i32) #1

declare dso_local i32 @Dvt01_Vbps(i32) #1

declare dso_local i32 @Dvt01_Vt(i32) #1

declare dso_local i32 @Dvt02_Vtbs(i32) #1

declare dso_local i32 @Dvt02_Vas(i32) #1

declare dso_local i32 @Dvt03_Vfps(i32) #1

declare dso_local i32 @Dvt03_Vbbs(i32) #1

declare dso_local i32 @Dvdet_Vdes(i32) #1

declare dso_local i32 @Dvdet_Vdef(i32) #1

declare dso_local i32 @Dvectrl_Vevent(i32) #1

declare dso_local i32 @Dvectrl_Vfetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
