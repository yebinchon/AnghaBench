; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_crtc_to_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_atyfb_base.c_aty_crtc_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CRTC_CSYNC_EN = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_MASK = common dso_local global i32 0, align 4
@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@CRTC_INTERLACE_EN = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid pixel width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crtc*, %struct.fb_var_screeninfo*)* @aty_crtc_to_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_crtc_to_var(%struct.crtc* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crtc*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.crtc* %0, %struct.crtc** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  %31 = load %struct.crtc*, %struct.crtc** %4, align 8
  %32 = getelementptr inbounds %struct.crtc, %struct.crtc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 511
  store i32 %34, i32* %16, align 4
  %35 = load %struct.crtc*, %struct.crtc** %4, align 8
  %36 = getelementptr inbounds %struct.crtc, %struct.crtc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %17, align 4
  %40 = load %struct.crtc*, %struct.crtc** %4, align 8
  %41 = getelementptr inbounds %struct.crtc, %struct.crtc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = load %struct.crtc*, %struct.crtc** %4, align 8
  %45 = getelementptr inbounds %struct.crtc, %struct.crtc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 4
  %48 = and i32 %47, 256
  %49 = or i32 %43, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.crtc*, %struct.crtc** %4, align 8
  %51 = getelementptr inbounds %struct.crtc, %struct.crtc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 7
  store i32 %54, i32* %19, align 4
  %55 = load %struct.crtc*, %struct.crtc** %4, align 8
  %56 = getelementptr inbounds %struct.crtc, %struct.crtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 31
  store i32 %59, i32* %20, align 4
  %60 = load %struct.crtc*, %struct.crtc** %4, align 8
  %61 = getelementptr inbounds %struct.crtc, %struct.crtc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 21
  %64 = and i32 %63, 1
  store i32 %64, i32* %21, align 4
  %65 = load %struct.crtc*, %struct.crtc** %4, align 8
  %66 = getelementptr inbounds %struct.crtc, %struct.crtc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 2047
  store i32 %68, i32* %22, align 4
  %69 = load %struct.crtc*, %struct.crtc** %4, align 8
  %70 = getelementptr inbounds %struct.crtc, %struct.crtc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 2047
  store i32 %73, i32* %23, align 4
  %74 = load %struct.crtc*, %struct.crtc** %4, align 8
  %75 = getelementptr inbounds %struct.crtc, %struct.crtc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 2047
  store i32 %77, i32* %24, align 4
  %78 = load %struct.crtc*, %struct.crtc** %4, align 8
  %79 = getelementptr inbounds %struct.crtc, %struct.crtc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 16
  %82 = and i32 %81, 31
  store i32 %82, i32* %25, align 4
  %83 = load %struct.crtc*, %struct.crtc** %4, align 8
  %84 = getelementptr inbounds %struct.crtc, %struct.crtc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 21
  %87 = and i32 %86, 1
  store i32 %87, i32* %26, align 4
  %88 = load %struct.crtc*, %struct.crtc** %4, align 8
  %89 = getelementptr inbounds %struct.crtc, %struct.crtc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CRTC_CSYNC_EN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 1, i32 0
  store i32 %95, i32* %27, align 4
  %96 = load %struct.crtc*, %struct.crtc** %4, align 8
  %97 = getelementptr inbounds %struct.crtc, %struct.crtc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CRTC_PIX_WIDTH_MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %28, align 4
  %101 = load %struct.crtc*, %struct.crtc** %4, align 8
  %102 = getelementptr inbounds %struct.crtc, %struct.crtc* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CRTC_DBL_SCAN_EN, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %29, align 4
  %106 = load %struct.crtc*, %struct.crtc** %4, align 8
  %107 = getelementptr inbounds %struct.crtc, %struct.crtc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CRTC_INTERLACE_EN, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %30, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  %113 = mul nsw i32 %112, 8
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %23, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %20, align 4
  %120 = sub nsw i32 %118, %119
  %121 = mul nsw i32 %120, 8
  %122 = load i32, i32* %19, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %124, %125
  %127 = mul nsw i32 %126, 8
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %20, align 4
  %131 = mul nsw i32 %130, 8
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %24, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* %25, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %23, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %25, align 4
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %2
  br label %146

144:                                              ; preds = %2
  %145 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  br label %146

146:                                              ; preds = %144, %143
  %147 = phi i32 [ 0, %143 ], [ %145, %144 ]
  %148 = load i32, i32* %26, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = phi i32 [ 0, %150 ], [ %152, %151 ]
  %155 = or i32 %147, %154
  %156 = load i32, i32* %27, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  br label %161

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %159, %158 ], [ 0, %160 ]
  %163 = or i32 %155, %162
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %28, align 4
  switch i32 %164, label %290 [
    i32 128, label %165
    i32 133, label %190
    i32 132, label %215
    i32 131, label %240
    i32 130, label %265
  ]

165:                                              ; preds = %161
  store i32 8, i32* %8, align 4
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 16
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 16
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store i32 8, i32* %171, align 4
  %172 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %173 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %176 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i32 8, i32* %177, align 4
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 14
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %182 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %181, i32 0, i32 14
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i32 8, i32* %183, align 4
  %184 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %185 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %184, i32 0, i32 13
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 4
  %187 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %188 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %187, i32 0, i32 13
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i32 0, i32* %189, align 4
  br label %294

190:                                              ; preds = %161
  store i32 16, i32* %8, align 4
  %191 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %192 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %191, i32 0, i32 16
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  store i32 10, i32* %193, align 4
  %194 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %195 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %194, i32 0, i32 16
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i32 5, i32* %196, align 4
  %197 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %198 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32 5, i32* %199, align 4
  %200 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i32 5, i32* %202, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 14
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  store i32 0, i32* %205, align 4
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 14
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i32 5, i32* %208, align 4
  %209 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %210 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %209, i32 0, i32 13
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 4
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 13
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i32 0, i32* %214, align 4
  br label %294

215:                                              ; preds = %161
  store i32 16, i32* %8, align 4
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 16
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  store i32 11, i32* %218, align 4
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 16
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  store i32 5, i32* %221, align 4
  %222 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %223 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %222, i32 0, i32 15
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 5, i32* %224, align 4
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i32 6, i32* %227, align 4
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 14
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 14
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i32 5, i32* %233, align 4
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 13
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i32 0, i32* %236, align 4
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 13
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i32 0, i32* %239, align 4
  br label %294

240:                                              ; preds = %161
  store i32 24, i32* %8, align 4
  %241 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %242 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %241, i32 0, i32 16
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  store i32 16, i32* %243, align 4
  %244 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %245 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %244, i32 0, i32 16
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  store i32 8, i32* %246, align 4
  %247 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %248 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  store i32 8, i32* %249, align 4
  %250 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %251 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  store i32 8, i32* %252, align 4
  %253 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %254 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %253, i32 0, i32 14
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  %256 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %257 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %256, i32 0, i32 14
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  store i32 8, i32* %258, align 4
  %259 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %260 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %259, i32 0, i32 13
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 4
  %262 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %263 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %262, i32 0, i32 13
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  store i32 0, i32* %264, align 4
  br label %294

265:                                              ; preds = %161
  store i32 32, i32* %8, align 4
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 16
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  store i32 16, i32* %268, align 4
  %269 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %270 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %269, i32 0, i32 16
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  store i32 8, i32* %271, align 4
  %272 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %273 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  store i32 8, i32* %274, align 4
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  store i32 8, i32* %277, align 4
  %278 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %279 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %278, i32 0, i32 14
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  store i32 0, i32* %280, align 4
  %281 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %282 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %281, i32 0, i32 14
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  store i32 8, i32* %283, align 4
  %284 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %285 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %284, i32 0, i32 13
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  store i32 24, i32* %286, align 4
  %287 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %288 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %287, i32 0, i32 13
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 1
  store i32 8, i32* %289, align 4
  br label %294

290:                                              ; preds = %161
  %291 = call i32 @PRINTKE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %3, align 4
  br label %368

294:                                              ; preds = %265, %240, %215, %190, %165
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %297 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %7, align 4
  %299 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %300 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.crtc*, %struct.crtc** %4, align 8
  %302 = getelementptr inbounds %struct.crtc, %struct.crtc* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %305 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %304, i32 0, i32 12
  store i32 %303, i32* %305, align 4
  %306 = load %struct.crtc*, %struct.crtc** %4, align 8
  %307 = getelementptr inbounds %struct.crtc, %struct.crtc* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 11
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %313 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %316 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 4
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* %12, align 4
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 6
  store i32 %323, i32* %325, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 7
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %14, align 4
  %330 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %331 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %15, align 4
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 9
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %337 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %336, i32 0, i32 10
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %30, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %294
  %341 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 10
  store i32 %341, i32* %343, align 4
  br label %344

344:                                              ; preds = %340, %294
  %345 = load i32, i32* %29, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %367

347:                                              ; preds = %344
  %348 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %349 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %350 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %349, i32 0, i32 10
  store i32 %348, i32* %350, align 4
  %351 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %352 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = ashr i32 %353, 1
  store i32 %354, i32* %352, align 4
  %355 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %356 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = ashr i32 %357, 1
  store i32 %358, i32* %356, align 4
  %359 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %360 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %359, i32 0, i32 6
  %361 = load i32, i32* %360, align 4
  %362 = ashr i32 %361, 1
  store i32 %362, i32* %360, align 4
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 8
  %365 = load i32, i32* %364, align 4
  %366 = ashr i32 %365, 1
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %347, %344
  store i32 0, i32* %3, align 4
  br label %368

368:                                              ; preds = %367, %290
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i32 @PRINTKE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
