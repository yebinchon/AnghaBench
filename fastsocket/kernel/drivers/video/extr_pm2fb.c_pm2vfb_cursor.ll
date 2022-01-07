; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2vfb_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2vfb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_cmap, %struct.TYPE_4__, %struct.pm2fb_par* }
%struct.fb_cmap = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pm2fb_par = type { i32 }
%struct.fb_cursor = type { i32, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@PM2F_CURSORMODE_TYPE_X = common dso_local global i32 0, align 4
@PM2F_CURSORMODE_CURSOR_ENABLE = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_MODE = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_X_LOW = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_X_HIGH = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_Y_LOW = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_Y_HIGH = common dso_local global i32 0, align 4
@FB_CUR_SETHOT = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_X_HOT = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_Y_HOT = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@PM2VR_RD_INDEX_HIGH = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_PALETTE = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@PM2VI_RD_CURSOR_PATTERN = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@cursor_bits_lookup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @pm2vfb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2vfb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.pm2fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fb_cmap, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = load %struct.pm2fb_par*, %struct.pm2fb_par** %21, align 8
  store %struct.pm2fb_par* %22, %struct.pm2fb_par** %6, align 8
  %23 = load i32, i32* @PM2F_CURSORMODE_TYPE_X, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %25 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %27, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %34 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %43 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* @PM2F_CURSORMODE_CURSOR_ENABLE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %52 = load i32, i32* @PM2VI_RD_CURSOR_MODE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %51, i32 %52, i32 %53)
  %55 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %56 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 2047, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %62 = load i32, i32* @PM2VI_RD_CURSOR_X_LOW, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %61, i32 %62, i32 %64)
  %66 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %67 = load i32, i32* @PM2VI_RD_CURSOR_X_HIGH, align 4
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 15
  %71 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %66, i32 %67, i32 %70)
  %72 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %73 = load i32, i32* @PM2VI_RD_CURSOR_Y_LOW, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %72, i32 %73, i32 %75)
  %77 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %78 = load i32, i32* @PM2VI_RD_CURSOR_Y_HIGH, align 4
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 15
  %82 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %77, i32 %78, i32 %81)
  %83 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %84 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %348

88:                                               ; preds = %60
  %89 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %90 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FB_CUR_SETHOT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %88
  %96 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %97 = load i32, i32* @PM2VI_RD_CURSOR_X_HOT, align 4
  %98 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %99 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 63
  %103 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %96, i32 %97, i32 %102)
  %104 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %105 = load i32, i32* @PM2VI_RD_CURSOR_Y_HOT, align 4
  %106 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %107 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 63
  %111 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %104, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %95, %88
  %113 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %114 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %200

119:                                              ; preds = %112
  %120 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %121 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %10, align 8
  %124 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %125 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %11, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 0
  %130 = bitcast %struct.fb_cmap* %12 to i8*
  %131 = bitcast %struct.fb_cmap* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 24, i1 false)
  %132 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %133 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %134 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %135 = ashr i32 %134, 8
  %136 = call i32 @pm2_WR(%struct.pm2fb_par* %132, i32 %133, i32 %135)
  %137 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %138 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %139 = add nsw i32 %138, 0
  %140 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 8
  %146 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %137, i32 %139, i32 %145)
  %147 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %148 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %149 = add nsw i32 %148, 1
  %150 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  %156 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %147, i32 %149, i32 %155)
  %157 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %158 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %159 = add nsw i32 %158, 2
  %160 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 8
  %166 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %157, i32 %159, i32 %165)
  %167 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %168 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %169 = add nsw i32 %168, 3
  %170 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 8
  %176 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %167, i32 %169, i32 %175)
  %177 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %178 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %179 = add nsw i32 %178, 4
  %180 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = ashr i32 %184, 8
  %186 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %177, i32 %179, i32 %185)
  %187 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %188 = load i32, i32* @PM2VI_RD_CURSOR_PALETTE, align 4
  %189 = add nsw i32 %188, 5
  %190 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %10, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = ashr i32 %194, 8
  %196 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %187, i32 %189, i32 %195)
  %197 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %198 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %199 = call i32 @pm2_WR(%struct.pm2fb_par* %197, i32 %198, i32 0)
  br label %200

200:                                              ; preds = %119, %112
  %201 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %202 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %205 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %203, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %347

209:                                              ; preds = %200
  %210 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %211 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i32*
  store i32* %214, i32** %13, align 8
  %215 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %216 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  store i32* %218, i32** %14, align 8
  %219 = load i32, i32* @PM2VI_RD_CURSOR_PATTERN, align 4
  store i32 %219, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %220

220:                                              ; preds = %324, %209
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %223 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %327

227:                                              ; preds = %220
  %228 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %229 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 7
  %233 = ashr i32 %232, 3
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = sub nsw i32 8, %234
  store i32 %235, i32* %18, align 4
  %236 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %237 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %238 = load i32, i32* %16, align 4
  %239 = ashr i32 %238, 8
  %240 = call i32 @pm2_WR(%struct.pm2fb_par* %236, i32 %237, i32 %239)
  br label %241

241:                                              ; preds = %304, %227
  %242 = load i32, i32* %17, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %307

244:                                              ; preds = %241
  %245 = load i32*, i32** %13, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %14, align 8
  %248 = load i32, i32* %247, align 4
  %249 = xor i32 %246, %248
  store i32 %249, i32* %19, align 4
  %250 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %251 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @ROP_COPY, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %244
  %256 = load i32*, i32** %14, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %13, align 8
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %257, %259
  store i32 %260, i32* %19, align 4
  br label %261

261:                                              ; preds = %255, %244
  %262 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %16, align 4
  %265 = load i32*, i32** @cursor_bits_lookup, align 8
  %266 = load i32, i32* %19, align 4
  %267 = ashr i32 %266, 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** @cursor_bits_lookup, align 8
  %272 = load i32*, i32** %14, align 8
  %273 = load i32, i32* %272, align 4
  %274 = ashr i32 %273, 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 1
  %279 = or i32 %270, %278
  %280 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %262, i32 %263, i32 %279)
  %281 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %16, align 4
  %284 = load i32*, i32** @cursor_bits_lookup, align 8
  %285 = load i32, i32* %19, align 4
  %286 = and i32 %285, 15
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** @cursor_bits_lookup, align 8
  %291 = load i32*, i32** %14, align 8
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 15
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %296, 1
  %298 = or i32 %289, %297
  %299 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %281, i32 %282, i32 %298)
  %300 = load i32*, i32** %13, align 8
  %301 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %301, i32** %13, align 8
  %302 = load i32*, i32** %14, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %14, align 8
  br label %304

304:                                              ; preds = %261
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %17, align 4
  br label %241

307:                                              ; preds = %241
  br label %308

308:                                              ; preds = %320, %307
  %309 = load i32, i32* %18, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %323

311:                                              ; preds = %308
  %312 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %313 = load i32, i32* %16, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %16, align 4
  %315 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %312, i32 %313, i32 0)
  %316 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %16, align 4
  %319 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %316, i32 %317, i32 0)
  br label %320

320:                                              ; preds = %311
  %321 = load i32, i32* %18, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %18, align 4
  br label %308

323:                                              ; preds = %308
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %15, align 4
  br label %220

327:                                              ; preds = %220
  br label %328

328:                                              ; preds = %333, %327
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* @PM2VI_RD_CURSOR_PATTERN, align 4
  %331 = add nsw i32 1024, %330
  %332 = icmp slt i32 %329, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %328
  %334 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %335 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %336 = load i32, i32* %16, align 4
  %337 = ashr i32 %336, 8
  %338 = call i32 @pm2_WR(%struct.pm2fb_par* %334, i32 %335, i32 %337)
  %339 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %340 = load i32, i32* %16, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %16, align 4
  %342 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %339, i32 %340, i32 0)
  br label %328

343:                                              ; preds = %328
  %344 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %345 = load i32, i32* @PM2VR_RD_INDEX_HIGH, align 4
  %346 = call i32 @pm2_WR(%struct.pm2fb_par* %344, i32 %345, i32 0)
  br label %347

347:                                              ; preds = %343, %200
  store i32 0, i32* %3, align 4
  br label %348

348:                                              ; preds = %347, %87
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
