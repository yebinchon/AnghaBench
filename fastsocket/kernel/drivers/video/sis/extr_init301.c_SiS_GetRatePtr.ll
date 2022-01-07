; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetRatePtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_GetRatePtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i64, i32, i32, i32, i32, i32, i64, i16, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16, i16, i32 }
%struct.TYPE_4__ = type { i16 }

@SiS_GetRatePtr.LCDRefreshIndex = internal constant [20 x i16] [i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 0, i16 0, i16 0], align 16
@SetCRT2ToTV = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i16 0, align 2
@ProgrammingCRT2 = common dso_local global i32 0, align 4
@VB_SISVB = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@DriverMode = common dso_local global i32 0, align 4
@ModeTypeMask = common dso_local global i16 0, align 2
@SetCRT2ToRAMDAC = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@InterlaceMode = common dso_local global i16 0, align 2
@DisableCRT2Display = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetRatePtr(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
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
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %16, 254
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i16 0, i16* %4, align 2
  br label %369

19:                                               ; preds = %3
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sle i32 %21, 19
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 11
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %11, align 2
  br label %41

32:                                               ; preds = %19
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 9
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 4
  store i16 %40, i16* %11, align 2
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %43 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SetCRT2ToTV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @HalfDCLK, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i16 0, i16* %4, align 2
  br label %369

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i16, i16* %6, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp slt i32 %65, 20
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i16 -1, i16* %4, align 2
  br label %369

68:                                               ; preds = %63
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SiS_GetReg(i32 %71, i32 51)
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %72, %75
  %77 = and i32 %76, 15
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %12, align 2
  %79 = load i16, i16* %12, align 2
  store i16 %79, i16* %14, align 2
  %80 = load i16, i16* %12, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load i16, i16* %12, align 2
  %85 = add i16 %84, -1
  store i16 %85, i16* %12, align 2
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ProgrammingCRT2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %182

93:                                               ; preds = %86
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @VB_SISVB, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %93
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %102 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SetCRT2ToLCD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %100
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VB_NoLCD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i16 0, i16* %12, align 2
  br label %124

115:                                              ; preds = %107
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %117 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DontExpandLCD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i16 0, i16* %14, align 2
  store i16 0, i16* %12, align 2
  br label %123

123:                                              ; preds = %122, %115
  br label %124

124:                                              ; preds = %123, %114
  br label %125

125:                                              ; preds = %124, %100
  %126 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %127 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SetCRT2ToLCD, align 4
  %130 = load i32, i32* @SetCRT2ToLCDA, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %125
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @VB_NoLCD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %154, label %141

141:                                              ; preds = %134
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %143 = call i64 @SiS_GetBIOSLCDResInfo(%struct.SiS_Private* %142)
  %144 = getelementptr inbounds [20 x i16], [20 x i16]* @SiS_GetRatePtr.LCDRefreshIndex, i64 0, i64 %143
  %145 = load i16, i16* %144, align 2
  store i16 %145, i16* %13, align 2
  %146 = load i16, i16* %12, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* %13, align 2
  %149 = zext i16 %148 to i32
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i16, i16* %13, align 2
  store i16 %152, i16* %12, align 2
  br label %153

153:                                              ; preds = %151, %141
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %154, %125
  br label %181

156:                                              ; preds = %93
  %157 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %158 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SetCRT2ToLCD, align 4
  %161 = load i32, i32* @SetCRT2ToLCDA, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i16 0, i16* %12, align 2
  br label %166

166:                                              ; preds = %165, %156
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %168 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %173 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SetCRT2ToTV, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i16 0, i16* %12, align 2
  br label %179

179:                                              ; preds = %178, %171
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %86
  %183 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %184 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %183, i32 0, i32 9
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i16, i16* %7, align 2
  %187 = zext i16 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i16, i16* %189, align 2
  store i16 %190, i16* %8, align 2
  %191 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %192 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %191, i32 0, i32 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i16, i16* %8, align 2
  %195 = zext i16 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i16, i16* %197, align 2
  store i16 %198, i16* %6, align 2
  %199 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %200 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @SIS_315H, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %241

204:                                              ; preds = %182
  %205 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %206 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @DriverMode, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %240, label %211

211:                                              ; preds = %204
  %212 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %213 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %212, i32 0, i32 9
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = load i16, i16* %7, align 2
  %216 = zext i16 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 261
  br i1 %220, label %231, label %221

221:                                              ; preds = %211
  %222 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %223 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %222, i32 0, i32 9
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = load i16, i16* %7, align 2
  %226 = zext i16 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 263
  br i1 %230, label %231, label %239

231:                                              ; preds = %221, %211
  %232 = load i16, i16* %14, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp sle i32 %233, 1
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i16, i16* %8, align 2
  %237 = add i16 %236, 1
  store i16 %237, i16* %8, align 2
  br label %238

238:                                              ; preds = %235, %231
  br label %239

239:                                              ; preds = %238, %221
  br label %240

240:                                              ; preds = %239, %204
  br label %241

241:                                              ; preds = %240, %182
  store i16 0, i16* %9, align 2
  br label %242

242:                                              ; preds = %292, %241
  %243 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %244 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %243, i32 0, i32 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load i16, i16* %8, align 2
  %247 = zext i16 %246 to i32
  %248 = load i16, i16* %9, align 2
  %249 = zext i16 %248 to i32
  %250 = add nsw i32 %247, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i16, i16* %253, align 2
  %255 = zext i16 %254 to i32
  %256 = load i16, i16* %6, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp ne i32 %255, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %242
  br label %296

260:                                              ; preds = %242
  %261 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %262 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %261, i32 0, i32 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = load i16, i16* %8, align 2
  %265 = zext i16 %264 to i32
  %266 = load i16, i16* %9, align 2
  %267 = zext i16 %266 to i32
  %268 = add nsw i32 %265, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i16, i16* %271, align 2
  store i16 %272, i16* %13, align 2
  %273 = load i16, i16* @ModeTypeMask, align 2
  %274 = zext i16 %273 to i32
  %275 = load i16, i16* %13, align 2
  %276 = zext i16 %275 to i32
  %277 = and i32 %276, %274
  %278 = trunc i32 %277 to i16
  store i16 %278, i16* %13, align 2
  %279 = load i16, i16* %13, align 2
  %280 = zext i16 %279 to i32
  %281 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %282 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %281, i32 0, i32 7
  %283 = load i16, i16* %282, align 8
  %284 = zext i16 %283 to i32
  %285 = icmp slt i32 %280, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %260
  br label %296

287:                                              ; preds = %260
  %288 = load i16, i16* %9, align 2
  %289 = add i16 %288, 1
  store i16 %289, i16* %9, align 2
  %290 = load i16, i16* %12, align 2
  %291 = add i16 %290, -1
  store i16 %291, i16* %12, align 2
  br label %292

292:                                              ; preds = %287
  %293 = load i16, i16* %12, align 2
  %294 = zext i16 %293 to i32
  %295 = icmp ne i32 %294, 65535
  br i1 %295, label %242, label %296

296:                                              ; preds = %292, %286, %259
  %297 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %298 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @SetCRT2ToRAMDAC, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %335, label %303

303:                                              ; preds = %296
  %304 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %305 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @SetInSlaveMode, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %303
  %311 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %312 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %311, i32 0, i32 8
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %312, align 8
  %314 = load i16, i16* %8, align 2
  %315 = zext i16 %314 to i32
  %316 = load i16, i16* %9, align 2
  %317 = zext i16 %316 to i32
  %318 = add nsw i32 %315, %317
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = load i16, i16* %322, align 2
  store i16 %323, i16* %13, align 2
  %324 = load i16, i16* %13, align 2
  %325 = zext i16 %324 to i32
  %326 = load i16, i16* @InterlaceMode, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %325, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %310
  %331 = load i16, i16* %9, align 2
  %332 = add i16 %331, 1
  store i16 %332, i16* %9, align 2
  br label %333

333:                                              ; preds = %330, %310
  br label %334

334:                                              ; preds = %333, %303
  br label %335

335:                                              ; preds = %334, %296
  %336 = load i16, i16* %9, align 2
  %337 = add i16 %336, -1
  store i16 %337, i16* %9, align 2
  %338 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %339 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @ProgrammingCRT2, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %362

344:                                              ; preds = %335
  %345 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %346 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @DisableCRT2Display, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %362, label %351

351:                                              ; preds = %344
  %352 = load i16, i16* %9, align 2
  store i16 %352, i16* %10, align 2
  %353 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %354 = load i16, i16* %6, align 2
  %355 = load i16, i16* %7, align 2
  %356 = load i16, i16* %8, align 2
  %357 = call i32 @SiS_AdjustCRT2Rate(%struct.SiS_Private* %353, i16 zeroext %354, i16 zeroext %355, i16 zeroext %356, i16* %9)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %351
  %360 = load i16, i16* %10, align 2
  store i16 %360, i16* %9, align 2
  br label %361

361:                                              ; preds = %359, %351
  br label %362

362:                                              ; preds = %361, %344, %335
  %363 = load i16, i16* %8, align 2
  %364 = zext i16 %363 to i32
  %365 = load i16, i16* %9, align 2
  %366 = zext i16 %365 to i32
  %367 = add nsw i32 %364, %366
  %368 = trunc i32 %367 to i16
  store i16 %368, i16* %4, align 2
  br label %369

369:                                              ; preds = %362, %67, %60, %18
  %370 = load i16, i16* %4, align 2
  ret i16 %370
}

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i64 @SiS_GetBIOSLCDResInfo(%struct.SiS_Private*) #1

declare dso_local i32 @SiS_AdjustCRT2Rate(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
