; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_ntsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_ntsc.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_dev*)* @medusa_initialize_ntsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @medusa_initialize_ntsc(%struct.cx25821_dev* %0) #0 {
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

10:                                               ; preds = %201, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_DECODERS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %204

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
  %28 = or i32 %27, 65537
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
  %53 = or i32 %52, 1630339188
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
  %78 = or i32 %77, 471728154
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
  %99 = call i32 @cx25821_i2c_write(i32* %93, i64 %98, i32 1138753536)
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
  %200 = call i32 @medusa_enable_bluefield_output(%struct.cx25821_dev* %198, i32 %199, i32 1)
  br label %201

201:                                              ; preds = %14
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %10

204:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %355, %204
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @MAX_ENCODERS, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %358

209:                                              ; preds = %205
  %210 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %211 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i64, i64* @DENC_A_REG_1, align 8
  %215 = load i32, i32* %4, align 4
  %216 = mul nsw i32 256, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = call i32 @cx25821_i2c_read(i32* %213, i64 %218, i32* %6)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = and i32 %220, -268370944
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = or i32 %222, 112460496
  store i32 %223, i32* %5, align 4
  %224 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %225 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i64, i64* @DENC_A_REG_1, align 8
  %229 = load i32, i32* %4, align 4
  %230 = mul nsw i32 256, %229
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %228, %231
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @cx25821_i2c_write(i32* %227, i64 %232, i32 %233)
  store i32 %234, i32* %3, align 4
  %235 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %236 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i64, i64* @DENC_A_REG_2, align 8
  %240 = load i32, i32* %4, align 4
  %241 = mul nsw i32 256, %240
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %239, %242
  %244 = call i32 @cx25821_i2c_read(i32* %238, i64 %243, i32* %6)
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = and i32 %245, -16777216
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, 8294484
  store i32 %248, i32* %5, align 4
  %249 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %250 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i64, i64* @DENC_A_REG_2, align 8
  %254 = load i32, i32* %4, align 4
  %255 = mul nsw i32 256, %254
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %253, %256
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @cx25821_i2c_write(i32* %252, i64 %257, i32 %258)
  store i32 %259, i32* %3, align 4
  %260 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %261 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i64, i64* @DENC_A_REG_3, align 8
  %265 = load i32, i32* %4, align 4
  %266 = mul nsw i32 256, %265
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %264, %267
  %269 = call i32 @cx25821_i2c_read(i32* %263, i64 %268, i32* %6)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* %5, align 4
  %271 = and i32 %270, -67043840
  store i32 %271, i32* %5, align 4
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, 15466736
  store i32 %273, i32* %5, align 4
  %274 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %275 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i64, i64* @DENC_A_REG_3, align 8
  %279 = load i32, i32* %4, align 4
  %280 = mul nsw i32 256, %279
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %278, %281
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @cx25821_i2c_write(i32* %277, i64 %282, i32 %283)
  store i32 %284, i32* %3, align 4
  %285 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %286 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i64, i64* @DENC_A_REG_4, align 8
  %290 = load i32, i32* %4, align 4
  %291 = mul nsw i32 256, %290
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %289, %292
  %294 = call i32 @cx25821_i2c_read(i32* %288, i64 %293, i32* %6)
  store i32 %294, i32* %5, align 4
  %295 = load i32, i32* %5, align 4
  %296 = and i32 %295, 16580607
  store i32 %296, i32* %5, align 4
  %297 = load i32, i32* %5, align 4
  %298 = or i32 %297, 318898176
  store i32 %298, i32* %5, align 4
  %299 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %300 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i64, i64* @DENC_A_REG_4, align 8
  %304 = load i32, i32* %4, align 4
  %305 = mul nsw i32 256, %304
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %303, %306
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @cx25821_i2c_write(i32* %302, i64 %307, i32 %308)
  store i32 %309, i32* %3, align 4
  %310 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %311 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i64, i64* @DENC_A_REG_5, align 8
  %315 = load i32, i32* %4, align 4
  %316 = mul nsw i32 256, %315
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %314, %317
  %319 = call i32 @cx25821_i2c_read(i32* %313, i64 %318, i32* %6)
  store i32 %319, i32* %5, align 4
  %320 = load i32, i32* %5, align 4
  %321 = and i32 %320, -65536
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = or i32 %322, 58741
  store i32 %323, i32* %5, align 4
  %324 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %325 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i64, i64* @DENC_A_REG_5, align 8
  %329 = load i32, i32* %4, align 4
  %330 = mul nsw i32 256, %329
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %328, %331
  %333 = load i32, i32* %5, align 4
  %334 = call i32 @cx25821_i2c_write(i32* %327, i64 %332, i32 %333)
  store i32 %334, i32* %3, align 4
  %335 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %336 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i64, i64* @DENC_A_REG_6, align 8
  %340 = load i32, i32* %4, align 4
  %341 = mul nsw i32 256, %340
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %339, %342
  %344 = call i32 @cx25821_i2c_write(i32* %338, i64 %343, i32 10127809)
  store i32 %344, i32* %3, align 4
  %345 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %346 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i64, i64* @DENC_A_REG_7, align 8
  %350 = load i32, i32* %4, align 4
  %351 = mul nsw i32 256, %350
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %349, %352
  %354 = call i32 @cx25821_i2c_write(i32* %348, i64 %353, i32 569408543)
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %209
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %205

358:                                              ; preds = %205
  %359 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %360 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i64, i64* @HSCALE_CTRL, align 8
  %364 = call i32 @cx25821_i2c_write(i32* %362, i64 %363, i32 0)
  store i32 %364, i32* %3, align 4
  %365 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %366 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i64, i64* @VSCALE_CTRL, align 8
  %370 = call i32 @cx25821_i2c_write(i32* %368, i64 %369, i32 0)
  store i32 %370, i32* %3, align 4
  %371 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %372 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i64, i64* @BYP_AB_CTRL, align 8
  %376 = call i32 @cx25821_i2c_read(i32* %374, i64 %375, i32* %6)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = or i32 %377, 524800
  store i32 %378, i32* %5, align 4
  %379 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %380 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i64, i64* @BYP_AB_CTRL, align 8
  %384 = load i32, i32* %5, align 4
  %385 = call i32 @cx25821_i2c_write(i32* %382, i64 %383, i32 %384)
  store i32 %385, i32* %3, align 4
  %386 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %387 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %386, i32 0, i32 0
  %388 = call i32 @mutex_unlock(i32* %387)
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @clearBitAtPos(i32, i32) #1

declare dso_local i32 @medusa_enable_bluefield_output(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
