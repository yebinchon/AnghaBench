; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i64, i32, i32, i32, i16, i32, i32, i16, i32, i16, i64, i32, i32, i16, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16, i16 }
%struct.TYPE_3__ = type { i16, i16 }

@SIS_315H = common dso_local global i64 0, align 8
@VB_SISLVDS = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@VB_SIS30xCLV = common dso_local global i32 0, align 4
@VB_SIS302LV = common dso_local global i32 0, align 4
@SetCRT2ToTV = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@TVSetYPbPr525p = common dso_local global i32 0, align 4
@TVSetYPbPr750p = common dso_local global i32 0, align 4
@VB_SIS301 = common dso_local global i32 0, align 4
@Panel_1280x1024 = common dso_local global i64 0, align 8
@VB_SIS30xBLV = common dso_local global i32 0, align 4
@TVSetHiVision = common dso_local global i32 0, align 4
@SIS_RI_1024x768 = common dso_local global i16 0, align 2
@SIS_RI_1024x576 = common dso_local global i16 0, align 2
@SIS_RI_1280x1024 = common dso_local global i16 0, align 2
@SIS_RI_1280x720 = common dso_local global i16 0, align 2
@TVSetNTSC1024 = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@TVSetTVSimuMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetGroup4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup4(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %18 = load i16, i16* %6, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %19, 19
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %23 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %22, i32 0, i32 19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %12, align 2
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  store i16 %37, i16* %14, align 2
  br label %65

38:                                               ; preds = %4
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 18
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %45 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %44, i32 0, i32 0
  %46 = load i16, i16* %45, align 8
  store i16 %46, i16* %12, align 2
  store i16 0, i16* %14, align 2
  br label %64

47:                                               ; preds = %38
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 17
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %12, align 2
  %56 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %57 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %56, i32 0, i32 17
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i16, i16* %7, align 2
  %60 = zext i16 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 2
  store i16 %63, i16* %14, align 2
  br label %64

64:                                               ; preds = %47, %43
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SIS_315H, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %73 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VB_SISLVDS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SetCRT2ToLCDA, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %87 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @SiS_SetReg(i32 %88, i32 36, i32 14)
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %65
  %93 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %94 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VB_SIS30xCLV, align 4
  %97 = load i32, i32* @VB_SIS302LV, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %103 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SetCRT2ToTV, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @SiS_SetRegAND(i32 %111, i32 16, i32 159)
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %92
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SIS_315H, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %122 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SetCRT2ToLCDA, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %129 = call i32 @SiS_SetDualLinkEtc(%struct.SiS_Private* %128)
  br label %724

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %133 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @SiS_SetReg(i32 %134, i32 19, i32 %137)
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 5
  %141 = load i16, i16* %140, align 4
  store i16 %141, i16* %11, align 2
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 8
  %145 = load i16, i16* %11, align 2
  %146 = zext i16 %145 to i32
  %147 = call i32 @SiS_SetReg(i32 %144, i32 20, i32 %146)
  %148 = load i16, i16* %11, align 2
  %149 = zext i16 %148 to i32
  %150 = ashr i32 %149, 1
  %151 = and i32 %150, 128
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %13, align 2
  %153 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %154 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %10, align 2
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 8
  %161 = load i16, i16* %10, align 2
  %162 = zext i16 %161 to i32
  %163 = call i32 @SiS_SetReg(i32 %160, i32 22, i32 %162)
  %164 = load i16, i16* %10, align 2
  %165 = zext i16 %164 to i32
  %166 = ashr i32 %165, 5
  %167 = and i32 %166, 120
  %168 = load i16, i16* %13, align 2
  %169 = zext i16 %168 to i32
  %170 = or i32 %169, %167
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %13, align 2
  %172 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %173 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 1
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %10, align 2
  %177 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %178 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SetCRT2ToTV, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %131
  %184 = load i16, i16* %10, align 2
  %185 = zext i16 %184 to i32
  %186 = sub nsw i32 %185, 5
  %187 = trunc i32 %186 to i16
  store i16 %187, i16* %10, align 2
  br label %188

188:                                              ; preds = %183, %131
  %189 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %190 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %189, i32 0, i32 16
  %191 = load i32, i32* %190, align 8
  %192 = load i16, i16* %10, align 2
  %193 = zext i16 %192 to i32
  %194 = call i32 @SiS_SetReg(i32 %191, i32 23, i32 %193)
  %195 = load i16, i16* %10, align 2
  %196 = zext i16 %195 to i32
  %197 = ashr i32 %196, 8
  %198 = and i32 %197, 7
  %199 = load i16, i16* %13, align 2
  %200 = zext i16 %199 to i32
  %201 = or i32 %200, %198
  %202 = trunc i32 %201 to i16
  store i16 %202, i16* %13, align 2
  %203 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %204 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %203, i32 0, i32 16
  %205 = load i32, i32* %204, align 8
  %206 = load i16, i16* %13, align 2
  %207 = zext i16 %206 to i32
  %208 = call i32 @SiS_SetReg(i32 %205, i32 21, i32 %207)
  %209 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %210 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %209, i32 0, i32 8
  %211 = load i16, i16* %210, align 8
  store i16 %211, i16* %11, align 2
  %212 = load i16, i16* %12, align 2
  %213 = zext i16 %212 to i32
  %214 = load i16, i16* @HalfDCLK, align 2
  %215 = zext i16 %214 to i32
  %216 = and i32 %213, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %188
  %219 = load i16, i16* %11, align 2
  %220 = zext i16 %219 to i32
  %221 = ashr i32 %220, 1
  %222 = trunc i32 %221 to i16
  store i16 %222, i16* %11, align 2
  br label %223

223:                                              ; preds = %218, %188
  %224 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %225 = call i64 @SiS_IsDualLink(%struct.SiS_Private* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i16, i16* %11, align 2
  %229 = zext i16 %228 to i32
  %230 = ashr i32 %229, 1
  %231 = trunc i32 %230 to i16
  store i16 %231, i16* %11, align 2
  br label %232

232:                                              ; preds = %227, %223
  %233 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %234 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @SetCRT2ToLCD, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  store i16 0, i16* %13, align 2
  %240 = load i16, i16* %11, align 2
  %241 = zext i16 %240 to i32
  %242 = icmp sgt i32 %241, 800
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store i16 96, i16* %13, align 2
  br label %244

244:                                              ; preds = %243, %239
  br label %293

245:                                              ; preds = %232
  %246 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %247 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SetCRT2ToHiVision, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %245
  store i16 0, i16* %13, align 2
  %253 = load i16, i16* %11, align 2
  %254 = zext i16 %253 to i32
  %255 = icmp sgt i32 %254, 1024
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i16 192, i16* %13, align 2
  br label %263

257:                                              ; preds = %252
  %258 = load i16, i16* %11, align 2
  %259 = zext i16 %258 to i32
  %260 = icmp sge i32 %259, 960
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  store i16 160, i16* %13, align 2
  br label %262

262:                                              ; preds = %261, %257
  br label %263

263:                                              ; preds = %262, %256
  br label %292

264:                                              ; preds = %245
  %265 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %266 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @TVSetYPbPr525p, align 4
  %269 = load i32, i32* @TVSetYPbPr750p, align 4
  %270 = or i32 %268, %269
  %271 = and i32 %267, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %264
  store i16 0, i16* %13, align 2
  %274 = load i16, i16* %11, align 2
  %275 = zext i16 %274 to i32
  %276 = icmp sge i32 %275, 1280
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i16 64, i16* %13, align 2
  br label %284

278:                                              ; preds = %273
  %279 = load i16, i16* %11, align 2
  %280 = zext i16 %279 to i32
  %281 = icmp sge i32 %280, 1024
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i16 32, i16* %13, align 2
  br label %283

283:                                              ; preds = %282, %278
  br label %284

284:                                              ; preds = %283, %277
  br label %291

285:                                              ; preds = %264
  store i16 128, i16* %13, align 2
  %286 = load i16, i16* %11, align 2
  %287 = zext i16 %286 to i32
  %288 = icmp sge i32 %287, 1024
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i16 160, i16* %13, align 2
  br label %290

290:                                              ; preds = %289, %285
  br label %291

291:                                              ; preds = %290, %284
  br label %292

292:                                              ; preds = %291, %263
  br label %293

293:                                              ; preds = %292, %244
  %294 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %295 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %294, i32 0, i32 10
  %296 = load i16, i16* %295, align 8
  %297 = zext i16 %296 to i32
  %298 = load i16, i16* %13, align 2
  %299 = zext i16 %298 to i32
  %300 = or i32 %299, %297
  %301 = trunc i32 %300 to i16
  store i16 %301, i16* %13, align 2
  %302 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %303 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @VB_SIS301, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %324

308:                                              ; preds = %293
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 11
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @Panel_1280x1024, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %308
  %315 = load i16, i16* %13, align 2
  %316 = zext i16 %315 to i32
  %317 = and i32 %316, 240
  %318 = trunc i32 %317 to i16
  store i16 %318, i16* %13, align 2
  %319 = load i16, i16* %13, align 2
  %320 = zext i16 %319 to i32
  %321 = or i32 %320, 10
  %322 = trunc i32 %321 to i16
  store i16 %322, i16* %13, align 2
  br label %323

323:                                              ; preds = %314, %308
  br label %324

324:                                              ; preds = %323, %293
  %325 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %326 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %325, i32 0, i32 16
  %327 = load i32, i32* %326, align 8
  %328 = load i16, i16* %13, align 2
  %329 = call i32 @SiS_SetRegANDOR(i32 %327, i32 14, i32 16, i16 zeroext %328)
  %330 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %331 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %330, i32 0, i32 12
  %332 = load i32, i32* %331, align 8
  store i32 %332, i32* %16, align 4
  %333 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %334 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %333, i32 0, i32 13
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %15, align 4
  %336 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %337 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @SetCRT2ToHiVision, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %351

342:                                              ; preds = %324
  %343 = load i16, i16* %13, align 2
  %344 = zext i16 %343 to i32
  %345 = and i32 %344, 224
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %342
  %348 = load i32, i32* %15, align 4
  %349 = lshr i32 %348, 1
  store i32 %349, i32* %15, align 4
  br label %350

350:                                              ; preds = %347, %342
  br label %351

351:                                              ; preds = %350, %324
  %352 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %353 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %352, i32 0, i32 14
  %354 = load i16, i16* %353, align 8
  store i16 %354, i16* %10, align 2
  %355 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %356 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %355, i32 0, i32 16
  %357 = load i32, i32* %356, align 8
  %358 = load i16, i16* %10, align 2
  %359 = zext i16 %358 to i32
  %360 = call i32 @SiS_SetReg(i32 %357, i32 24, i32 %359)
  %361 = load i16, i16* %10, align 2
  %362 = zext i16 %361 to i32
  %363 = ashr i32 %362, 8
  %364 = trunc i32 %363 to i16
  store i16 %364, i16* %10, align 2
  %365 = load i16, i16* %10, align 2
  %366 = zext i16 %365 to i32
  %367 = or i32 %366, 64
  %368 = trunc i32 %367 to i16
  store i16 %368, i16* %10, align 2
  %369 = load i32, i32* %16, align 4
  %370 = load i32, i32* %15, align 4
  %371 = icmp ule i32 %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %351
  %373 = load i16, i16* %10, align 2
  %374 = zext i16 %373 to i32
  %375 = xor i32 %374, 64
  %376 = trunc i32 %375 to i16
  store i16 %376, i16* %10, align 2
  br label %381

377:                                              ; preds = %351
  %378 = load i32, i32* %15, align 4
  %379 = load i32, i32* %16, align 4
  %380 = sub i32 %379, %378
  store i32 %380, i32* %16, align 4
  br label %381

381:                                              ; preds = %377, %372
  %382 = load i32, i32* %16, align 4
  %383 = mul i32 %382, 262144
  store i32 %383, i32* %16, align 4
  %384 = load i32, i32* %16, align 4
  %385 = load i32, i32* %15, align 4
  %386 = urem i32 %384, %385
  store i32 %386, i32* %17, align 4
  %387 = load i32, i32* %15, align 4
  %388 = load i32, i32* %16, align 4
  %389 = udiv i32 %388, %387
  store i32 %389, i32* %16, align 4
  %390 = load i32, i32* %17, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %381
  %393 = load i32, i32* %16, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %16, align 4
  br label %395

395:                                              ; preds = %392, %381
  %396 = load i32, i32* %16, align 4
  %397 = and i32 %396, 255
  %398 = trunc i32 %397 to i16
  store i16 %398, i16* %13, align 2
  %399 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %400 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %399, i32 0, i32 16
  %401 = load i32, i32* %400, align 8
  %402 = load i16, i16* %13, align 2
  %403 = zext i16 %402 to i32
  %404 = call i32 @SiS_SetReg(i32 %401, i32 27, i32 %403)
  %405 = load i32, i32* %16, align 4
  %406 = and i32 %405, 65280
  %407 = lshr i32 %406, 8
  %408 = trunc i32 %407 to i16
  store i16 %408, i16* %13, align 2
  %409 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %410 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %409, i32 0, i32 16
  %411 = load i32, i32* %410, align 8
  %412 = load i16, i16* %13, align 2
  %413 = zext i16 %412 to i32
  %414 = call i32 @SiS_SetReg(i32 %411, i32 26, i32 %413)
  %415 = load i32, i32* %16, align 4
  %416 = lshr i32 %415, 12
  %417 = and i32 %416, 112
  %418 = trunc i32 %417 to i16
  store i16 %418, i16* %13, align 2
  %419 = load i16, i16* %10, align 2
  %420 = zext i16 %419 to i32
  %421 = and i32 %420, 79
  %422 = load i16, i16* %13, align 2
  %423 = zext i16 %422 to i32
  %424 = or i32 %423, %421
  %425 = trunc i32 %424 to i16
  store i16 %425, i16* %13, align 2
  %426 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %427 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %426, i32 0, i32 16
  %428 = load i32, i32* %427, align 8
  %429 = load i16, i16* %13, align 2
  %430 = zext i16 %429 to i32
  %431 = call i32 @SiS_SetReg(i32 %428, i32 25, i32 %430)
  %432 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %433 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @VB_SIS30xBLV, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %718

438:                                              ; preds = %395
  %439 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %440 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %439, i32 0, i32 16
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @SiS_SetReg(i32 %441, i32 28, i32 40)
  store i16 0, i16* %11, align 2
  %443 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %444 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @TVSetHiVision, align 4
  %447 = load i32, i32* @TVSetYPbPr750p, align 4
  %448 = or i32 %446, %447
  %449 = and i32 %445, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %438
  store i16 8, i16* %11, align 2
  br label %452

452:                                              ; preds = %451, %438
  %453 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %454 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %453, i32 0, i32 8
  %455 = load i16, i16* %454, align 8
  store i16 %455, i16* %9, align 2
  %456 = load i16, i16* %12, align 2
  %457 = zext i16 %456 to i32
  %458 = load i16, i16* @HalfDCLK, align 2
  %459 = zext i16 %458 to i32
  %460 = and i32 %457, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %452
  %463 = load i16, i16* %9, align 2
  %464 = zext i16 %463 to i32
  %465 = ashr i32 %464, 1
  %466 = trunc i32 %465 to i16
  store i16 %466, i16* %9, align 2
  br label %467

467:                                              ; preds = %462, %452
  %468 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %469 = call i64 @SiS_IsDualLink(%struct.SiS_Private* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %467
  %472 = load i16, i16* %9, align 2
  %473 = zext i16 %472 to i32
  %474 = ashr i32 %473, 1
  %475 = trunc i32 %474 to i16
  store i16 %475, i16* %9, align 2
  br label %476

476:                                              ; preds = %471, %467
  %477 = load i16, i16* %9, align 2
  %478 = zext i16 %477 to i32
  %479 = icmp sgt i32 %478, 800
  br i1 %479, label %480, label %572

480:                                              ; preds = %476
  %481 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %482 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @SetCRT2ToLCD, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %480
  %488 = load i16, i16* %9, align 2
  %489 = zext i16 %488 to i32
  %490 = sub nsw i32 %489, 800
  %491 = trunc i32 %490 to i16
  store i16 %491, i16* %9, align 2
  br label %571

492:                                              ; preds = %480
  store i16 8, i16* %11, align 2
  %493 = load i16, i16* %9, align 2
  %494 = zext i16 %493 to i32
  %495 = icmp eq i32 %494, 960
  br i1 %495, label %496, label %501

496:                                              ; preds = %492
  %497 = load i16, i16* %9, align 2
  %498 = zext i16 %497 to i32
  %499 = mul nsw i32 %498, 25
  %500 = trunc i32 %499 to i16
  store i16 %500, i16* %9, align 2
  br label %516

501:                                              ; preds = %492
  %502 = load i16, i16* %9, align 2
  %503 = zext i16 %502 to i32
  %504 = icmp eq i32 %503, 1024
  br i1 %504, label %505, label %510

505:                                              ; preds = %501
  %506 = load i16, i16* %9, align 2
  %507 = zext i16 %506 to i32
  %508 = mul nsw i32 %507, 25
  %509 = trunc i32 %508 to i16
  store i16 %509, i16* %9, align 2
  br label %515

510:                                              ; preds = %501
  %511 = load i16, i16* %9, align 2
  %512 = zext i16 %511 to i32
  %513 = mul nsw i32 %512, 20
  %514 = trunc i32 %513 to i16
  store i16 %514, i16* %9, align 2
  br label %515

515:                                              ; preds = %510, %505
  br label %516

516:                                              ; preds = %515, %496
  %517 = load i16, i16* %9, align 2
  %518 = zext i16 %517 to i32
  %519 = srem i32 %518, 32
  %520 = trunc i32 %519 to i16
  store i16 %520, i16* %13, align 2
  %521 = load i16, i16* %9, align 2
  %522 = zext i16 %521 to i32
  %523 = sdiv i32 %522, 32
  %524 = trunc i32 %523 to i16
  store i16 %524, i16* %9, align 2
  %525 = load i16, i16* %13, align 2
  %526 = icmp ne i16 %525, 0
  br i1 %526, label %527, label %530

527:                                              ; preds = %516
  %528 = load i16, i16* %9, align 2
  %529 = add i16 %528, 1
  store i16 %529, i16* %9, align 2
  br label %530

530:                                              ; preds = %527, %516
  %531 = load i16, i16* %9, align 2
  %532 = add i16 %531, 1
  store i16 %532, i16* %9, align 2
  %533 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %534 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @SetCRT2ToTV, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %570

539:                                              ; preds = %530
  %540 = load i16, i16* %14, align 2
  %541 = zext i16 %540 to i32
  %542 = load i16, i16* @SIS_RI_1024x768, align 2
  %543 = zext i16 %542 to i32
  %544 = icmp eq i32 %541, %543
  br i1 %544, label %563, label %545

545:                                              ; preds = %539
  %546 = load i16, i16* %14, align 2
  %547 = zext i16 %546 to i32
  %548 = load i16, i16* @SIS_RI_1024x576, align 2
  %549 = zext i16 %548 to i32
  %550 = icmp eq i32 %547, %549
  br i1 %550, label %563, label %551

551:                                              ; preds = %545
  %552 = load i16, i16* %14, align 2
  %553 = zext i16 %552 to i32
  %554 = load i16, i16* @SIS_RI_1280x1024, align 2
  %555 = zext i16 %554 to i32
  %556 = icmp eq i32 %553, %555
  br i1 %556, label %563, label %557

557:                                              ; preds = %551
  %558 = load i16, i16* %14, align 2
  %559 = zext i16 %558 to i32
  %560 = load i16, i16* @SIS_RI_1280x720, align 2
  %561 = zext i16 %560 to i32
  %562 = icmp eq i32 %559, %561
  br i1 %562, label %563, label %569

563:                                              ; preds = %557, %551, %545, %539
  %564 = load i16, i16* %9, align 2
  %565 = zext i16 %564 to i32
  %566 = and i32 %565, 65280
  %567 = or i32 %566, 32
  %568 = trunc i32 %567 to i16
  store i16 %568, i16* %9, align 2
  br label %569

569:                                              ; preds = %563, %557
  br label %570

570:                                              ; preds = %569, %530
  br label %571

571:                                              ; preds = %570, %487
  br label %572

572:                                              ; preds = %571, %476
  %573 = load i16, i16* %9, align 2
  %574 = add i16 %573, -1
  store i16 %574, i16* %9, align 2
  %575 = load i16, i16* %9, align 2
  %576 = zext i16 %575 to i32
  %577 = ashr i32 %576, 4
  %578 = and i32 %577, 48
  %579 = load i16, i16* %11, align 2
  %580 = zext i16 %579 to i32
  %581 = or i32 %578, %580
  %582 = trunc i32 %581 to i16
  store i16 %582, i16* %13, align 2
  %583 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %584 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %583, i32 0, i32 16
  %585 = load i32, i32* %584, align 8
  %586 = load i16, i16* %9, align 2
  %587 = zext i16 %586 to i32
  %588 = call i32 @SiS_SetReg(i32 %585, i32 29, i32 %587)
  %589 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %590 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %589, i32 0, i32 16
  %591 = load i32, i32* %590, align 8
  %592 = load i16, i16* %13, align 2
  %593 = zext i16 %592 to i32
  %594 = call i32 @SiS_SetReg(i32 %591, i32 30, i32 %593)
  store i16 54, i16* %13, align 2
  store i16 208, i16* %11, align 2
  %595 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %596 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* @SIS_315H, align 8
  %599 = icmp sge i64 %597, %598
  br i1 %599, label %600, label %608

600:                                              ; preds = %572
  %601 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %602 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %601, i32 0, i32 2
  %603 = load i32, i32* %602, align 8
  %604 = load i32, i32* @VB_SISLVDS, align 4
  %605 = and i32 %603, %604
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %600
  store i16 38, i16* %13, align 2
  store i16 192, i16* %11, align 2
  br label %608

608:                                              ; preds = %607, %600, %572
  %609 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %610 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %609, i32 0, i32 3
  %611 = load i32, i32* %610, align 4
  %612 = load i32, i32* @SetCRT2ToTV, align 4
  %613 = and i32 %611, %612
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %654

615:                                              ; preds = %608
  %616 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %617 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %616, i32 0, i32 9
  %618 = load i32, i32* %617, align 4
  %619 = load i32, i32* @TVSetNTSC1024, align 4
  %620 = load i32, i32* @TVSetHiVision, align 4
  %621 = or i32 %619, %620
  %622 = load i32, i32* @TVSetYPbPr750p, align 4
  %623 = or i32 %621, %622
  %624 = load i32, i32* @TVSetYPbPr525p, align 4
  %625 = or i32 %623, %624
  %626 = and i32 %618, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %653, label %628

628:                                              ; preds = %615
  %629 = load i16, i16* %13, align 2
  %630 = zext i16 %629 to i32
  %631 = or i32 %630, 1
  %632 = trunc i32 %631 to i16
  store i16 %632, i16* %13, align 2
  %633 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %634 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* @SetInSlaveMode, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %652

639:                                              ; preds = %628
  %640 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %641 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %640, i32 0, i32 9
  %642 = load i32, i32* %641, align 4
  %643 = load i32, i32* @TVSetTVSimuMode, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %651, label %646

646:                                              ; preds = %639
  %647 = load i16, i16* %13, align 2
  %648 = zext i16 %647 to i32
  %649 = and i32 %648, -2
  %650 = trunc i32 %649 to i16
  store i16 %650, i16* %13, align 2
  br label %651

651:                                              ; preds = %646, %639
  br label %652

652:                                              ; preds = %651, %628
  br label %653

653:                                              ; preds = %652, %615
  br label %654

654:                                              ; preds = %653, %608
  %655 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %656 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %655, i32 0, i32 16
  %657 = load i32, i32* %656, align 8
  %658 = load i16, i16* %11, align 2
  %659 = zext i16 %658 to i32
  %660 = load i16, i16* %13, align 2
  %661 = call i32 @SiS_SetRegANDOR(i32 %657, i32 31, i32 %659, i16 zeroext %660)
  %662 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %663 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %662, i32 0, i32 15
  %664 = load i32, i32* %663, align 4
  %665 = ashr i32 %664, 1
  %666 = trunc i32 %665 to i16
  store i16 %666, i16* %11, align 2
  %667 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %668 = call i64 @SiS_IsDualLink(%struct.SiS_Private* %667)
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %675

670:                                              ; preds = %654
  %671 = load i16, i16* %11, align 2
  %672 = zext i16 %671 to i32
  %673 = ashr i32 %672, 1
  %674 = trunc i32 %673 to i16
  store i16 %674, i16* %11, align 2
  br label %675

675:                                              ; preds = %670, %654
  %676 = load i16, i16* %11, align 2
  %677 = zext i16 %676 to i32
  %678 = sub nsw i32 %677, 2
  %679 = trunc i32 %678 to i16
  store i16 %679, i16* %11, align 2
  %680 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %681 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %680, i32 0, i32 16
  %682 = load i32, i32* %681, align 8
  %683 = load i16, i16* %11, align 2
  %684 = zext i16 %683 to i32
  %685 = call i32 @SiS_SetReg(i32 %682, i32 34, i32 %684)
  %686 = load i16, i16* %11, align 2
  %687 = zext i16 %686 to i32
  %688 = ashr i32 %687, 5
  %689 = and i32 %688, 56
  %690 = trunc i32 %689 to i16
  store i16 %690, i16* %13, align 2
  %691 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %692 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %691, i32 0, i32 16
  %693 = load i32, i32* %692, align 8
  %694 = load i16, i16* %13, align 2
  %695 = call i32 @SiS_SetRegANDOR(i32 %693, i32 33, i32 192, i16 zeroext %694)
  %696 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %697 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %696, i32 0, i32 2
  %698 = load i32, i32* %697, align 8
  %699 = load i32, i32* @VB_SISLVDS, align 4
  %700 = and i32 %698, %699
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %715

702:                                              ; preds = %675
  %703 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %704 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %703, i32 0, i32 3
  %705 = load i32, i32* %704, align 4
  %706 = load i32, i32* @SetCRT2ToLCD, align 4
  %707 = and i32 %705, %706
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %714

709:                                              ; preds = %702
  %710 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %711 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %710, i32 0, i32 16
  %712 = load i32, i32* %711, align 8
  %713 = call i32 @SiS_SetReg(i32 %712, i32 36, i32 14)
  br label %714

714:                                              ; preds = %709, %702
  br label %715

715:                                              ; preds = %714, %675
  %716 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %717 = call i32 @SiS_SetDualLinkEtc(%struct.SiS_Private* %716)
  br label %718

718:                                              ; preds = %715, %395
  %719 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %720 = load i16, i16* %6, align 2
  %721 = load i16, i16* %7, align 2
  %722 = load i16, i16* %8, align 2
  %723 = call i32 @SiS_SetCRT2VCLK(%struct.SiS_Private* %719, i16 zeroext %720, i16 zeroext %721, i16 zeroext %722)
  br label %724

724:                                              ; preds = %718, %127
  ret void
}

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetDualLinkEtc(%struct.SiS_Private*) #1

declare dso_local i64 @SiS_IsDualLink(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetCRT2VCLK(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
