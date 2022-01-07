; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_read_rtl8225.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_rtl8225z2.c_read_rtl8225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsEnable = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4
@BB_HOST_BANG_EN = common dso_local global i32 0, align 4
@BB_HOST_BANG_CLK = common dso_local global i16 0, align 2
@BB_HOST_BANG_RW = common dso_local global i32 0, align 4
@RFPinsInput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @read_rtl8225 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rtl8225(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 31
  %20 = shl i32 %19, 27
  store i32 %20, i32* %5, align 4
  store i32 6, i32* %15, align 4
  store i32 12, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* @RFPinsOutput, align 4
  %23 = call i32 @read_nic_word(%struct.net_device* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @RFPinsEnable, align 4
  %26 = call i32 @read_nic_word(%struct.net_device* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @RFPinsSelect, align 4
  %29 = call i32 @read_nic_word(%struct.net_device* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load i32, i32* @RFPinsEnable, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 15
  %34 = call i32 @write_nic_word(%struct.net_device* %30, i32 %31, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @RFPinsSelect, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, 15
  %39 = call i32 @write_nic_word(%struct.net_device* %35, i32 %36, i32 %38)
  store i32 0, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, -16
  store i32 %41, i32* %8, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load i32, i32* @RFPinsOutput, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BB_HOST_BANG_EN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @write_nic_word(%struct.net_device* %42, i32 %43, i32 %46)
  %48 = call i32 @udelay(i32 4)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i32, i32* @RFPinsOutput, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @write_nic_word(%struct.net_device* %49, i32 %50, i32 %51)
  %53 = call i32 @udelay(i32 5)
  store i16 0, i16* %14, align 2
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 -2147483648
  store i32 %57, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %207, %2
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = sdiv i32 %60, 2
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %210

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* %13, align 2
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = load i32, i32* @RFPinsOutput, align 4
  %73 = load i16, i16* %13, align 2
  %74 = sext i16 %73 to i32
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %74, %75
  %77 = load i16, i16* %14, align 2
  %78 = sext i16 %77 to i32
  %79 = or i32 %76, %78
  %80 = call i32 @write_nic_word(%struct.net_device* %71, i32 %72, i32 %79)
  %81 = call i32 @udelay(i32 1)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32, i32* @RFPinsOutput, align 4
  %84 = load i16, i16* %13, align 2
  %85 = sext i16 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %85, %86
  %88 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %89 = sext i16 %88 to i32
  %90 = or i32 %87, %89
  %91 = load i16, i16* %14, align 2
  %92 = sext i16 %91 to i32
  %93 = or i32 %90, %92
  %94 = call i32 @write_nic_word(%struct.net_device* %82, i32 %83, i32 %93)
  %95 = call i32 @udelay(i32 2)
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load i32, i32* @RFPinsOutput, align 4
  %98 = load i16, i16* %13, align 2
  %99 = sext i16 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %99, %100
  %102 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %103 = sext i16 %102 to i32
  %104 = or i32 %101, %103
  %105 = load i16, i16* %14, align 2
  %106 = sext i16 %105 to i32
  %107 = or i32 %104, %106
  %108 = call i32 @write_nic_word(%struct.net_device* %96, i32 %97, i32 %107)
  %109 = call i32 @udelay(i32 2)
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %63
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 1
  br label %118

115:                                              ; preds = %63
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %116, 1
  br label %118

118:                                              ; preds = %115, %112
  %119 = phi i32 [ %114, %112 ], [ %117, %115 ]
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %150

122:                                              ; preds = %118
  %123 = load i32, i32* @BB_HOST_BANG_RW, align 4
  %124 = trunc i32 %123 to i16
  store i16 %124, i16* %14, align 2
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = load i32, i32* @RFPinsOutput, align 4
  %127 = load i16, i16* %13, align 2
  %128 = sext i16 %127 to i32
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %128, %129
  %131 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %132 = sext i16 %131 to i32
  %133 = or i32 %130, %132
  %134 = load i16, i16* %14, align 2
  %135 = sext i16 %134 to i32
  %136 = or i32 %133, %135
  %137 = call i32 @write_nic_word(%struct.net_device* %125, i32 %126, i32 %136)
  %138 = call i32 @udelay(i32 2)
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = load i32, i32* @RFPinsOutput, align 4
  %141 = load i16, i16* %13, align 2
  %142 = sext i16 %141 to i32
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %142, %143
  %145 = load i16, i16* %14, align 2
  %146 = sext i16 %145 to i32
  %147 = or i32 %144, %146
  %148 = call i32 @write_nic_word(%struct.net_device* %139, i32 %140, i32 %147)
  %149 = call i32 @udelay(i32 2)
  br label %210

150:                                              ; preds = %118
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %13, align 2
  %158 = load %struct.net_device*, %struct.net_device** %3, align 8
  %159 = load i32, i32* @RFPinsOutput, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i16, i16* %13, align 2
  %162 = sext i16 %161 to i32
  %163 = or i32 %160, %162
  %164 = load i16, i16* %14, align 2
  %165 = sext i16 %164 to i32
  %166 = or i32 %163, %165
  %167 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %168 = sext i16 %167 to i32
  %169 = or i32 %166, %168
  %170 = call i32 @write_nic_word(%struct.net_device* %158, i32 %159, i32 %169)
  %171 = call i32 @udelay(i32 2)
  %172 = load %struct.net_device*, %struct.net_device** %3, align 8
  %173 = load i32, i32* @RFPinsOutput, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i16, i16* %13, align 2
  %176 = sext i16 %175 to i32
  %177 = or i32 %174, %176
  %178 = load i16, i16* %14, align 2
  %179 = sext i16 %178 to i32
  %180 = or i32 %177, %179
  %181 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %182 = sext i16 %181 to i32
  %183 = or i32 %180, %182
  %184 = call i32 @write_nic_word(%struct.net_device* %172, i32 %173, i32 %183)
  %185 = call i32 @udelay(i32 2)
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = load i32, i32* @RFPinsOutput, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i16, i16* %13, align 2
  %190 = sext i16 %189 to i32
  %191 = or i32 %188, %190
  %192 = load i16, i16* %14, align 2
  %193 = sext i16 %192 to i32
  %194 = or i32 %191, %193
  %195 = call i32 @write_nic_word(%struct.net_device* %186, i32 %187, i32 %194)
  %196 = call i32 @udelay(i32 1)
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %150
  %200 = load i32, i32* %7, align 4
  %201 = shl i32 %200, 1
  br label %205

202:                                              ; preds = %150
  %203 = load i32, i32* %7, align 4
  %204 = ashr i32 %203, 1
  br label %205

205:                                              ; preds = %202, %199
  %206 = phi i32 [ %201, %199 ], [ %204, %202 ]
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %205
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %58

210:                                              ; preds = %122, %58
  %211 = load %struct.net_device*, %struct.net_device** %3, align 8
  %212 = load i32, i32* @RFPinsOutput, align 4
  %213 = load i16, i16* %14, align 2
  %214 = sext i16 %213 to i32
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @write_nic_word(%struct.net_device* %211, i32 %212, i32 %216)
  %218 = call i32 @udelay(i32 2)
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 2048
  store i32 %222, i32* %7, align 4
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = load i32, i32* @RFPinsEnable, align 4
  %225 = load i32, i32* %9, align 4
  %226 = and i32 %225, -2
  %227 = call i32 @write_nic_word(%struct.net_device* %223, i32 %224, i32 %226)
  store i32 0, i32* %12, align 4
  br label %228

228:                                              ; preds = %307, %210
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %16, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %310

232:                                              ; preds = %228
  %233 = load %struct.net_device*, %struct.net_device** %3, align 8
  %234 = load i32, i32* @RFPinsOutput, align 4
  %235 = load i16, i16* %14, align 2
  %236 = sext i16 %235 to i32
  %237 = load i32, i32* %8, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @write_nic_word(%struct.net_device* %233, i32 %234, i32 %238)
  %240 = call i32 @udelay(i32 1)
  %241 = load %struct.net_device*, %struct.net_device** %3, align 8
  %242 = load i32, i32* @RFPinsOutput, align 4
  %243 = load i16, i16* %14, align 2
  %244 = sext i16 %243 to i32
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %244, %245
  %247 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %248 = sext i16 %247 to i32
  %249 = or i32 %246, %248
  %250 = call i32 @write_nic_word(%struct.net_device* %241, i32 %242, i32 %249)
  %251 = call i32 @udelay(i32 2)
  %252 = load %struct.net_device*, %struct.net_device** %3, align 8
  %253 = load i32, i32* @RFPinsOutput, align 4
  %254 = load i16, i16* %14, align 2
  %255 = sext i16 %254 to i32
  %256 = load i32, i32* %8, align 4
  %257 = or i32 %255, %256
  %258 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %259 = sext i16 %258 to i32
  %260 = or i32 %257, %259
  %261 = call i32 @write_nic_word(%struct.net_device* %252, i32 %253, i32 %260)
  %262 = call i32 @udelay(i32 2)
  %263 = load %struct.net_device*, %struct.net_device** %3, align 8
  %264 = load i32, i32* @RFPinsOutput, align 4
  %265 = load i16, i16* %14, align 2
  %266 = sext i16 %265 to i32
  %267 = load i32, i32* %8, align 4
  %268 = or i32 %266, %267
  %269 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %270 = sext i16 %269 to i32
  %271 = or i32 %268, %270
  %272 = call i32 @write_nic_word(%struct.net_device* %263, i32 %264, i32 %271)
  %273 = call i32 @udelay(i32 2)
  %274 = load %struct.net_device*, %struct.net_device** %3, align 8
  %275 = load i32, i32* @RFPinsInput, align 4
  %276 = call i32 @read_nic_word(%struct.net_device* %274, i32 %275)
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i16, i16* @BB_HOST_BANG_CLK, align 2
  %279 = sext i16 %278 to i32
  %280 = and i32 %277, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %232
  %283 = load i32, i32* %7, align 4
  br label %285

284:                                              ; preds = %232
  br label %285

285:                                              ; preds = %284, %282
  %286 = phi i32 [ %283, %282 ], [ 0, %284 ]
  %287 = load i32, i32* %6, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %6, align 4
  %289 = load %struct.net_device*, %struct.net_device** %3, align 8
  %290 = load i32, i32* @RFPinsOutput, align 4
  %291 = load i16, i16* %14, align 2
  %292 = sext i16 %291 to i32
  %293 = load i32, i32* %8, align 4
  %294 = or i32 %292, %293
  %295 = call i32 @write_nic_word(%struct.net_device* %289, i32 %290, i32 %294)
  %296 = call i32 @udelay(i32 2)
  %297 = load i32, i32* %17, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %285
  %300 = load i32, i32* %7, align 4
  %301 = shl i32 %300, 1
  br label %305

302:                                              ; preds = %285
  %303 = load i32, i32* %7, align 4
  %304 = ashr i32 %303, 1
  br label %305

305:                                              ; preds = %302, %299
  %306 = phi i32 [ %301, %299 ], [ %304, %302 ]
  store i32 %306, i32* %7, align 4
  br label %307

307:                                              ; preds = %305
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %228

310:                                              ; preds = %228
  %311 = load %struct.net_device*, %struct.net_device** %3, align 8
  %312 = load i32, i32* @RFPinsOutput, align 4
  %313 = load i32, i32* @BB_HOST_BANG_EN, align 4
  %314 = load i32, i32* @BB_HOST_BANG_RW, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* %8, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @write_nic_word(%struct.net_device* %311, i32 %312, i32 %317)
  %319 = call i32 @udelay(i32 2)
  %320 = load %struct.net_device*, %struct.net_device** %3, align 8
  %321 = load i32, i32* @RFPinsEnable, align 4
  %322 = load i32, i32* %9, align 4
  %323 = call i32 @write_nic_word(%struct.net_device* %320, i32 %321, i32 %322)
  %324 = load %struct.net_device*, %struct.net_device** %3, align 8
  %325 = load i32, i32* @RFPinsSelect, align 4
  %326 = load i32, i32* %10, align 4
  %327 = call i32 @write_nic_word(%struct.net_device* %324, i32 %325, i32 %326)
  %328 = load %struct.net_device*, %struct.net_device** %3, align 8
  %329 = load i32, i32* @RFPinsOutput, align 4
  %330 = call i32 @write_nic_word(%struct.net_device* %328, i32 %329, i32 928)
  %331 = load i32, i32* %6, align 4
  ret i32 %331
}

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
