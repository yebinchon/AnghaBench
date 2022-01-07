; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_BBbVT3253Init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_baseband.c_BBbVT3253Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32*, i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@RF_RFMD2959 = common dso_local global i64 0, align 8
@REV_ID_VT3253_A1 = common dso_local global i64 0, align 8
@CB_VT3253_INIT_FOR_RFMD = common dso_local global i32 0, align 4
@byVT3253InitTab_RFMD = common dso_local global i32** null, align 8
@CB_VT3253B0_INIT_FOR_RFMD = common dso_local global i32 0, align 4
@byVT3253B0_RFMD = common dso_local global i32** null, align 8
@CB_VT3253B0_AGC_FOR_RFMD2959 = common dso_local global i32 0, align 4
@byVT3253B0_AGC4_RFMD2959 = common dso_local global i32** null, align 8
@MAC_REG_ITRTMSET = common dso_local global i64 0, align 8
@MAC_REG_PAPEDELAY = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@RF_AIROHA = common dso_local global i64 0, align 8
@RF_AL2230S = common dso_local global i64 0, align 8
@CB_VT3253B0_INIT_FOR_AIROHA2230 = common dso_local global i32 0, align 4
@byVT3253B0_AIROHA2230 = common dso_local global i32** null, align 8
@CB_VT3253B0_AGC = common dso_local global i32 0, align 4
@byVT3253B0_AGC = common dso_local global i32** null, align 8
@RF_UW2451 = common dso_local global i64 0, align 8
@CB_VT3253B0_INIT_FOR_UW2451 = common dso_local global i32 0, align 4
@byVT3253B0_UW2451 = common dso_local global i32** null, align 8
@RF_UW2452 = common dso_local global i64 0, align 8
@RF_VT3226 = common dso_local global i64 0, align 8
@RF_AIROHA7230 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BBbVT3253Init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @RF_RFMD2959, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %149

21:                                               ; preds = %1
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @REV_ID_VT3253_A1, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CB_VT3253_INIT_FOR_RFMD, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i32**, i32*** @byVT3253InitTab_RFMD, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32**, i32*** @byVT3253InitTab_RFMD, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BBbWriteEmbeded(i64 %31, i32 %38, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %26

52:                                               ; preds = %26
  br label %116

53:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %77, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CB_VT3253B0_INIT_FOR_RFMD, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  %60 = load i32**, i32*** @byVT3253B0_RFMD, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32**, i32*** @byVT3253B0_RFMD, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BBbWriteEmbeded(i64 %59, i32 %66, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %58
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %54

80:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @CB_VT3253B0_AGC_FOR_RFMD2959, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i64, i64* %5, align 8
  %87 = load i32**, i32*** @byVT3253B0_AGC4_RFMD2959, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32**, i32*** @byVT3253B0_AGC4_RFMD2959, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @BBbWriteEmbeded(i64 %86, i32 %93, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %81

107:                                              ; preds = %81
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @MAC_REG_ITRTMSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @VNSvOutPortD(i64 %110, i32 35)
  %112 = load i64, i64* %5, align 8
  %113 = load i32, i32* @MAC_REG_PAPEDELAY, align 4
  %114 = load i32, i32* @BIT0, align 4
  %115 = call i32 @MACvRegBitsOn(i64 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %52
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 24, i32* %120, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 10, i32* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 -70, i32* %136, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 -50, i32* %140, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 0, i32* %148, align 4
  br label %659

149:                                              ; preds = %1
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* @RF_AIROHA, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @RF_AL2230S, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %244

157:                                              ; preds = %153, %149
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %181, %157
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @CB_VT3253B0_INIT_FOR_AIROHA2230, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %184

162:                                              ; preds = %158
  %163 = load i64, i64* %5, align 8
  %164 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @BBbWriteEmbeded(i64 %163, i32 %170, i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %162
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %158

184:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %208, %184
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @CB_VT3253B0_AGC, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %185
  %190 = load i64, i64* %5, align 8
  %191 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @BBbWriteEmbeded(i64 %190, i32 %197, i32 %204)
  %206 = load i32, i32* %3, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %189
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %185

211:                                              ; preds = %185
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 28, i32* %215, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 16, i32* %219, align 4
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  store i32 0, i32* %223, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  store i32 0, i32* %227, align 4
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 -70, i32* %231, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 -48, i32* %235, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  store i32 0, i32* %239, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  store i32 0, i32* %243, align 4
  br label %658

244:                                              ; preds = %153
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* @RF_UW2451, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %343

248:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %272, %248
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @CB_VT3253B0_INIT_FOR_UW2451, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %275

253:                                              ; preds = %249
  %254 = load i64, i64* %5, align 8
  %255 = load i32**, i32*** @byVT3253B0_UW2451, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32**, i32*** @byVT3253B0_UW2451, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @BBbWriteEmbeded(i64 %254, i32 %261, i32 %268)
  %270 = load i32, i32* %3, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %253
  %273 = load i32, i32* %4, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %4, align 4
  br label %249

275:                                              ; preds = %249
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %299, %275
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @CB_VT3253B0_AGC, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %302

280:                                              ; preds = %276
  %281 = load i64, i64* %5, align 8
  %282 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @BBbWriteEmbeded(i64 %281, i32 %288, i32 %295)
  %297 = load i32, i32* %3, align 4
  %298 = and i32 %297, %296
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %280
  %300 = load i32, i32* %4, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %4, align 4
  br label %276

302:                                              ; preds = %276
  %303 = load i64, i64* %5, align 8
  %304 = load i64, i64* @MAC_REG_ITRTMSET, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @VNSvOutPortB(i64 %305, i32 35)
  %307 = load i64, i64* %5, align 8
  %308 = load i32, i32* @MAC_REG_PAPEDELAY, align 4
  %309 = load i32, i32* @BIT0, align 4
  %310 = call i32 @MACvRegBitsOn(i64 %307, i32 %308, i32 %309)
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  store i32 20, i32* %314, align 4
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  store i32 10, i32* %318, align 4
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  store i32 0, i32* %322, align 4
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  store i32 0, i32* %326, align 4
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  store i32 -60, i32* %330, align 4
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 3
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  store i32 -50, i32* %334, align 4
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 2
  store i32 0, i32* %338, align 4
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  store i32 0, i32* %342, align 4
  br label %657

343:                                              ; preds = %244
  %344 = load i64, i64* %6, align 8
  %345 = load i64, i64* @RF_UW2452, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %458

347:                                              ; preds = %343
  store i32 0, i32* %4, align 4
  br label %348

348:                                              ; preds = %371, %347
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* @CB_VT3253B0_INIT_FOR_UW2451, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %374

352:                                              ; preds = %348
  %353 = load i64, i64* %5, align 8
  %354 = load i32**, i32*** @byVT3253B0_UW2451, align 8
  %355 = load i32, i32* %4, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32**, i32*** @byVT3253B0_UW2451, align 8
  %362 = load i32, i32* %4, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %361, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @BBbWriteEmbeded(i64 %353, i32 %360, i32 %367)
  %369 = load i32, i32* %3, align 4
  %370 = and i32 %369, %368
  store i32 %370, i32* %3, align 4
  br label %371

371:                                              ; preds = %352
  %372 = load i32, i32* %4, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %4, align 4
  br label %348

374:                                              ; preds = %348
  %375 = load i64, i64* %5, align 8
  %376 = call i32 @BBbWriteEmbeded(i64 %375, i32 215, i32 6)
  %377 = load i32, i32* %3, align 4
  %378 = and i32 %377, %376
  store i32 %378, i32* %3, align 4
  %379 = load i64, i64* %5, align 8
  %380 = call i32 @BBbWriteEmbeded(i64 %379, i32 144, i32 32)
  %381 = load i32, i32* %3, align 4
  %382 = and i32 %381, %380
  store i32 %382, i32* %3, align 4
  %383 = load i64, i64* %5, align 8
  %384 = call i32 @BBbWriteEmbeded(i64 %383, i32 151, i32 235)
  %385 = load i32, i32* %3, align 4
  %386 = and i32 %385, %384
  store i32 %386, i32* %3, align 4
  %387 = load i64, i64* %5, align 8
  %388 = call i32 @BBbWriteEmbeded(i64 %387, i32 166, i32 0)
  %389 = load i32, i32* %3, align 4
  %390 = and i32 %389, %388
  store i32 %390, i32* %3, align 4
  %391 = load i64, i64* %5, align 8
  %392 = call i32 @BBbWriteEmbeded(i64 %391, i32 168, i32 48)
  %393 = load i32, i32* %3, align 4
  %394 = and i32 %393, %392
  store i32 %394, i32* %3, align 4
  %395 = load i64, i64* %5, align 8
  %396 = call i32 @BBbWriteEmbeded(i64 %395, i32 176, i32 88)
  %397 = load i32, i32* %3, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %399

399:                                              ; preds = %422, %374
  %400 = load i32, i32* %4, align 4
  %401 = load i32, i32* @CB_VT3253B0_AGC, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %425

403:                                              ; preds = %399
  %404 = load i64, i64* %5, align 8
  %405 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32*, i32** %405, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32*, i32** %412, i64 %414
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 1
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @BBbWriteEmbeded(i64 %404, i32 %411, i32 %418)
  %420 = load i32, i32* %3, align 4
  %421 = and i32 %420, %419
  store i32 %421, i32* %3, align 4
  br label %422

422:                                              ; preds = %403
  %423 = load i32, i32* %4, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %4, align 4
  br label %399

425:                                              ; preds = %399
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 2
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  store i32 20, i32* %429, align 4
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 2
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  store i32 10, i32* %433, align 4
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 2
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 2
  store i32 0, i32* %437, align 4
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 3
  store i32 0, i32* %441, align 4
  %442 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 3
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  store i32 -60, i32* %445, align 4
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 3
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  store i32 -50, i32* %449, align 4
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 3
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  store i32 0, i32* %453, align 4
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i32 0, i32 3
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 3
  store i32 0, i32* %457, align 4
  br label %656

458:                                              ; preds = %343
  %459 = load i64, i64* %6, align 8
  %460 = load i64, i64* @RF_VT3226, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %462, label %551

462:                                              ; preds = %458
  store i32 0, i32* %4, align 4
  br label %463

463:                                              ; preds = %486, %462
  %464 = load i32, i32* %4, align 4
  %465 = load i32, i32* @CB_VT3253B0_INIT_FOR_AIROHA2230, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %489

467:                                              ; preds = %463
  %468 = load i64, i64* %5, align 8
  %469 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %470 = load i32, i32* %4, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32*, i32** %469, i64 %471
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 0
  %475 = load i32, i32* %474, align 4
  %476 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %477 = load i32, i32* %4, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32*, i32** %476, i64 %478
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 1
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @BBbWriteEmbeded(i64 %468, i32 %475, i32 %482)
  %484 = load i32, i32* %3, align 4
  %485 = and i32 %484, %483
  store i32 %485, i32* %3, align 4
  br label %486

486:                                              ; preds = %467
  %487 = load i32, i32* %4, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %4, align 4
  br label %463

489:                                              ; preds = %463
  store i32 0, i32* %4, align 4
  br label %490

490:                                              ; preds = %513, %489
  %491 = load i32, i32* %4, align 4
  %492 = load i32, i32* @CB_VT3253B0_AGC, align 4
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %516

494:                                              ; preds = %490
  %495 = load i64, i64* %5, align 8
  %496 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %497 = load i32, i32* %4, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32*, i32** %496, i64 %498
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 0
  %502 = load i32, i32* %501, align 4
  %503 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %504 = load i32, i32* %4, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32*, i32** %503, i64 %505
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 1
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @BBbWriteEmbeded(i64 %495, i32 %502, i32 %509)
  %511 = load i32, i32* %3, align 4
  %512 = and i32 %511, %510
  store i32 %512, i32* %3, align 4
  br label %513

513:                                              ; preds = %494
  %514 = load i32, i32* %4, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %4, align 4
  br label %490

516:                                              ; preds = %490
  %517 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %518 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %517, i32 0, i32 2
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 0
  store i32 28, i32* %520, align 4
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 2
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 1
  store i32 16, i32* %524, align 4
  %525 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %525, i32 0, i32 2
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 2
  store i32 0, i32* %528, align 4
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 2
  %531 = load i32*, i32** %530, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 3
  store i32 0, i32* %532, align 4
  %533 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %534 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %533, i32 0, i32 3
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 0
  store i32 -70, i32* %536, align 4
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 3
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 1
  store i32 -48, i32* %540, align 4
  %541 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 3
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 2
  store i32 0, i32* %544, align 4
  %545 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %546 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %545, i32 0, i32 3
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 3
  store i32 0, i32* %548, align 4
  %549 = load i64, i64* %5, align 8
  %550 = call i32 @MACvSetRFLE_LatchBase(i64 %549)
  br label %655

551:                                              ; preds = %458
  %552 = load i64, i64* %6, align 8
  %553 = load i64, i64* @RF_AIROHA7230, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %555, label %646

555:                                              ; preds = %551
  store i32 0, i32* %4, align 4
  br label %556

556:                                              ; preds = %579, %555
  %557 = load i32, i32* %4, align 4
  %558 = load i32, i32* @CB_VT3253B0_INIT_FOR_AIROHA2230, align 4
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %560, label %582

560:                                              ; preds = %556
  %561 = load i64, i64* %5, align 8
  %562 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %563 = load i32, i32* %4, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32*, i32** %562, i64 %564
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  %568 = load i32, i32* %567, align 4
  %569 = load i32**, i32*** @byVT3253B0_AIROHA2230, align 8
  %570 = load i32, i32* %4, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32*, i32** %569, i64 %571
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 1
  %575 = load i32, i32* %574, align 4
  %576 = call i32 @BBbWriteEmbeded(i64 %561, i32 %568, i32 %575)
  %577 = load i32, i32* %3, align 4
  %578 = and i32 %577, %576
  store i32 %578, i32* %3, align 4
  br label %579

579:                                              ; preds = %560
  %580 = load i32, i32* %4, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %4, align 4
  br label %556

582:                                              ; preds = %556
  %583 = load i64, i64* %5, align 8
  %584 = call i32 @BBbWriteEmbeded(i64 %583, i32 215, i32 6)
  %585 = load i32, i32* %3, align 4
  %586 = and i32 %585, %584
  store i32 %586, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %587

587:                                              ; preds = %610, %582
  %588 = load i32, i32* %4, align 4
  %589 = load i32, i32* @CB_VT3253B0_AGC, align 4
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %591, label %613

591:                                              ; preds = %587
  %592 = load i64, i64* %5, align 8
  %593 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %594 = load i32, i32* %4, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32*, i32** %593, i64 %595
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 0
  %599 = load i32, i32* %598, align 4
  %600 = load i32**, i32*** @byVT3253B0_AGC, align 8
  %601 = load i32, i32* %4, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32*, i32** %600, i64 %602
  %604 = load i32*, i32** %603, align 8
  %605 = getelementptr inbounds i32, i32* %604, i64 1
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @BBbWriteEmbeded(i64 %592, i32 %599, i32 %606)
  %608 = load i32, i32* %3, align 4
  %609 = and i32 %608, %607
  store i32 %609, i32* %3, align 4
  br label %610

610:                                              ; preds = %591
  %611 = load i32, i32* %4, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %4, align 4
  br label %587

613:                                              ; preds = %587
  %614 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %615 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %614, i32 0, i32 2
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 0
  store i32 28, i32* %617, align 4
  %618 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %619 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %618, i32 0, i32 2
  %620 = load i32*, i32** %619, align 8
  %621 = getelementptr inbounds i32, i32* %620, i64 1
  store i32 16, i32* %621, align 4
  %622 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %623 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %622, i32 0, i32 2
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 2
  store i32 0, i32* %625, align 4
  %626 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %626, i32 0, i32 2
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 3
  store i32 0, i32* %629, align 4
  %630 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %631 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %630, i32 0, i32 3
  %632 = load i32*, i32** %631, align 8
  %633 = getelementptr inbounds i32, i32* %632, i64 0
  store i32 -70, i32* %633, align 4
  %634 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %635 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %634, i32 0, i32 3
  %636 = load i32*, i32** %635, align 8
  %637 = getelementptr inbounds i32, i32* %636, i64 1
  store i32 -48, i32* %637, align 4
  %638 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %639 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %638, i32 0, i32 3
  %640 = load i32*, i32** %639, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 2
  store i32 0, i32* %641, align 4
  %642 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %643 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %642, i32 0, i32 3
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 3
  store i32 0, i32* %645, align 4
  br label %654

646:                                              ; preds = %551
  %647 = load i32, i32* @FALSE, align 4
  %648 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %649 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %648, i32 0, i32 4
  store i32 %647, i32* %649, align 8
  %650 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %651 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %650, i32 0, i32 2
  %652 = load i32*, i32** %651, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 0
  store i32 28, i32* %653, align 4
  br label %654

654:                                              ; preds = %646, %613
  br label %655

655:                                              ; preds = %654, %516
  br label %656

656:                                              ; preds = %655, %425
  br label %657

657:                                              ; preds = %656, %302
  br label %658

658:                                              ; preds = %657, %211
  br label %659

659:                                              ; preds = %658, %116
  %660 = load i64, i64* %7, align 8
  %661 = load i64, i64* @REV_ID_VT3253_A1, align 8
  %662 = icmp sgt i64 %660, %661
  br i1 %662, label %663, label %668

663:                                              ; preds = %659
  %664 = load i64, i64* %5, align 8
  %665 = call i32 @BBbWriteEmbeded(i64 %664, i32 4, i32 127)
  %666 = load i64, i64* %5, align 8
  %667 = call i32 @BBbWriteEmbeded(i64 %666, i32 13, i32 1)
  br label %668

668:                                              ; preds = %663, %659
  %669 = load i32, i32* %3, align 4
  ret i32 %669
}

declare dso_local i32 @BBbWriteEmbeded(i64, i32, i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvSetRFLE_LatchBase(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
