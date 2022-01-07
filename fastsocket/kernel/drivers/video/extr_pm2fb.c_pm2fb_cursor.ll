; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.pm2fb_par* }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pm2fb_par = type { i64 }
%struct.fb_cursor = type { i32, i64, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@hwcursor = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PM2_TYPE_PERMEDIA2V = common dso_local global i64 0, align 8
@PM2I_RD_CURSOR_CONTROL = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_X_LSB = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_X_MSB = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_Y_LSB = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_Y_MSB = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_COLOR_ADDRESS = common dso_local global i32 0, align 4
@PM2R_RD_CURSOR_COLOR_DATA = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@PM2R_RD_PALETTE_WRITE_ADDRESS = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@PM2R_RD_CURSOR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @pm2fb_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.pm2fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  %24 = load %struct.pm2fb_par*, %struct.pm2fb_par** %23, align 8
  store %struct.pm2fb_par* %24, %struct.pm2fb_par** %6, align 8
  %25 = load i32, i32* @hwcursor, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %397

30:                                               ; preds = %2
  %31 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %32 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 64
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 64
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %44 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36, %30
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %397

51:                                               ; preds = %42
  %52 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %53 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PM2_TYPE_PERMEDIA2V, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %60 = call i32 @pm2vfb_cursor(%struct.fb_info* %58, %struct.fb_cursor* %59)
  store i32 %60, i32* %3, align 4
  br label %397

61:                                               ; preds = %51
  store i32 64, i32* %7, align 4
  %62 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %63 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 67, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %69 = load i32, i32* @PM2I_RD_CURSOR_CONTROL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %68, i32 %69, i32 %70)
  %72 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %73 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %397

77:                                               ; preds = %67
  %78 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %79 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @FB_CUR_SETPOS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %77
  %85 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %86 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %88, %92
  %94 = add nsw i32 %93, 63
  store i32 %94, i32* %8, align 4
  %95 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %96 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %98, %102
  %104 = add nsw i32 %103, 63
  store i32 %104, i32* %9, align 4
  %105 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %106 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %105, i32 4)
  %107 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %108 = load i32, i32* @PM2R_RD_CURSOR_X_LSB, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 255
  %111 = call i32 @pm2_WR(%struct.pm2fb_par* %107, i32 %108, i32 %110)
  %112 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %113 = load i32, i32* @PM2R_RD_CURSOR_X_MSB, align 4
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 7
  %117 = call i32 @pm2_WR(%struct.pm2fb_par* %112, i32 %113, i32 %116)
  %118 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %119 = load i32, i32* @PM2R_RD_CURSOR_Y_LSB, align 4
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 255
  %122 = call i32 @pm2_WR(%struct.pm2fb_par* %118, i32 %119, i32 %121)
  %123 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %124 = load i32, i32* @PM2R_RD_CURSOR_Y_MSB, align 4
  %125 = load i32, i32* %9, align 4
  %126 = ashr i32 %125, 8
  %127 = and i32 %126, 7
  %128 = call i32 @pm2_WR(%struct.pm2fb_par* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %84, %77
  %130 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %131 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %216

136:                                              ; preds = %129
  %137 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %138 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %10, align 8
  %141 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %142 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %11, align 8
  %145 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %146 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %145, i32 7)
  %147 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %148 = load i32, i32* @PM2R_RD_CURSOR_COLOR_ADDRESS, align 4
  %149 = call i32 @pm2_WR(%struct.pm2fb_par* %147, i32 %148, i32 1)
  %150 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %151 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %152 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @pm2_WR(%struct.pm2fb_par* %150, i32 %151, i32 %159)
  %161 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %162 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %163 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %11, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 8
  %171 = call i32 @pm2_WR(%struct.pm2fb_par* %161, i32 %162, i32 %170)
  %172 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %173 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %174 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %175 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %11, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 8
  %182 = call i32 @pm2_WR(%struct.pm2fb_par* %172, i32 %173, i32 %181)
  %183 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %184 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %185 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %10, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 8
  %193 = call i32 @pm2_WR(%struct.pm2fb_par* %183, i32 %184, i32 %192)
  %194 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %195 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %196 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %197 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 8
  %204 = call i32 @pm2_WR(%struct.pm2fb_par* %194, i32 %195, i32 %203)
  %205 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %206 = load i32, i32* @PM2R_RD_CURSOR_COLOR_DATA, align 4
  %207 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %208 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = ashr i32 %213, 8
  %215 = call i32 @pm2_WR(%struct.pm2fb_par* %205, i32 %206, i32 %214)
  br label %216

216:                                              ; preds = %136, %129
  %217 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %218 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %221 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %222 = or i32 %220, %221
  %223 = and i32 %219, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %396

225:                                              ; preds = %216
  %226 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %227 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 7
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  store i32* %230, i32** %12, align 8
  %231 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %232 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to i32*
  store i32* %234, i32** %13, align 8
  %235 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %236 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %235, i32 1)
  %237 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %238 = load i32, i32* @PM2R_RD_PALETTE_WRITE_ADDRESS, align 4
  %239 = call i32 @pm2_WR(%struct.pm2fb_par* %237, i32 %238, i32 0)
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %302, %225
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %243 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %247, label %305

247:                                              ; preds = %240
  %248 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %249 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 7
  %253 = ashr i32 %252, 3
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %15, align 4
  %255 = sub nsw i32 8, %254
  store i32 %255, i32* %16, align 4
  %256 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %257 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %256, i32 8)
  br label %258

258:                                              ; preds = %287, %247
  %259 = load i32, i32* %15, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %290

261:                                              ; preds = %258
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %263, %265
  store i32 %266, i32* %17, align 4
  %267 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %268 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @ROP_COPY, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %261
  %273 = load i32*, i32** %13, align 8
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %12, align 8
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %274, %276
  store i32 %277, i32* %17, align 4
  br label %278

278:                                              ; preds = %272, %261
  %279 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %280 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %281 = load i32, i32* %17, align 4
  %282 = call i32 @pm2_WR(%struct.pm2fb_par* %279, i32 %280, i32 %281)
  %283 = load i32*, i32** %12, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %12, align 8
  %285 = load i32*, i32** %13, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %13, align 8
  br label %287

287:                                              ; preds = %278
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %15, align 4
  br label %258

290:                                              ; preds = %258
  br label %291

291:                                              ; preds = %298, %290
  %292 = load i32, i32* %16, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %291
  %295 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %296 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %297 = call i32 @pm2_WR(%struct.pm2fb_par* %295, i32 %296, i32 0)
  br label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %16, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %16, align 4
  br label %291

301:                                              ; preds = %291
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %240

305:                                              ; preds = %240
  br label %306

306:                                              ; preds = %321, %305
  %307 = load i32, i32* %14, align 4
  %308 = icmp slt i32 %307, 64
  br i1 %308, label %309, label %324

309:                                              ; preds = %306
  store i32 8, i32* %18, align 4
  %310 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %311 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %310, i32 8)
  br label %312

312:                                              ; preds = %316, %309
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %18, align 4
  %315 = icmp sgt i32 %313, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %318 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %319 = call i32 @pm2_WR(%struct.pm2fb_par* %317, i32 %318, i32 0)
  br label %312

320:                                              ; preds = %312
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %306

324:                                              ; preds = %306
  %325 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %326 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = inttoptr i64 %327 to i32*
  store i32* %328, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %329

329:                                              ; preds = %373, %324
  %330 = load i32, i32* %14, align 4
  %331 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %332 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp slt i32 %330, %334
  br i1 %335, label %336, label %376

336:                                              ; preds = %329
  %337 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %338 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, 7
  %342 = ashr i32 %341, 3
  store i32 %342, i32* %19, align 4
  %343 = load i32, i32* %19, align 4
  %344 = sub nsw i32 8, %343
  store i32 %344, i32* %20, align 4
  %345 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %346 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %345, i32 8)
  br label %347

347:                                              ; preds = %358, %336
  %348 = load i32, i32* %19, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %347
  %351 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %352 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %353 = load i32*, i32** %13, align 8
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @pm2_WR(%struct.pm2fb_par* %351, i32 %352, i32 %354)
  %356 = load i32*, i32** %13, align 8
  %357 = getelementptr inbounds i32, i32* %356, i32 1
  store i32* %357, i32** %13, align 8
  br label %358

358:                                              ; preds = %350
  %359 = load i32, i32* %19, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %19, align 4
  br label %347

361:                                              ; preds = %347
  br label %362

362:                                              ; preds = %369, %361
  %363 = load i32, i32* %20, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %362
  %366 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %367 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %368 = call i32 @pm2_WR(%struct.pm2fb_par* %366, i32 %367, i32 0)
  br label %369

369:                                              ; preds = %365
  %370 = load i32, i32* %20, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %20, align 4
  br label %362

372:                                              ; preds = %362
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %14, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %14, align 4
  br label %329

376:                                              ; preds = %329
  br label %377

377:                                              ; preds = %392, %376
  %378 = load i32, i32* %14, align 4
  %379 = icmp slt i32 %378, 64
  br i1 %379, label %380, label %395

380:                                              ; preds = %377
  store i32 8, i32* %21, align 4
  %381 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %382 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %381, i32 8)
  br label %383

383:                                              ; preds = %387, %380
  %384 = load i32, i32* %21, align 4
  %385 = add nsw i32 %384, -1
  store i32 %385, i32* %21, align 4
  %386 = icmp sgt i32 %384, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = load %struct.pm2fb_par*, %struct.pm2fb_par** %6, align 8
  %389 = load i32, i32* @PM2R_RD_CURSOR_DATA, align 4
  %390 = call i32 @pm2_WR(%struct.pm2fb_par* %388, i32 %389, i32 0)
  br label %383

391:                                              ; preds = %383
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %14, align 4
  br label %377

395:                                              ; preds = %377
  br label %396

396:                                              ; preds = %395, %216
  store i32 0, i32* %3, align 4
  br label %397

397:                                              ; preds = %396, %76, %57, %48, %27
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i32 @pm2vfb_cursor(%struct.fb_info*, %struct.fb_cursor*) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
