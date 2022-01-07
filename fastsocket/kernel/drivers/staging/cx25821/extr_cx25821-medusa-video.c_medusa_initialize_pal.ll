; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_pal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_pal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32* }

@MAX_DECODERS = common dso_local global i32 0, align 4
@MODE_CTRL = common dso_local global i64 0, align 8
@HORIZ_TIM_CTRL = common dso_local global i64 0, align 8
@VERT_TIM_CTRL = common dso_local global i64 0, align 8
@SC_STEP_SIZE = common dso_local global i64 0, align 8
@OUT_CTRL_NS = common dso_local global i64 0, align 8
@OUT_CTRL1 = common dso_local global i64 0, align 8
@MISC_TIM_CTRL = common dso_local global i64 0, align 8
@DFE_CTRL1 = common dso_local global i64 0, align 8
@MAX_ENCODERS = common dso_local global i32 0, align 4
@DENC_A_REG_1 = common dso_local global i64 0, align 8
@DENC_A_REG_2 = common dso_local global i64 0, align 8
@DENC_A_REG_3 = common dso_local global i64 0, align 8
@DENC_A_REG_4 = common dso_local global i64 0, align 8
@DENC_A_REG_5 = common dso_local global i64 0, align 8
@DENC_A_REG_6 = common dso_local global i64 0, align 8
@DENC_A_REG_7 = common dso_local global i64 0, align 8
@HSCALE_CTRL = common dso_local global i64 0, align 8
@VSCALE_CTRL = common dso_local global i64 0, align 8
@BYP_AB_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_dev*)* @medusa_initialize_pal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @medusa_initialize_pal(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %204, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_DECODERS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %207

14:                                               ; preds = %10
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %16 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i64, i64* @MODE_CTRL, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 512, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @cx25821_i2c_read(i32* %18, i64 %23, i32* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -16
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 65540
  store i32 %28, i32* %5, align 4
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i64, i64* @MODE_CTRL, align 8
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 512, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @cx25821_i2c_write(i32* %32, i64 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %41 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i64, i64* @HORIZ_TIM_CTRL, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 512, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @cx25821_i2c_read(i32* %43, i64 %48, i32* %6)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 12585984
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, 1663893629
  store i32 %53, i32* %5, align 4
  %54 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %55 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i64, i64* @HORIZ_TIM_CTRL, align 8
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 512, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cx25821_i2c_write(i32* %57, i64 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %66 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i64, i64* @VERT_TIM_CTRL, align 8
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 512, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @cx25821_i2c_read(i32* %68, i64 %73, i32* %6)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 12585984
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, 673447974
  store i32 %78, i32* %5, align 4
  %79 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %80 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i64, i64* @VERT_TIM_CTRL, align 8
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 512, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @cx25821_i2c_write(i32* %82, i64 %87, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %91 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i64, i64* @SC_STEP_SIZE, align 8
  %95 = load i32, i32* %4, align 4
  %96 = mul nsw i32 512, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = call i32 @cx25821_i2c_write(i32* %93, i64 %98, i32 1410458320)
  store i32 %99, i32* %3, align 4
  %100 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %101 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i64, i64* @OUT_CTRL_NS, align 8
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 512, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = call i32 @cx25821_i2c_read(i32* %103, i64 %108, i32* %6)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, -262145
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, 262144
  store i32 %113, i32* %5, align 4
  %114 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %115 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i64, i64* @OUT_CTRL_NS, align 8
  %119 = load i32, i32* %4, align 4
  %120 = mul nsw i32 512, %119
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @cx25821_i2c_write(i32* %117, i64 %122, i32 %123)
  store i32 %124, i32* %3, align 4
  %125 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %126 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i64, i64* @OUT_CTRL1, align 8
  %130 = load i32, i32* %4, align 4
  %131 = mul nsw i32 512, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @cx25821_i2c_read(i32* %128, i64 %133, i32* %6)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = and i32 %135, -262145
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, 262144
  store i32 %138, i32* %5, align 4
  %139 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %140 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i64, i64* @OUT_CTRL1, align 8
  %144 = load i32, i32* %4, align 4
  %145 = mul nsw i32 512, %144
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @cx25821_i2c_write(i32* %142, i64 %147, i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %151 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i64, i64* @MISC_TIM_CTRL, align 8
  %155 = load i32, i32* %4, align 4
  %156 = mul nsw i32 512, %155
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %154, %157
  %159 = call i32 @cx25821_i2c_read(i32* %153, i64 %158, i32* %6)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @setBitAtPos(i32 %160, i32 14)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @clearBitAtPos(i32 %162, i32 15)
  store i32 %163, i32* %5, align 4
  %164 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %165 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i64, i64* @MISC_TIM_CTRL, align 8
  %169 = load i32, i32* %4, align 4
  %170 = mul nsw i32 512, %169
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %168, %171
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @cx25821_i2c_write(i32* %167, i64 %172, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %176 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i64, i64* @DFE_CTRL1, align 8
  %180 = load i32, i32* %4, align 4
  %181 = mul nsw i32 512, %180
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %179, %182
  %184 = call i32 @cx25821_i2c_read(i32* %178, i64 %183, i32* %6)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @clearBitAtPos(i32 %185, i32 29)
  store i32 %186, i32* %5, align 4
  %187 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %188 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i64, i64* @DFE_CTRL1, align 8
  %192 = load i32, i32* %4, align 4
  %193 = mul nsw i32 512, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %191, %194
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @cx25821_i2c_write(i32* %190, i64 %195, i32 %196)
  store i32 %197, i32* %3, align 4
  %198 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @medusa_PALCombInit(%struct.cx25821_dev* %198, i32 %199)
  %201 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @medusa_enable_bluefield_output(%struct.cx25821_dev* %201, i32 %202, i32 1)
  br label %204

204:                                              ; preds = %14
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %10

207:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %358, %207
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @MAX_ENCODERS, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %361

212:                                              ; preds = %208
  %213 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %214 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i64, i64* @DENC_A_REG_1, align 8
  %218 = load i32, i32* %4, align 4
  %219 = mul nsw i32 256, %218
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %217, %220
  %222 = call i32 @cx25821_i2c_read(i32* %216, i64 %221, i32* %6)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = and i32 %223, -268370944
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = or i32 %225, 113246928
  store i32 %226, i32* %5, align 4
  %227 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %228 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i64, i64* @DENC_A_REG_1, align 8
  %232 = load i32, i32* %4, align 4
  %233 = mul nsw i32 256, %232
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %231, %234
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @cx25821_i2c_write(i32* %230, i64 %235, i32 %236)
  store i32 %237, i32* %3, align 4
  %238 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %239 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i64, i64* @DENC_A_REG_2, align 8
  %243 = load i32, i32* %4, align 4
  %244 = mul nsw i32 256, %243
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %242, %245
  %247 = call i32 @cx25821_i2c_read(i32* %241, i64 %246, i32* %6)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %5, align 4
  %249 = and i32 %248, -16777216
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = or i32 %250, 8296276
  store i32 %251, i32* %5, align 4
  %252 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %253 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i64, i64* @DENC_A_REG_2, align 8
  %257 = load i32, i32* %4, align 4
  %258 = mul nsw i32 256, %257
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %256, %259
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @cx25821_i2c_write(i32* %255, i64 %260, i32 %261)
  store i32 %262, i32* %3, align 4
  %263 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %264 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i64, i64* @DENC_A_REG_3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = mul nsw i32 256, %268
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %267, %270
  %272 = call i32 @cx25821_i2c_read(i32* %266, i64 %271, i32* %6)
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* %5, align 4
  %274 = and i32 %273, -67043840
  store i32 %274, i32* %5, align 4
  %275 = load i32, i32* %5, align 4
  %276 = or i32 %275, 16515360
  store i32 %276, i32* %5, align 4
  %277 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %278 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i64, i64* @DENC_A_REG_3, align 8
  %282 = load i32, i32* %4, align 4
  %283 = mul nsw i32 256, %282
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %281, %284
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @cx25821_i2c_write(i32* %280, i64 %285, i32 %286)
  store i32 %287, i32* %3, align 4
  %288 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %289 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i64, i64* @DENC_A_REG_4, align 8
  %293 = load i32, i32* %4, align 4
  %294 = mul nsw i32 256, %293
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %292, %295
  %297 = call i32 @cx25821_i2c_read(i32* %291, i64 %296, i32* %6)
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* %5, align 4
  %299 = and i32 %298, 16580607
  store i32 %299, i32* %5, align 4
  %300 = load i32, i32* %5, align 4
  %301 = or i32 %300, 335609856
  store i32 %301, i32* %5, align 4
  %302 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %303 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i64, i64* @DENC_A_REG_4, align 8
  %307 = load i32, i32* %4, align 4
  %308 = mul nsw i32 256, %307
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %306, %309
  %311 = load i32, i32* %5, align 4
  %312 = call i32 @cx25821_i2c_write(i32* %305, i64 %310, i32 %311)
  store i32 %312, i32* %3, align 4
  %313 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %314 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i64, i64* @DENC_A_REG_5, align 8
  %318 = load i32, i32* %4, align 4
  %319 = mul nsw i32 256, %318
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %317, %320
  %322 = call i32 @cx25821_i2c_read(i32* %316, i64 %321, i32* %6)
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %5, align 4
  %324 = and i32 %323, -65536
  store i32 %324, i32* %5, align 4
  %325 = load i32, i32* %5, align 4
  %326 = or i32 %325, 61560
  store i32 %326, i32* %5, align 4
  %327 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %328 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i64, i64* @DENC_A_REG_5, align 8
  %332 = load i32, i32* %4, align 4
  %333 = mul nsw i32 256, %332
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %331, %334
  %336 = load i32, i32* %5, align 4
  %337 = call i32 @cx25821_i2c_write(i32* %330, i64 %335, i32 %336)
  store i32 %337, i32* %3, align 4
  %338 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %339 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i64, i64* @DENC_A_REG_6, align 8
  %343 = load i32, i32* %4, align 4
  %344 = mul nsw i32 256, %343
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %342, %345
  %347 = call i32 @cx25821_i2c_write(i32* %341, i64 %346, i32 10785743)
  store i32 %347, i32* %3, align 4
  %348 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %349 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i64, i64* @DENC_A_REG_7, align 8
  %353 = load i32, i32* %4, align 4
  %354 = mul nsw i32 256, %353
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %352, %355
  %357 = call i32 @cx25821_i2c_write(i32* %351, i64 %356, i32 705268427)
  store i32 %357, i32* %3, align 4
  br label %358

358:                                              ; preds = %212
  %359 = load i32, i32* %4, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %4, align 4
  br label %208

361:                                              ; preds = %208
  %362 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %363 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i64, i64* @HSCALE_CTRL, align 8
  %367 = call i32 @cx25821_i2c_write(i32* %365, i64 %366, i32 0)
  store i32 %367, i32* %3, align 4
  %368 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %369 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i64, i64* @VSCALE_CTRL, align 8
  %373 = call i32 @cx25821_i2c_write(i32* %371, i64 %372, i32 0)
  store i32 %373, i32* %3, align 4
  %374 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %375 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i64, i64* @BYP_AB_CTRL, align 8
  %379 = call i32 @cx25821_i2c_read(i32* %377, i64 %378, i32* %6)
  store i32 %379, i32* %5, align 4
  %380 = load i32, i32* %5, align 4
  %381 = and i32 %380, -524801
  store i32 %381, i32* %5, align 4
  %382 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %383 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 0
  %386 = load i64, i64* @BYP_AB_CTRL, align 8
  %387 = load i32, i32* %5, align 4
  %388 = call i32 @cx25821_i2c_write(i32* %385, i64 %386, i32 %387)
  store i32 %388, i32* %3, align 4
  %389 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %390 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %389, i32 0, i32 0
  %391 = call i32 @mutex_unlock(i32* %390)
  %392 = load i32, i32* %3, align 4
  ret i32 %392
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @clearBitAtPos(i32, i32) #1

declare dso_local i32 @medusa_PALCombInit(%struct.cx25821_dev*, i32) #1

declare dso_local i32 @medusa_enable_bluefield_output(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
