; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup1_301.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetGroup1_301.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i16, i64, i32, i16, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i32, i16, i16, i16, i32*, i32, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_4__ = type { i16 }

@SiS_SetGroup1_301.CRTranslation = internal constant [24 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 0, i16 11, i16 23, i16 24, i16 25, i16 0, i16 26, i16 0, i16 12, i16 13, i16 14, i16 0, i16 15, i16 16, i16 17, i16 0], align 16
@SIS_315H = common dso_local global i64 0, align 8
@HalfDCLK = common dso_local global i16 0, align 2
@SetCRT2ToTV = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@DoubleScanMode = common dso_local global i16 0, align 2
@LCDRGB18Bit = common dso_local global i32 0, align 4
@X_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetGroup1_301 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetGroup1_301(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %13, align 2
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp sle i32 %16, 19
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 29
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %10, align 2
  br label %57

27:                                               ; preds = %4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %28, i32 0, i32 28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %34 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 8
  store i16 %35, i16* %10, align 2
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 2
  store i16 %38, i16* %13, align 2
  br label %56

39:                                               ; preds = %27
  %40 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %41 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %40, i32 0, i32 27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i16, i16* %7, align 2
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %10, align 2
  %48 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %49 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %48, i32 0, i32 26
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i16, i16* %8, align 2
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %13, align 2
  br label %56

56:                                               ; preds = %39, %32
  br label %57

57:                                               ; preds = %56, %18
  %58 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %59 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SIS_315H, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i16, i16* %13, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp sge i32 %65, 1600
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 24
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @SiS_SetRegOR(i32 %70, i32 49, i32 4)
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %57
  %74 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %75 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %74, i32 0, i32 3
  store i32 8224, i32* %75, align 8
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 4
  %78 = load i16, i16* %77, align 4
  %79 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %80 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %79, i32 0, i32 1
  store i16 %78, i16* %80, align 2
  %81 = load i16, i16* %10, align 2
  %82 = zext i16 %81 to i32
  %83 = load i16, i16* @HalfDCLK, align 2
  %84 = zext i16 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %73
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = ashr i32 %91, 1
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %89, align 2
  br label %94

94:                                               ; preds = %87, %73
  %95 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %96 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %95, i32 0, i32 1
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %102 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SetCRT2ToTV, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %109 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 16
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %94
  %113 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %114 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %113, i32 0, i32 7
  store i32 32, i32* %114, align 8
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SetCRT2ToLCD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %112
  %122 = load i16, i16* %13, align 2
  %123 = zext i16 %122 to i32
  %124 = icmp eq i32 %123, 1600
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %127 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 80
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %125, %121
  br label %131

131:                                              ; preds = %130, %112
  %132 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %133 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 96
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %9, align 2
  %137 = load i16, i16* %10, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* @HalfDCLK, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %131
  %144 = load i16, i16* %9, align 2
  %145 = zext i16 %144 to i32
  %146 = sub nsw i32 %145, 32
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %9, align 2
  br label %148

148:                                              ; preds = %143, %131
  %149 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %150 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @LCDPass11, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %148
  %156 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %157 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %156, i32 0, i32 25
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @SiS_GetReg(i32 %158, i32 4)
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %9, align 2
  %161 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %162 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %161, i32 0, i32 24
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @SiS_GetReg(i32 %163, i32 11)
  %165 = and i32 %164, 192
  %166 = shl i32 %165, 2
  %167 = load i16, i16* %9, align 2
  %168 = zext i16 %167 to i32
  %169 = or i32 %168, %166
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %9, align 2
  %171 = load i16, i16* %9, align 2
  %172 = zext i16 %171 to i32
  %173 = sub nsw i32 %172, 3
  %174 = trunc i32 %173 to i16
  store i16 %174, i16* %9, align 2
  %175 = load i16, i16* %9, align 2
  %176 = zext i16 %175 to i32
  %177 = shl i32 %176, 3
  %178 = trunc i32 %177 to i16
  store i16 %178, i16* %9, align 2
  br label %189

179:                                              ; preds = %148
  %180 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %181 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %180, i32 0, i32 10
  %182 = load i16, i16* %181, align 4
  %183 = icmp ne i16 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %186 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %185, i32 0, i32 10
  %187 = load i16, i16* %186, align 4
  store i16 %187, i16* %9, align 2
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188, %155
  %190 = load i16, i16* %9, align 2
  %191 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %192 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %191, i32 0, i32 11
  store i16 %190, i16* %192, align 2
  %193 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %194 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %193, i32 0, i32 12
  store i32 65512, i32* %194, align 8
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 13
  store i32 2049, i32* %196, align 4
  %197 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %198 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %197, i32 0, i32 14
  %199 = load i16, i16* %198, align 8
  store i16 %199, i16* %14, align 2
  %200 = load i16, i16* %14, align 2
  %201 = zext i16 %200 to i32
  %202 = icmp eq i32 %201, 357
  br i1 %202, label %203, label %204

203:                                              ; preds = %189
  store i16 350, i16* %14, align 2
  br label %240

204:                                              ; preds = %189
  %205 = load i16, i16* %14, align 2
  %206 = zext i16 %205 to i32
  %207 = icmp eq i32 %206, 360
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i16 350, i16* %14, align 2
  br label %239

209:                                              ; preds = %204
  %210 = load i16, i16* %14, align 2
  %211 = zext i16 %210 to i32
  %212 = icmp eq i32 %211, 375
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i16 350, i16* %14, align 2
  br label %238

214:                                              ; preds = %209
  %215 = load i16, i16* %14, align 2
  %216 = zext i16 %215 to i32
  %217 = icmp eq i32 %216, 405
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i16 400, i16* %14, align 2
  br label %237

219:                                              ; preds = %214
  %220 = load i16, i16* %14, align 2
  %221 = zext i16 %220 to i32
  %222 = icmp eq i32 %221, 420
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i16 400, i16* %14, align 2
  br label %236

224:                                              ; preds = %219
  %225 = load i16, i16* %14, align 2
  %226 = zext i16 %225 to i32
  %227 = icmp eq i32 %226, 525
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store i16 480, i16* %14, align 2
  br label %235

229:                                              ; preds = %224
  %230 = load i16, i16* %14, align 2
  %231 = zext i16 %230 to i32
  %232 = icmp eq i32 %231, 1056
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i16 1024, i16* %14, align 2
  br label %234

234:                                              ; preds = %233, %229
  br label %235

235:                                              ; preds = %234, %228
  br label %236

236:                                              ; preds = %235, %223
  br label %237

237:                                              ; preds = %236, %218
  br label %238

238:                                              ; preds = %237, %213
  br label %239

239:                                              ; preds = %238, %208
  br label %240

240:                                              ; preds = %239, %203
  %241 = load i16, i16* %14, align 2
  %242 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %243 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %242, i32 0, i32 15
  store i16 %241, i16* %243, align 2
  %244 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %245 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %244, i32 0, i32 15
  %246 = load i16, i16* %245, align 2
  %247 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %248 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %247, i32 0, i32 16
  store i16 %246, i16* %248, align 4
  %249 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %250 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %249, i32 0, i32 17
  store i32 1, i32* %250, align 8
  %251 = load i16, i16* %6, align 2
  %252 = zext i16 %251 to i32
  %253 = icmp eq i32 %252, 60
  br i1 %253, label %254, label %257

254:                                              ; preds = %240
  %255 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %256 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %255, i32 0, i32 17
  store i32 226, i32* %256, align 8
  br label %257

257:                                              ; preds = %254, %240
  %258 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %259 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %258, i32 0, i32 18
  %260 = load i16, i16* %259, align 4
  %261 = zext i16 %260 to i32
  %262 = load i16, i16* %14, align 2
  %263 = zext i16 %262 to i32
  %264 = sub nsw i32 %261, %263
  %265 = ashr i32 %264, 1
  %266 = trunc i32 %265 to i16
  store i16 %266, i16* %9, align 2
  %267 = load i16, i16* %14, align 2
  %268 = zext i16 %267 to i32
  %269 = load i16, i16* %9, align 2
  %270 = zext i16 %269 to i32
  %271 = add nsw i32 %268, %270
  %272 = trunc i32 %271 to i16
  %273 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %274 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %273, i32 0, i32 19
  store i16 %272, i16* %274, align 2
  %275 = load i16, i16* %9, align 2
  %276 = zext i16 %275 to i32
  %277 = ashr i32 %276, 3
  %278 = trunc i32 %277 to i16
  store i16 %278, i16* %9, align 2
  %279 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %280 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %279, i32 0, i32 19
  %281 = load i16, i16* %280, align 2
  %282 = zext i16 %281 to i32
  %283 = load i16, i16* %9, align 2
  %284 = zext i16 %283 to i32
  %285 = add nsw i32 %282, %284
  %286 = trunc i32 %285 to i16
  %287 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %288 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %287, i32 0, i32 20
  store i16 %286, i16* %288, align 8
  %289 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %290 = call i32 @SiS_CalcCRRegisters(%struct.SiS_Private* %289, i32 0)
  %291 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %292 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %291, i32 0, i32 21
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 16
  %295 = load i32, i32* %294, align 4
  %296 = and i32 %295, -225
  store i32 %296, i32* %294, align 4
  store i16 0, i16* %11, align 2
  br label %297

297:                                              ; preds = %318, %257
  %298 = load i16, i16* %11, align 2
  %299 = zext i16 %298 to i32
  %300 = icmp sle i32 %299, 7
  br i1 %300, label %301, label %321

301:                                              ; preds = %297
  %302 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %303 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %302, i32 0, i32 22
  %304 = load i32, i32* %303, align 8
  %305 = load i16, i16* %11, align 2
  %306 = zext i16 %305 to i64
  %307 = getelementptr inbounds [24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 %306
  %308 = load i16, i16* %307, align 2
  %309 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %310 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %309, i32 0, i32 21
  %311 = load i32*, i32** %310, align 8
  %312 = load i16, i16* %11, align 2
  %313 = zext i16 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = trunc i32 %315 to i16
  %317 = call i32 @SiS_SetReg(i32 %304, i16 zeroext %308, i16 zeroext %316)
  br label %318

318:                                              ; preds = %301
  %319 = load i16, i16* %11, align 2
  %320 = add i16 %319, 1
  store i16 %320, i16* %11, align 2
  br label %297

321:                                              ; preds = %297
  store i16 16, i16* %11, align 2
  store i16 8, i16* %12, align 2
  br label %322

322:                                              ; preds = %343, %321
  %323 = load i16, i16* %11, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp sle i32 %324, 18
  br i1 %325, label %326, label %348

326:                                              ; preds = %322
  %327 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %328 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %327, i32 0, i32 22
  %329 = load i32, i32* %328, align 8
  %330 = load i16, i16* %11, align 2
  %331 = zext i16 %330 to i64
  %332 = getelementptr inbounds [24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 %331
  %333 = load i16, i16* %332, align 2
  %334 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %335 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %334, i32 0, i32 21
  %336 = load i32*, i32** %335, align 8
  %337 = load i16, i16* %12, align 2
  %338 = zext i16 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = trunc i32 %340 to i16
  %342 = call i32 @SiS_SetReg(i32 %329, i16 zeroext %333, i16 zeroext %341)
  br label %343

343:                                              ; preds = %326
  %344 = load i16, i16* %11, align 2
  %345 = add i16 %344, 1
  store i16 %345, i16* %11, align 2
  %346 = load i16, i16* %12, align 2
  %347 = add i16 %346, 1
  store i16 %347, i16* %12, align 2
  br label %322

348:                                              ; preds = %322
  store i16 21, i16* %11, align 2
  store i16 11, i16* %12, align 2
  br label %349

349:                                              ; preds = %370, %348
  %350 = load i16, i16* %11, align 2
  %351 = zext i16 %350 to i32
  %352 = icmp sle i32 %351, 22
  br i1 %352, label %353, label %375

353:                                              ; preds = %349
  %354 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %355 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %354, i32 0, i32 22
  %356 = load i32, i32* %355, align 8
  %357 = load i16, i16* %11, align 2
  %358 = zext i16 %357 to i64
  %359 = getelementptr inbounds [24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 %358
  %360 = load i16, i16* %359, align 2
  %361 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %362 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %361, i32 0, i32 21
  %363 = load i32*, i32** %362, align 8
  %364 = load i16, i16* %12, align 2
  %365 = zext i16 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = trunc i32 %367 to i16
  %369 = call i32 @SiS_SetReg(i32 %356, i16 zeroext %360, i16 zeroext %368)
  br label %370

370:                                              ; preds = %353
  %371 = load i16, i16* %11, align 2
  %372 = add i16 %371, 1
  store i16 %372, i16* %11, align 2
  %373 = load i16, i16* %12, align 2
  %374 = add i16 %373, 1
  store i16 %374, i16* %12, align 2
  br label %349

375:                                              ; preds = %349
  store i16 10, i16* %11, align 2
  store i16 13, i16* %12, align 2
  br label %376

376:                                              ; preds = %397, %375
  %377 = load i16, i16* %11, align 2
  %378 = zext i16 %377 to i32
  %379 = icmp sle i32 %378, 12
  br i1 %379, label %380, label %402

380:                                              ; preds = %376
  %381 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %382 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %381, i32 0, i32 22
  %383 = load i32, i32* %382, align 8
  %384 = load i16, i16* %11, align 2
  %385 = zext i16 %384 to i64
  %386 = getelementptr inbounds [24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 %385
  %387 = load i16, i16* %386, align 2
  %388 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %389 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %388, i32 0, i32 21
  %390 = load i32*, i32** %389, align 8
  %391 = load i16, i16* %12, align 2
  %392 = zext i16 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = trunc i32 %394 to i16
  %396 = call i32 @SiS_SetReg(i32 %383, i16 zeroext %387, i16 zeroext %395)
  br label %397

397:                                              ; preds = %380
  %398 = load i16, i16* %11, align 2
  %399 = add i16 %398, 1
  store i16 %399, i16* %11, align 2
  %400 = load i16, i16* %12, align 2
  %401 = add i16 %400, 1
  store i16 %401, i16* %12, align 2
  br label %376

402:                                              ; preds = %376
  %403 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %404 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %403, i32 0, i32 21
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 16
  %407 = load i32, i32* %406, align 4
  %408 = and i32 %407, 224
  %409 = trunc i32 %408 to i16
  store i16 %409, i16* %9, align 2
  %410 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %411 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %410, i32 0, i32 22
  %412 = load i32, i32* %411, align 8
  %413 = load i16, i16* getelementptr inbounds ([24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 14), align 4
  %414 = load i16, i16* %9, align 2
  %415 = call i32 @SiS_SetRegANDOR(i32 %412, i16 zeroext %413, i32 31, i16 zeroext %414)
  %416 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %417 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %416, i32 0, i32 21
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 16
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %420, 1
  %422 = shl i32 %421, 5
  %423 = trunc i32 %422 to i16
  store i16 %423, i16* %9, align 2
  %424 = load i16, i16* %10, align 2
  %425 = zext i16 %424 to i32
  %426 = load i16, i16* @DoubleScanMode, align 2
  %427 = zext i16 %426 to i32
  %428 = and i32 %425, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %435

430:                                              ; preds = %402
  %431 = load i16, i16* %9, align 2
  %432 = zext i16 %431 to i32
  %433 = or i32 %432, 128
  %434 = trunc i32 %433 to i16
  store i16 %434, i16* %9, align 2
  br label %435

435:                                              ; preds = %430, %402
  %436 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %437 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %436, i32 0, i32 22
  %438 = load i32, i32* %437, align 8
  %439 = load i16, i16* getelementptr inbounds ([24 x i16], [24 x i16]* @SiS_SetGroup1_301.CRTranslation, i64 0, i64 9), align 2
  %440 = load i16, i16* %9, align 2
  %441 = call i32 @SiS_SetRegANDOR(i32 %438, i16 zeroext %439, i32 95, i16 zeroext %440)
  store i16 0, i16* %9, align 2
  %442 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %443 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %442, i32 0, i32 24
  %444 = load i32, i32* %443, align 8
  %445 = call i32 @SiS_GetReg(i32 %444, i32 1)
  %446 = and i32 %445, 1
  %447 = load i16, i16* %9, align 2
  %448 = zext i16 %447 to i32
  %449 = or i32 %448, %446
  %450 = trunc i32 %449 to i16
  store i16 %450, i16* %9, align 2
  %451 = load i16, i16* %10, align 2
  %452 = zext i16 %451 to i32
  %453 = load i16, i16* @HalfDCLK, align 2
  %454 = zext i16 %453 to i32
  %455 = and i32 %452, %454
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %435
  %458 = load i16, i16* %9, align 2
  %459 = zext i16 %458 to i32
  %460 = or i32 %459, 8
  %461 = trunc i32 %460 to i16
  store i16 %461, i16* %9, align 2
  br label %462

462:                                              ; preds = %457, %435
  %463 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %464 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %463, i32 0, i32 22
  %465 = load i32, i32* %464, align 8
  %466 = load i16, i16* %9, align 2
  %467 = call i32 @SiS_SetReg(i32 %465, i16 zeroext 22, i16 zeroext %466)
  %468 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %469 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %468, i32 0, i32 22
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @SiS_SetReg(i32 %470, i16 zeroext 15, i16 zeroext 0)
  %472 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %473 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %472, i32 0, i32 22
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @SiS_SetReg(i32 %474, i16 zeroext 18, i16 zeroext 0)
  store i16 0, i16* %9, align 2
  %476 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %477 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %476, i32 0, i32 9
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @LCDRGB18Bit, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %462
  %483 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %484 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %483, i32 0, i32 22
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @SiS_GetReg(i32 %485, i32 0)
  %487 = and i32 %486, 1
  %488 = shl i32 %487, 7
  %489 = trunc i32 %488 to i16
  store i16 %489, i16* %9, align 2
  br label %490

490:                                              ; preds = %482, %462
  %491 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %492 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %491, i32 0, i32 22
  %493 = load i32, i32* %492, align 8
  %494 = load i16, i16* %9, align 2
  %495 = call i32 @SiS_SetReg(i32 %493, i16 zeroext 26, i16 zeroext %494)
  %496 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %497 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %496, i32 0, i32 23
  %498 = load i64, i64* %497, align 8
  %499 = add nsw i64 %498, 2
  %500 = call zeroext i16 @SiS_GetRegByte(i64 %499)
  store i16 %500, i16* %9, align 2
  %501 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %502 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %501, i32 0, i32 22
  %503 = load i32, i32* %502, align 8
  %504 = load i16, i16* %9, align 2
  %505 = call i32 @SiS_SetReg(i32 %503, i16 zeroext 27, i16 zeroext %504)
  ret void
}

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_CalcCRRegisters(%struct.SiS_Private*, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i16 zeroext, i32, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetRegByte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
