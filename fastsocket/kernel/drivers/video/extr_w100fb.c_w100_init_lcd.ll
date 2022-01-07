; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_init_lcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100_init_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w100fb_par = type { %struct.TYPE_7__*, %struct.w100_mode* }
%struct.TYPE_7__ = type { %struct.w100_gen_regs* }
%struct.w100_gen_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.w100_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%union.active_h_disp_u = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%union.active_v_disp_u = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%union.graphic_h_disp_u = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%union.graphic_v_disp_u = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%union.crtc_total_u = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@remapped_regs = common dso_local global i64 0, align 8
@mmACTIVE_H_DISP = common dso_local global i64 0, align 8
@mmACTIVE_V_DISP = common dso_local global i64 0, align 8
@mmGRAPHIC_H_DISP = common dso_local global i64 0, align 8
@mmGRAPHIC_V_DISP = common dso_local global i64 0, align 8
@mmCRTC_TOTAL = common dso_local global i64 0, align 8
@mmCRTC_SS = common dso_local global i64 0, align 8
@mmCRTC_LS = common dso_local global i64 0, align 8
@mmCRTC_GS = common dso_local global i64 0, align 8
@mmCRTC_VPOS_GS = common dso_local global i64 0, align 8
@mmCRTC_REV = common dso_local global i64 0, align 8
@mmCRTC_DCLK = common dso_local global i64 0, align 8
@mmCRTC_GCLK = common dso_local global i64 0, align 8
@mmCRTC_GOE = common dso_local global i64 0, align 8
@mmCRTC_PS1_ACTIVE = common dso_local global i64 0, align 8
@mmLCD_FORMAT = common dso_local global i64 0, align 8
@mmLCDD_CNTL1 = common dso_local global i64 0, align 8
@mmLCDD_CNTL2 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL1 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL2 = common dso_local global i64 0, align 8
@mmGENLCD_CNTL3 = common dso_local global i64 0, align 8
@mmCRTC_FRAME = common dso_local global i64 0, align 8
@mmCRTC_FRAME_VPOS = common dso_local global i64 0, align 8
@mmCRTC_DEFAULT_COUNT = common dso_local global i64 0, align 8
@mmLCD_BACKGROUND_COLOR = common dso_local global i64 0, align 8
@mmDISP_DEBUG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_init_lcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_init_lcd(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.w100_mode*, align 8
  %5 = alloca %struct.w100_gen_regs*, align 8
  %6 = alloca %union.active_h_disp_u, align 8
  %7 = alloca %union.active_v_disp_u, align 8
  %8 = alloca %union.graphic_h_disp_u, align 8
  %9 = alloca %union.graphic_v_disp_u, align 8
  %10 = alloca %union.crtc_total_u, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  %11 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %12 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %11, i32 0, i32 1
  %13 = load %struct.w100_mode*, %struct.w100_mode** %12, align 8
  store %struct.w100_mode* %13, %struct.w100_mode** %4, align 8
  %14 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %15 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %17, align 8
  store %struct.w100_gen_regs* %18, %struct.w100_gen_regs** %5, align 8
  %19 = bitcast %union.active_h_disp_u* %6 to i32*
  store i32 0, i32* %19, align 8
  %20 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %21 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %20, i32 0, i32 14
  %22 = load i64, i64* %21, align 8
  %23 = bitcast %union.active_h_disp_u* %6 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %26 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %29 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = bitcast %union.active_h_disp_u* %6 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = bitcast %union.active_h_disp_u* %6 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @remapped_regs, align 8
  %37 = load i64, i64* @mmACTIVE_H_DISP, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = bitcast %union.active_v_disp_u* %7 to i32*
  store i32 0, i32* %40, align 8
  %41 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %42 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = bitcast %union.active_v_disp_u* %7 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %47 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %46, i32 0, i32 11
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %50 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = bitcast %union.active_v_disp_u* %7 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = bitcast %union.active_v_disp_u* %7 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @remapped_regs, align 8
  %58 = load i64, i64* @mmACTIVE_V_DISP, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %56, i64 %59)
  %61 = bitcast %union.graphic_h_disp_u* %8 to i32*
  store i32 0, i32* %61, align 8
  %62 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %63 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %62, i32 0, i32 14
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %union.graphic_h_disp_u* %8 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %68 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %67, i32 0, i32 14
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %71 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %70, i32 0, i32 13
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = bitcast %union.graphic_h_disp_u* %8 to %struct.TYPE_10__*
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = bitcast %union.graphic_h_disp_u* %8 to i32*
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* @remapped_regs, align 8
  %79 = load i64, i64* @mmGRAPHIC_H_DISP, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %77, i64 %80)
  %82 = bitcast %union.graphic_v_disp_u* %9 to i32*
  store i32 0, i32* %82, align 8
  %83 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %84 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = bitcast %union.graphic_v_disp_u* %9 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %89 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %92 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = bitcast %union.graphic_v_disp_u* %9 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = bitcast %union.graphic_v_disp_u* %9 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* @remapped_regs, align 8
  %100 = load i64, i64* @mmGRAPHIC_V_DISP, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %98, i64 %101)
  %103 = bitcast %union.crtc_total_u* %10 to i32*
  store i32 0, i32* %103, align 8
  %104 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %105 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %104, i32 0, i32 14
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %108 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %107, i32 0, i32 13
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %112 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %111, i32 0, i32 12
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = bitcast %union.crtc_total_u* %10 to %struct.TYPE_12__*
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %118 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %117, i32 0, i32 11
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %121 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %120, i32 0, i32 10
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %125 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = bitcast %union.crtc_total_u* %10 to %struct.TYPE_12__*
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = bitcast %union.crtc_total_u* %10 to i32*
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* @remapped_regs, align 8
  %133 = load i64, i64* @mmCRTC_TOTAL, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %131, i64 %134)
  %136 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %137 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* @remapped_regs, align 8
  %140 = load i64, i64* @mmCRTC_SS, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %138, i64 %141)
  %143 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %144 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* @remapped_regs, align 8
  %147 = load i64, i64* @mmCRTC_LS, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %145, i64 %148)
  %150 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %151 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* @remapped_regs, align 8
  %154 = load i64, i64* @mmCRTC_GS, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %152, i64 %155)
  %157 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %158 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* @remapped_regs, align 8
  %161 = load i64, i64* @mmCRTC_VPOS_GS, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %159, i64 %162)
  %164 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %165 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* @remapped_regs, align 8
  %168 = load i64, i64* @mmCRTC_REV, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %166, i64 %169)
  %171 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %172 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* @remapped_regs, align 8
  %175 = load i64, i64* @mmCRTC_DCLK, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i32 %173, i64 %176)
  %178 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %179 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* @remapped_regs, align 8
  %182 = load i64, i64* @mmCRTC_GCLK, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %180, i64 %183)
  %185 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %186 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = load i64, i64* @remapped_regs, align 8
  %189 = load i64, i64* @mmCRTC_GOE, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i32 %187, i64 %190)
  %192 = load %struct.w100_mode*, %struct.w100_mode** %4, align 8
  %193 = getelementptr inbounds %struct.w100_mode, %struct.w100_mode* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i64, i64* @remapped_regs, align 8
  %196 = load i64, i64* @mmCRTC_PS1_ACTIVE, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i32 %194, i64 %197)
  %199 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %200 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* @remapped_regs, align 8
  %203 = load i64, i64* @mmLCD_FORMAT, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 %201, i64 %204)
  %206 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %207 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* @remapped_regs, align 8
  %210 = load i64, i64* @mmLCDD_CNTL1, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel(i32 %208, i64 %211)
  %213 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %214 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i64, i64* @remapped_regs, align 8
  %217 = load i64, i64* @mmLCDD_CNTL2, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writel(i32 %215, i64 %218)
  %220 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %221 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* @remapped_regs, align 8
  %224 = load i64, i64* @mmGENLCD_CNTL1, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %222, i64 %225)
  %227 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %228 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load i64, i64* @remapped_regs, align 8
  %231 = load i64, i64* @mmGENLCD_CNTL2, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writel(i32 %229, i64 %232)
  %234 = load %struct.w100_gen_regs*, %struct.w100_gen_regs** %5, align 8
  %235 = getelementptr inbounds %struct.w100_gen_regs, %struct.w100_gen_regs* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = load i64, i64* @remapped_regs, align 8
  %238 = load i64, i64* @mmGENLCD_CNTL3, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %236, i64 %239)
  %241 = load i64, i64* @remapped_regs, align 8
  %242 = load i64, i64* @mmCRTC_FRAME, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 0, i64 %243)
  %245 = load i64, i64* @remapped_regs, align 8
  %246 = load i64, i64* @mmCRTC_FRAME_VPOS, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @writel(i32 0, i64 %247)
  %249 = load i64, i64* @remapped_regs, align 8
  %250 = load i64, i64* @mmCRTC_DEFAULT_COUNT, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i32 0, i64 %251)
  %253 = load i64, i64* @remapped_regs, align 8
  %254 = load i64, i64* @mmLCD_BACKGROUND_COLOR, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @writel(i32 65280, i64 %255)
  %257 = load i64, i64* @remapped_regs, align 8
  %258 = load i64, i64* @mmDISP_DEBUG2, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @readl(i64 %259)
  store i32 %260, i32* %3, align 4
  %261 = load i32, i32* %3, align 4
  %262 = or i32 %261, -1073741824
  store i32 %262, i32* %3, align 4
  %263 = load i32, i32* %3, align 4
  %264 = load i64, i64* @remapped_regs, align 8
  %265 = load i64, i64* @mmDISP_DEBUG2, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @writel(i32 %263, i64 %266)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
