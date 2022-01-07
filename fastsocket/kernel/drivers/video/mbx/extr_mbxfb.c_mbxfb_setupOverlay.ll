; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_setupOverlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_setupOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbxfb_overlaySetup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VOVRCLK = common dso_local global i32 0, align 4
@VSCTRL = common dso_local global i32 0, align 4
@VSCADR = common dso_local global i32 0, align 4
@VUBASE = common dso_local global i32 0, align 4
@VVBASE = common dso_local global i32 0, align 4
@SHCTRL = common dso_local global i32 0, align 4
@SPOCTRL = common dso_local global i32 0, align 4
@SSSIZE = common dso_local global i32 0, align 4
@VSCTRL_VSWIDTH = common dso_local global i32 0, align 4
@VSCTRL_VSHEIGHT = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT = common dso_local global i32 0, align 4
@VSCTRL_GAMMA_EN = common dso_local global i32 0, align 4
@VSCTRL_CSC_EN = common dso_local global i32 0, align 4
@VSCTRL_COSITED = common dso_local global i32 0, align 4
@VSCADR_STR_EN = common dso_local global i32 0, align 4
@VSCADR_VBASE_ADR = common dso_local global i32 0, align 4
@VUBASE_UVHALFSTR = common dso_local global i32 0, align 4
@VUBASE_UBASE_ADR = common dso_local global i32 0, align 4
@VVBASE_VBASE_ADR = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT_YUV12 = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT_UY0VY1 = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT_VY0UY1 = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT_Y0UY1V = common dso_local global i32 0, align 4
@VSCTRL_VPIXFMT_Y0VY1U = common dso_local global i32 0, align 4
@SSSIZE_SC_WIDTH = common dso_local global i32 0, align 4
@SSSIZE_SC_HEIGHT = common dso_local global i32 0, align 4
@SPOCTRL_H_SC_BP = common dso_local global i32 0, align 4
@SPOCTRL_V_SC_BP = common dso_local global i32 0, align 4
@SPOCTRL_HV_SC_OR = common dso_local global i32 0, align 4
@SPOCTRL_VS_UR_C = common dso_local global i32 0, align 4
@SPOCTRL_VPITCH = common dso_local global i32 0, align 4
@SHCTRL_HPITCH = common dso_local global i32 0, align 4
@SHCTRL_HDECIM = common dso_local global i32 0, align 4
@VSADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbxfb_overlaySetup*)* @mbxfb_setupOverlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_setupOverlay(%struct.mbxfb_overlaySetup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbxfb_overlaySetup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbxfb_overlaySetup* %0, %struct.mbxfb_overlaySetup** %3, align 8
  %13 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %14 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %19 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %381

25:                                               ; preds = %17
  %26 = load i32, i32* @VOVRCLK, align 4
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @VSCTRL, align 4
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @VSCADR, align 4
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @VUBASE, align 4
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @VVBASE, align 4
  %35 = call i32 @readl(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @SHCTRL, align 4
  %37 = call i32 @readl(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @SPOCTRL, align 4
  %39 = call i32 @readl(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* @SSSIZE, align 4
  %41 = call i32 @readl(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @VSCTRL_VSWIDTH, align 4
  %43 = call i32 @FMsk(i32 %42)
  %44 = load i32, i32* @VSCTRL_VSHEIGHT, align 4
  %45 = call i32 @FMsk(i32 %44)
  %46 = or i32 %43, %45
  %47 = load i32, i32* @VSCTRL_VPIXFMT, align 4
  %48 = call i32 @FMsk(i32 %47)
  %49 = or i32 %46, %48
  %50 = load i32, i32* @VSCTRL_GAMMA_EN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VSCTRL_CSC_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @VSCTRL_COSITED, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %60 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Vsctrl_Width(i32 %61)
  %63 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %64 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Vsctrl_Height(i32 %65)
  %67 = or i32 %62, %66
  %68 = load i32, i32* @VSCTRL_CSC_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @VSCADR_STR_EN, align 4
  %73 = load i32, i32* @VSCADR_VBASE_ADR, align 4
  %74 = call i32 @FMsk(i32 %73)
  %75 = or i32 %72, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @VUBASE_UVHALFSTR, align 4
  %80 = load i32, i32* @VUBASE_UBASE_ADR, align 4
  %81 = call i32 @FMsk(i32 %80)
  %82 = or i32 %79, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @VVBASE_VBASE_ADR, align 4
  %87 = call i32 @FMsk(i32 %86)
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %92 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %167 [
    i32 128, label %94
    i32 129, label %105
    i32 133, label %119
    i32 132, label %131
    i32 131, label %143
    i32 130, label %155
  ]

94:                                               ; preds = %25
  %95 = load i32, i32* @VSCTRL_VPIXFMT_YUV12, align 4
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %99 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 15
  %102 = and i32 %101, -16
  %103 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %104 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %170

105:                                              ; preds = %25
  %106 = load i32, i32* @VSCTRL_VPIXFMT_YUV12, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %110 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 15
  %113 = and i32 %112, -16
  %114 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %115 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @VUBASE_UVHALFSTR, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %170

119:                                              ; preds = %25
  %120 = load i32, i32* @VSCTRL_VPIXFMT_UY0VY1, align 4
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %124 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 %126, 15
  %128 = and i32 %127, -16
  %129 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %130 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  br label %170

131:                                              ; preds = %25
  %132 = load i32, i32* @VSCTRL_VPIXFMT_VY0UY1, align 4
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %136 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  %139 = add nsw i32 %138, 15
  %140 = and i32 %139, -16
  %141 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %142 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  br label %170

143:                                              ; preds = %25
  %144 = load i32, i32* @VSCTRL_VPIXFMT_Y0UY1V, align 4
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %148 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %149, 2
  %151 = add nsw i32 %150, 15
  %152 = and i32 %151, -16
  %153 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %154 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  br label %170

155:                                              ; preds = %25
  %156 = load i32, i32* @VSCTRL_VPIXFMT_Y0VY1U, align 4
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %160 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 %162, 15
  %164 = and i32 %163, -16
  %165 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %166 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  br label %170

167:                                              ; preds = %25
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %381

170:                                              ; preds = %155, %143, %131, %119, %105, %94
  %171 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %172 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = sdiv i32 %173, 2
  %175 = add nsw i32 %174, 7
  %176 = and i32 %175, -8
  %177 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %178 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %180 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %183 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %181, %184
  %186 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %187 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %189 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %192 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %195 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %193, %196
  %198 = add nsw i32 %190, %197
  %199 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %200 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %199, i32 0, i32 8
  store i32 %198, i32* %200, align 8
  %201 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %202 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 393216, %203
  %205 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %206 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %204, %207
  %209 = ashr i32 %208, 3
  %210 = call i32 @Vubase_Ubase_Adr(i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %10, align 4
  %213 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %214 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %213, i32 0, i32 9
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 393216, %215
  %217 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %218 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %217, i32 0, i32 8
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %216, %219
  %221 = ashr i32 %220, 3
  %222 = call i32 @Vvbase_Vbase_Adr(i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %226 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 393216, %227
  %229 = ashr i32 %228, 4
  %230 = call i32 @Vscadr_Vbase_Adr(i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %5, align 4
  %233 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %234 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %170
  %238 = load i32, i32* @VSCADR_STR_EN, align 4
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %170
  %242 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %243 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %244, 16
  %246 = sub nsw i32 %245, 1
  %247 = call i32 @Vsadr_Srcstride(i32 %246)
  %248 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %249 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %248, i32 0, i32 12
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @Vsadr_Xstart(i32 %250)
  %252 = or i32 %247, %251
  %253 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %254 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @Vsadr_Ystart(i32 %255)
  %257 = or i32 %252, %256
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* @SSSIZE_SC_WIDTH, align 4
  %259 = call i32 @FMsk(i32 %258)
  %260 = load i32, i32* @SSSIZE_SC_HEIGHT, align 4
  %261 = call i32 @FMsk(i32 %260)
  %262 = or i32 %259, %261
  %263 = xor i32 %262, -1
  %264 = load i32, i32* %7, align 4
  %265 = and i32 %264, %263
  store i32 %265, i32* %7, align 4
  %266 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %267 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %268, 1
  %270 = call i32 @Sssize_Sc_Width(i32 %269)
  %271 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %272 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, 1
  %275 = call i32 @Sssize_Sc_Height(i32 %274)
  %276 = or i32 %270, %275
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* @SPOCTRL_H_SC_BP, align 4
  %278 = load i32, i32* @SPOCTRL_V_SC_BP, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @SPOCTRL_HV_SC_OR, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @SPOCTRL_VS_UR_C, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @SPOCTRL_VPITCH, align 4
  %285 = call i32 @FMsk(i32 %284)
  %286 = or i32 %283, %285
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %8, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %8, align 4
  %290 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %291 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 11
  %294 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %295 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = sdiv i32 %293, %296
  %298 = call i32 @Spoctrl_Vpitch(i32 %297)
  %299 = load i32, i32* %8, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %8, align 4
  %301 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %302 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %305 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %303, %306
  br i1 %307, label %308, label %312

308:                                              ; preds = %241
  %309 = load i32, i32* @SPOCTRL_H_SC_BP, align 4
  %310 = load i32, i32* %8, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %308, %241
  %313 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %314 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %317 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %315, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %312
  %321 = load i32, i32* @SPOCTRL_V_SC_BP, align 4
  %322 = load i32, i32* %8, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %8, align 4
  br label %324

324:                                              ; preds = %320, %312
  %325 = load i32, i32* @SHCTRL_HPITCH, align 4
  %326 = call i32 @FMsk(i32 %325)
  %327 = load i32, i32* @SHCTRL_HDECIM, align 4
  %328 = or i32 %326, %327
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %9, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %9, align 4
  %332 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %333 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = shl i32 %334, 11
  %336 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %337 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = sdiv i32 %335, %338
  %340 = call i32 @Shctrl_Hpitch(i32 %339)
  %341 = load i32, i32* %9, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* @VSCTRL, align 4
  %345 = call i32 @write_reg(i32 %343, i32 %344)
  %346 = load i32, i32* %5, align 4
  %347 = load i32, i32* @VSCADR, align 4
  %348 = call i32 @write_reg(i32 %346, i32 %347)
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* @VUBASE, align 4
  %351 = call i32 @write_reg(i32 %349, i32 %350)
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* @VVBASE, align 4
  %354 = call i32 @write_reg(i32 %352, i32 %353)
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @VSADR, align 4
  %357 = call i32 @write_reg(i32 %355, i32 %356)
  %358 = load i32, i32* %7, align 4
  %359 = load i32, i32* @SSSIZE, align 4
  %360 = call i32 @write_reg(i32 %358, i32 %359)
  %361 = load i32, i32* %8, align 4
  %362 = load i32, i32* @SPOCTRL, align 4
  %363 = call i32 @write_reg(i32 %361, i32 %362)
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* @SHCTRL, align 4
  %366 = call i32 @write_reg(i32 %364, i32 %365)
  %367 = load %struct.mbxfb_overlaySetup*, %struct.mbxfb_overlaySetup** %3, align 8
  %368 = getelementptr inbounds %struct.mbxfb_overlaySetup, %struct.mbxfb_overlaySetup* %367, i32 0, i32 10
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %324
  %372 = load i32, i32* %12, align 4
  %373 = or i32 %372, 1
  store i32 %373, i32* %12, align 4
  br label %377

374:                                              ; preds = %324
  %375 = load i32, i32* %12, align 4
  %376 = and i32 %375, -2
  store i32 %376, i32* %12, align 4
  br label %377

377:                                              ; preds = %374, %371
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* @VOVRCLK, align 4
  %380 = call i32 @write_reg(i32 %378, i32 %379)
  store i32 0, i32* %2, align 4
  br label %381

381:                                              ; preds = %377, %167, %22
  %382 = load i32, i32* %2, align 4
  ret i32 %382
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FMsk(i32) #1

declare dso_local i32 @Vsctrl_Width(i32) #1

declare dso_local i32 @Vsctrl_Height(i32) #1

declare dso_local i32 @Vubase_Ubase_Adr(i32) #1

declare dso_local i32 @Vvbase_Vbase_Adr(i32) #1

declare dso_local i32 @Vscadr_Vbase_Adr(i32) #1

declare dso_local i32 @Vsadr_Srcstride(i32) #1

declare dso_local i32 @Vsadr_Xstart(i32) #1

declare dso_local i32 @Vsadr_Ystart(i32) #1

declare dso_local i32 @Sssize_Sc_Width(i32) #1

declare dso_local i32 @Sssize_Sc_Height(i32) #1

declare dso_local i32 @Spoctrl_Vpitch(i32) #1

declare dso_local i32 @Shctrl_Hpitch(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
