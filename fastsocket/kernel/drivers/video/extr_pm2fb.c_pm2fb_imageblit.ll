; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.pm2fb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pm2fb_par = type { i32* }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@PM2R_FB_READ_MODE = common dso_local global i32 0, align 4
@PM2R_SCISSOR_MIN_XY = common dso_local global i32 0, align 4
@PM2R_SCISSOR_MAX_XY = common dso_local global i32 0, align 4
@PM2R_SCISSOR_MODE = common dso_local global i32 0, align 4
@PM2R_LOGICAL_OP_MODE = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_ORIGIN = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_SIZE = common dso_local global i32 0, align 4
@PM2R_COLOR_DDA_MODE = common dso_local global i32 0, align 4
@PM2R_CONSTANT_COLOR = common dso_local global i32 0, align 4
@PM2R_RENDER = common dso_local global i32 0, align 4
@PM2F_RENDER_RECTANGLE = common dso_local global i32 0, align 4
@PM2F_INCREASE_X = common dso_local global i32 0, align 4
@PM2F_INCREASE_Y = common dso_local global i32 0, align 4
@PM2R_RASTERIZER_MODE = common dso_local global i32 0, align 4
@PM2F_RENDER_SYNC_ON_BIT_MASK = common dso_local global i32 0, align 4
@PM2R_FB_BLOCK_COLOR = common dso_local global i32 0, align 4
@PM2F_RENDER_FASTFILL = common dso_local global i32 0, align 4
@PM2R_BIT_MASK_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @pm2fb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2fb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 5
  %15 = load %struct.pm2fb_par*, %struct.pm2fb_par** %14, align 8
  store %struct.pm2fb_par* %15, %struct.pm2fb_par** %5, align 8
  %16 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %17 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %20 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 31
  %28 = and i32 %27, -32
  store i32 %28, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %312

35:                                               ; preds = %2
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %44 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %35
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %50 = call i32 @cfb_imageblit(%struct.fb_info* %48, %struct.fb_image* %49)
  br label %312

51:                                               ; preds = %42
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %64 [
    i32 129, label %56
    i32 128, label %63
  ]

56:                                               ; preds = %51
  %57 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %58 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %61 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  br label %83

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %51, %63
  %65 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %66 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %69 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %75 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %78 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %64, %56
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 %90, 8
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %89, %83
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 16
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = shl i32 %105, 16
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %104, %98
  %114 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %115 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %114, i32 13)
  %116 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %117 = load i32, i32* @PM2R_FB_READ_MODE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @partprod(i32 %118)
  %120 = call i32 @pm2_WR(%struct.pm2fb_par* %116, i32 %117, i32 %119)
  %121 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %122 = load i32, i32* @PM2R_SCISSOR_MIN_XY, align 4
  %123 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %124 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 4095
  %127 = shl i32 %126, 16
  %128 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %129 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 4095
  %132 = or i32 %127, %131
  %133 = call i32 @pm2_WR(%struct.pm2fb_par* %121, i32 %122, i32 %132)
  %134 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %135 = load i32, i32* @PM2R_SCISSOR_MAX_XY, align 4
  %136 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %137 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %140 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = and i32 %142, 4095
  %144 = shl i32 %143, 16
  %145 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %146 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %149 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %147, %150
  %152 = and i32 %151, 4095
  %153 = or i32 %144, %152
  %154 = call i32 @pm2_WR(%struct.pm2fb_par* %134, i32 %135, i32 %153)
  %155 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %156 = load i32, i32* @PM2R_SCISSOR_MODE, align 4
  %157 = call i32 @pm2_WR(%struct.pm2fb_par* %155, i32 %156, i32 1)
  %158 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %159 = load i32, i32* @PM2R_LOGICAL_OP_MODE, align 4
  %160 = call i32 @pm2_WR(%struct.pm2fb_par* %158, i32 %159, i32 7)
  %161 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %162 = load i32, i32* @PM2R_RECTANGLE_ORIGIN, align 4
  %163 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %164 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 4095
  %167 = shl i32 %166, 16
  %168 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %169 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 4095
  %172 = or i32 %167, %171
  %173 = call i32 @pm2_WR(%struct.pm2fb_par* %161, i32 %162, i32 %172)
  %174 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %175 = load i32, i32* @PM2R_RECTANGLE_SIZE, align 4
  %176 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %177 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 4095
  %180 = shl i32 %179, 16
  %181 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %182 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, 4095
  %185 = or i32 %180, %184
  %186 = call i32 @pm2_WR(%struct.pm2fb_par* %174, i32 %175, i32 %185)
  %187 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 24
  br i1 %191, label %192, label %227

192:                                              ; preds = %113
  %193 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %194 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %195 = call i32 @pm2_WR(%struct.pm2fb_par* %193, i32 %194, i32 1)
  %196 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %197 = load i32, i32* @PM2R_CONSTANT_COLOR, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @pm2_WR(%struct.pm2fb_par* %196, i32 %197, i32 %198)
  %200 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %201 = load i32, i32* @PM2R_RENDER, align 4
  %202 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %203 = load i32, i32* @PM2F_INCREASE_X, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @PM2F_INCREASE_Y, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @pm2_WR(%struct.pm2fb_par* %200, i32 %201, i32 %206)
  %208 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %209 = load i32, i32* @PM2R_RASTERIZER_MODE, align 4
  %210 = load i32, i32* %11, align 4
  %211 = or i32 %210, 512
  %212 = call i32 @pm2_WR(%struct.pm2fb_par* %208, i32 %209, i32 %211)
  %213 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %214 = load i32, i32* @PM2R_CONSTANT_COLOR, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @pm2_WR(%struct.pm2fb_par* %213, i32 %214, i32 %215)
  %217 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %218 = load i32, i32* @PM2R_RENDER, align 4
  %219 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %220 = load i32, i32* @PM2F_INCREASE_X, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @PM2F_INCREASE_Y, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @PM2F_RENDER_SYNC_ON_BIT_MASK, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @pm2_WR(%struct.pm2fb_par* %217, i32 %218, i32 %225)
  br label %265

227:                                              ; preds = %113
  %228 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %229 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %230 = call i32 @pm2_WR(%struct.pm2fb_par* %228, i32 %229, i32 0)
  %231 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %232 = load i32, i32* @PM2R_FB_BLOCK_COLOR, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @pm2_WR(%struct.pm2fb_par* %231, i32 %232, i32 %233)
  %235 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %236 = load i32, i32* @PM2R_RENDER, align 4
  %237 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %238 = load i32, i32* @PM2F_RENDER_FASTFILL, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @PM2F_INCREASE_X, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @PM2F_INCREASE_Y, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @pm2_WR(%struct.pm2fb_par* %235, i32 %236, i32 %243)
  %245 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %246 = load i32, i32* @PM2R_RASTERIZER_MODE, align 4
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @pm2_WR(%struct.pm2fb_par* %245, i32 %246, i32 %247)
  %249 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %250 = load i32, i32* @PM2R_FB_BLOCK_COLOR, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @pm2_WR(%struct.pm2fb_par* %249, i32 %250, i32 %251)
  %253 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %254 = load i32, i32* @PM2R_RENDER, align 4
  %255 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %256 = load i32, i32* @PM2F_INCREASE_X, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @PM2F_INCREASE_Y, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @PM2F_RENDER_FASTFILL, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @PM2F_RENDER_SYNC_ON_BIT_MASK, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @pm2_WR(%struct.pm2fb_par* %253, i32 %254, i32 %263)
  br label %265

265:                                              ; preds = %227, %192
  br label %266

266:                                              ; preds = %299, %265
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %6, align 4
  %269 = icmp ne i32 %267, 0
  br i1 %269, label %270, label %300

270:                                              ; preds = %266
  %271 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %272 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, 7
  %275 = ashr i32 %274, 3
  %276 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %277 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %275, %279
  %281 = sub nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = ashr i32 %282, 2
  store i32 %283, i32* %12, align 4
  %284 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %284, i32 %285)
  br label %287

287:                                              ; preds = %291, %270
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %12, align 4
  %290 = icmp ne i32 %288, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %287
  %292 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %293 = load i32, i32* @PM2R_BIT_MASK_PATTERN, align 4
  %294 = load i32*, i32** %9, align 8
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @pm2_WR(%struct.pm2fb_par* %292, i32 %293, i32 %295)
  %297 = load i32*, i32** %9, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %9, align 8
  br label %287

299:                                              ; preds = %287
  br label %266

300:                                              ; preds = %266
  %301 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %302 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %301, i32 3)
  %303 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %304 = load i32, i32* @PM2R_RASTERIZER_MODE, align 4
  %305 = call i32 @pm2_WR(%struct.pm2fb_par* %303, i32 %304, i32 0)
  %306 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %307 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %308 = call i32 @pm2_WR(%struct.pm2fb_par* %306, i32 %307, i32 0)
  %309 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %310 = load i32, i32* @PM2R_SCISSOR_MODE, align 4
  %311 = call i32 @pm2_WR(%struct.pm2fb_par* %309, i32 %310, i32 0)
  br label %312

312:                                              ; preds = %300, %47, %34
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @partprod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
