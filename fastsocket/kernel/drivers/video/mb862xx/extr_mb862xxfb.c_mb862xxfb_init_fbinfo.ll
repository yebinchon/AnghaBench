; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mb862xx/extr_mb862xxfb.c_mb862xxfb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mb862xx/extr_mb862xxfb.c_mb862xxfb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (%struct.TYPE_7__*, %struct.fb_info*)* }
%struct.TYPE_7__ = type { i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.fb_info = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32, i32, %struct.mb862xxfb_par* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.mb862xxfb_par = type { i64, i32, i32, i64, i32, i64, i32, i32, %struct.mb862xx_gc_mode* }
%struct.mb862xx_gc_mode = type { i32 }
%struct.fb_videomode = type { i32 }

@mb862xxfb_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@disp = common dso_local global i32 0, align 4
@GC_DCM1 = common dso_local global i32 0, align 4
@GC_DCM01_DEN = common dso_local global i64 0, align 8
@GC_DCM01_L0E = common dso_local global i64 0, align 8
@GC_DCM01_SC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"using bootloader's disp. mode\0A\00", align 1
@GC_HDB_HDP = common dso_local global i32 0, align 4
@GC_VDP_VSP = common dso_local global i32 0, align 4
@GC_L0EM = common dso_local global i32 0, align 4
@GC_L0EM_L0EC_24 = common dso_local global i64 0, align 8
@GC_L0M = common dso_local global i32 0, align 4
@GC_L0M_L0C_16 = common dso_local global i64 0, align 8
@GC_VSW_HSW_HSP = common dso_local global i32 0, align 4
@GC_HTP = common dso_local global i32 0, align 4
@GC_VTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"using supplied mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"640x480-16@60\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get initial mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"check_var() failed on initial setup?\0A\00", align 1
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FBINFO_FOREIGN_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @mb862xxfb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xxfb_init_fbinfo(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mb862xxfb_par*, align 8
  %5 = alloca %struct.mb862xx_gc_mode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 7
  %15 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %14, align 8
  store %struct.mb862xxfb_par* %15, %struct.mb862xxfb_par** %4, align 8
  %16 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %17 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %16, i32 0, i32 8
  %18 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %17, align 8
  store %struct.mb862xx_gc_mode* %18, %struct.mb862xx_gc_mode** %5, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 3
  store %struct.TYPE_8__* @mb862xxfb_ops, %struct.TYPE_8__** %20, align 8
  %21 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %22 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %27 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %32 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DRV_NAME, align 4
  %41 = call i32 @strcpy(i32 %39, i32 %40)
  %42 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %43 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %49 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 11
  store i32 %50, i32* %53, align 4
  %54 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %55 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %61 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @FB_ACCEL_NONE, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 9
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 8
  store i32 %70, i32* %73, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  store i64 0, i64* %76, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @disp, align 4
  %87 = load i32, i32* @GC_DCM1, align 4
  %88 = call i32 @inreg(i32 %86, i32 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @GC_DCM01_DEN, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %262

94:                                               ; preds = %1
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @GC_DCM01_L0E, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %262

99:                                               ; preds = %94
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @GC_DCM01_SC, align 8
  %102 = and i64 %100, %101
  %103 = lshr i64 %102, 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %7, align 8
  %105 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %106 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %109 = load i64, i64* %7, align 8
  %110 = mul i64 %109, 1000000
  %111 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %112 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = udiv i64 %110, %113
  %115 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load i32, i32* @disp, align 4
  %119 = load i32, i32* @GC_HDB_HDP, align 4
  %120 = call i32 @inreg(i32 %118, i32 %119)
  %121 = and i32 %120, 4095
  %122 = add nsw i32 %121, 1
  %123 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @disp, align 4
  %127 = load i32, i32* @GC_VDP_VSP, align 4
  %128 = call i32 @inreg(i32 %126, i32 %127)
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = lshr i64 %130, 16
  %132 = and i64 %131, 4095
  %133 = add i64 %132, 1
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i64 %133, i64* %136, align 8
  %137 = load i64, i64* %6, align 8
  %138 = and i64 %137, 4095
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 8
  %147 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %148 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  store i64 %150, i64* %153, align 8
  %154 = load i32, i32* @disp, align 4
  %155 = load i32, i32* @GC_L0EM, align 4
  %156 = call i32 @inreg(i32 %154, i32 %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %6, align 8
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @GC_L0EM_L0EC_24, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %99
  %163 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  store i32 32, i32* %165, align 8
  br label %184

166:                                              ; preds = %99
  %167 = load i32, i32* @disp, align 4
  %168 = load i32, i32* @GC_L0M, align 4
  %169 = call i32 @inreg(i32 %167, i32 %168)
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %6, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* @GC_L0M_L0C_16, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 5
  store i32 16, i32* %178, align 8
  br label %183

179:                                              ; preds = %166
  %180 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 5
  store i32 8, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %183, %162
  %185 = load i32, i32* @disp, align 4
  %186 = load i32, i32* @GC_VSW_HSW_HSP, align 4
  %187 = call i32 @inreg(i32 %185, i32 %186)
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %6, align 8
  %189 = load i64, i64* %6, align 8
  %190 = and i64 %189, 16711680
  %191 = lshr i64 %190, 16
  %192 = add i64 %191, 1
  %193 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 6
  store i64 %192, i64* %195, align 8
  %196 = load i64, i64* %6, align 8
  %197 = and i64 %196, 1056964608
  %198 = lshr i64 %197, 24
  %199 = add i64 %198, 1
  %200 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %201 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 7
  store i64 %199, i64* %202, align 8
  %203 = load i64, i64* %6, align 8
  %204 = and i64 %203, 65535
  %205 = add i64 %204, 1
  store i64 %205, i64* %8, align 8
  %206 = load i32, i32* @disp, align 4
  %207 = load i32, i32* @GC_HTP, align 4
  %208 = call i32 @inreg(i32 %206, i32 %207)
  %209 = and i32 %208, 268369920
  %210 = ashr i32 %209, 16
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %10, align 8
  %213 = load i64, i64* %8, align 8
  %214 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %215 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = sub i64 %213, %218
  %220 = trunc i64 %219 to i32
  %221 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %222 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 8
  store i32 %220, i32* %223, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %8, align 8
  %226 = sub i64 %224, %225
  %227 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = sub i64 %226, %230
  %232 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %233 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 9
  store i64 %231, i64* %234, align 8
  %235 = load i32, i32* @disp, align 4
  %236 = load i32, i32* @GC_VTR, align 4
  %237 = call i32 @inreg(i32 %235, i32 %236)
  %238 = and i32 %237, 268369920
  %239 = ashr i32 %238, 16
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %11, align 8
  %242 = load i64, i64* %9, align 8
  %243 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %244 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 %242, %246
  %248 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %249 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 10
  store i64 %247, i64* %250, align 8
  %251 = load i64, i64* %11, align 8
  %252 = load i64, i64* %9, align 8
  %253 = sub i64 %251, %252
  %254 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %255 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = sub i64 %253, %257
  %259 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %260 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 11
  store i64 %258, i64* %261, align 8
  br label %308

262:                                              ; preds = %94, %1
  %263 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %264 = icmp ne %struct.mb862xx_gc_mode* %263, null
  br i1 %264, label %265, label %289

265:                                              ; preds = %262
  %266 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %267 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dev_dbg(i32 %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %270 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %271 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %270, i32 0, i32 1
  %272 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %273 = bitcast %struct.mb862xx_gc_mode* %272 to %struct.fb_videomode*
  %274 = call i32 @fb_videomode_to_var(%struct.TYPE_7__* %271, %struct.fb_videomode* %273)
  %275 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %276 = getelementptr inbounds %struct.mb862xx_gc_mode, %struct.mb862xx_gc_mode* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %265
  %280 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %281 = getelementptr inbounds %struct.mb862xx_gc_mode, %struct.mb862xx_gc_mode* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  br label %284

283:                                              ; preds = %265
  br label %284

284:                                              ; preds = %283, %279
  %285 = phi i32 [ %282, %279 ], [ 8, %283 ]
  %286 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %287 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 5
  store i32 %285, i32* %288, align 8
  br label %307

289:                                              ; preds = %262
  %290 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %291 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %290, i32 0, i32 1
  %292 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %293 = call i32 @fb_find_mode(%struct.TYPE_7__* %291, %struct.fb_info* %292, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32* null, i32 16)
  store i32 %293, i32* %12, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %289
  %297 = load i32, i32* %12, align 4
  %298 = icmp eq i32 %297, 4
  br i1 %298, label %299, label %306

299:                                              ; preds = %296, %289
  %300 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %301 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @dev_err(i32 %302, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %2, align 4
  br label %388

306:                                              ; preds = %296
  br label %307

307:                                              ; preds = %306, %284
  br label %308

308:                                              ; preds = %307, %184
  %309 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %310 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 20
  store i64 0, i64* %311, align 8
  %312 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %313 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 19
  store i64 0, i64* %314, align 8
  %315 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %316 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 18
  store i64 0, i64* %317, align 8
  %318 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %319 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 17
  store i64 0, i64* %320, align 8
  %321 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %322 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 12
  store i32 -1, i32* %323, align 8
  %324 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %325 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 13
  store i32 -1, i32* %326, align 4
  %327 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %328 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 16
  store i64 0, i64* %329, align 8
  %330 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %331 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %332 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 15
  store i32 %330, i32* %333, align 4
  %334 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %335 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %336 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 14
  store i32 %334, i32* %337, align 8
  %338 = load i32, i32* @FBINFO_DEFAULT, align 4
  %339 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %342 = or i32 %340, %341
  %343 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %344 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %343, i32 0, i32 0
  store i32 %342, i32* %344, align 8
  %345 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %346 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %345, i32 0, i32 3
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i64 (%struct.TYPE_7__*, %struct.fb_info*)*, i64 (%struct.TYPE_7__*, %struct.fb_info*)** %348, align 8
  %350 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %351 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %350, i32 0, i32 1
  %352 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %353 = call i64 %349(%struct.TYPE_7__* %351, %struct.fb_info* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %308
  %356 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %357 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @dev_err(i32 %358, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %360

360:                                              ; preds = %355, %308
  %361 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %362 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = icmp eq i32 %364, 8
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %370

368:                                              ; preds = %360
  %369 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i32 [ %367, %366 ], [ %369, %368 ]
  %372 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %373 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 5
  store i32 %371, i32* %374, align 4
  %375 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %376 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %380 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 5
  %382 = load i32, i32* %381, align 8
  %383 = mul nsw i32 %378, %382
  %384 = sdiv i32 %383, 8
  %385 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %386 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 4
  store i32 %384, i32* %387, align 8
  store i32 0, i32* %2, align 4
  br label %388

388:                                              ; preds = %370, %299
  %389 = load i32, i32* %2, align 4
  ret i32 %389
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @inreg(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_7__*, %struct.fb_videomode*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_7__*, %struct.fb_info*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
