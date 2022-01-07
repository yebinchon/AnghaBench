; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbSetPhyParameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbSetPhyParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i64, i64, i32, i32, i64, i32, i32, i32, i64, i64, i64, i32 }

@PHY_TYPE_11A = common dso_local global i32 0, align 4
@abyDefaultSuppRatesA = common dso_local global i64 0, align 8
@RF_AIROHA7230 = common dso_local global i64 0, align 8
@BB_TYPE_11G = common dso_local global i32 0, align 4
@RF_UW2452 = common dso_local global i64 0, align 8
@BB_TYPE_11A = common dso_local global i32 0, align 4
@C_SLOT_SHORT = common dso_local global i32 0, align 4
@C_SIFS_A = common dso_local global i32 0, align 4
@PHY_TYPE_11B = common dso_local global i32 0, align 4
@abyDefaultSuppRatesB = common dso_local global i64 0, align 8
@BB_TYPE_11B = common dso_local global i32 0, align 4
@C_SLOT_LONG = common dso_local global i32 0, align 4
@C_SIFS_BG = common dso_local global i32 0, align 4
@abyDefaultSuppRatesG = common dso_local global i64 0, align 8
@abyDefaultExtSuppRatesG = common dso_local global i64 0, align 8
@RATE_11M = common dso_local global i64 0, align 8
@RF_RFMD2959 = common dso_local global i64 0, align 8
@MAC_REG_SIFS = common dso_local global i64 0, align 8
@MAC_REG_DIFS = common dso_local global i64 0, align 8
@C_EIFS = common dso_local global i64 0, align 8
@MAC_REG_EIFS = common dso_local global i64 0, align 8
@MAC_REG_SLOT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAC_REG_CWMAXMIN0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARDbSetPhyParameter(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i64, i64* %7, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %11, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %19, align 8
  %25 = load i64, i64* %12, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %20, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PHY_TYPE_11A, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %132

30:                                               ; preds = %6
  %31 = load i32*, i32** %19, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @abyDefaultSuppRatesA, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %19, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RF_AIROHA7230, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @BB_TYPE_11G, align 4
  %47 = call i32 @MACvSetBBType(i64 %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 32, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 16, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 16, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @BBbReadEmbeded(i64 %62, i32 231, i32* %18)
  %64 = load i32, i32* %18, align 4
  %65 = icmp eq i32 %64, 28
  br i1 %65, label %66, label %76

66:                                               ; preds = %42
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BBbWriteEmbeded(i64 %69, i32 231, i32 %74)
  br label %76

76:                                               ; preds = %66, %42
  br label %121

77:                                               ; preds = %36
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RF_UW2452, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 12
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @BB_TYPE_11A, align 4
  %88 = call i32 @MACvSetBBType(i64 %86, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 24, i32* %92, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 12
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @BBbReadEmbeded(i64 %95, i32 231, i32* %18)
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 20
  br i1 %98, label %99, label %113

99:                                               ; preds = %83
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BBbWriteEmbeded(i64 %102, i32 231, i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 12
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @BBbWriteEmbeded(i64 %111, i32 225, i32 87)
  br label %113

113:                                              ; preds = %99, %83
  br label %120

114:                                              ; preds = %77
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 12
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @BB_TYPE_11A, align 4
  %119 = call i32 @MACvSetBBType(i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %113
  br label %121

121:                                              ; preds = %120, %76
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 12
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @BBbWriteEmbeded(i64 %124, i32 136, i32 3)
  %126 = load i32, i32* @C_SLOT_SHORT, align 4
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* @C_SIFS_A, align 4
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @C_SIFS_A, align 4
  %129 = load i32, i32* @C_SLOT_SHORT, align 4
  %130 = mul nsw i32 2, %129
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %17, align 4
  store i32 164, i32* %14, align 4
  br label %394

132:                                              ; preds = %6
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @PHY_TYPE_11B, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %227

136:                                              ; preds = %132
  %137 = load i32*, i32** %19, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i64, i64* @abyDefaultSuppRatesB, align 8
  %141 = inttoptr i64 %140 to i32*
  store i32* %141, i32** %19, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 12
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @BB_TYPE_11B, align 4
  %147 = call i32 @MACvSetBBType(i64 %145, i32 %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @RF_AIROHA7230, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %142
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 28, i32* %157, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 0, i32* %161, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @BBbReadEmbeded(i64 %168, i32 231, i32* %18)
  %170 = load i32, i32* %18, align 4
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %172, label %182

172:                                              ; preds = %153
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 12
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @BBbWriteEmbeded(i64 %175, i32 231, i32 %180)
  br label %182

182:                                              ; preds = %172, %153
  br label %216

183:                                              ; preds = %142
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @RF_UW2452, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %215

189:                                              ; preds = %183
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 20, i32* %193, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 12
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @BBbReadEmbeded(i64 %196, i32 231, i32* %18)
  %198 = load i32, i32* %18, align 4
  %199 = icmp eq i32 %198, 24
  br i1 %199, label %200, label %214

200:                                              ; preds = %189
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 12
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @BBbWriteEmbeded(i64 %203, i32 231, i32 %208)
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 12
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @BBbWriteEmbeded(i64 %212, i32 225, i32 211)
  br label %214

214:                                              ; preds = %200, %189
  br label %215

215:                                              ; preds = %214, %183
  br label %216

216:                                              ; preds = %215, %182
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 12
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @BBbWriteEmbeded(i64 %219, i32 136, i32 2)
  %221 = load i32, i32* @C_SLOT_LONG, align 4
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* @C_SIFS_BG, align 4
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* @C_SIFS_BG, align 4
  %224 = load i32, i32* @C_SLOT_LONG, align 4
  %225 = mul nsw i32 2, %224
  %226 = add nsw i32 %223, %225
  store i32 %226, i32* %17, align 4
  store i32 165, i32* %14, align 4
  br label %393

227:                                              ; preds = %132
  %228 = load i32*, i32** %19, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %227
  %231 = load i64, i64* @abyDefaultSuppRatesG, align 8
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %19, align 8
  %233 = load i64, i64* @abyDefaultExtSuppRatesG, align 8
  %234 = inttoptr i64 %233 to i32*
  store i32* %234, i32** %20, align 8
  br label %235

235:                                              ; preds = %230, %227
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 12
  %238 = load i64, i64* %237, align 8
  %239 = load i32, i32* @BB_TYPE_11G, align 4
  %240 = call i32 @MACvSetBBType(i64 %238, i32 %239)
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @RF_AIROHA7230, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %276

246:                                              ; preds = %235
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 0
  store i32 28, i32* %250, align 4
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  store i32 0, i32* %254, align 4
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  store i32 0, i32* %258, align 4
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 12
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @BBbReadEmbeded(i64 %261, i32 231, i32* %18)
  %263 = load i32, i32* %18, align 4
  %264 = icmp eq i32 %263, 32
  br i1 %264, label %265, label %275

265:                                              ; preds = %246
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 12
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @BBbWriteEmbeded(i64 %268, i32 231, i32 %273)
  br label %275

275:                                              ; preds = %265, %246
  br label %309

276:                                              ; preds = %235
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @RF_UW2452, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %308

282:                                              ; preds = %276
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  store i32 20, i32* %286, align 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 12
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @BBbReadEmbeded(i64 %289, i32 231, i32* %18)
  %291 = load i32, i32* %18, align 4
  %292 = icmp eq i32 %291, 24
  br i1 %292, label %293, label %307

293:                                              ; preds = %282
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 12
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @BBbWriteEmbeded(i64 %296, i32 231, i32 %301)
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 12
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @BBbWriteEmbeded(i64 %305, i32 225, i32 211)
  br label %307

307:                                              ; preds = %293, %282
  br label %308

308:                                              ; preds = %307, %276
  br label %309

309:                                              ; preds = %308, %275
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 12
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @BBbWriteEmbeded(i64 %312, i32 136, i32 8)
  %314 = load i32, i32* @C_SIFS_BG, align 4
  store i32 %314, i32* %16, align 4
  %315 = load i32, i32* %9, align 4
  %316 = call i64 @VNTWIFIbIsShortSlotTime(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %309
  %319 = load i32, i32* @C_SLOT_SHORT, align 4
  store i32 %319, i32* %15, align 4
  %320 = load i32, i32* @C_SIFS_BG, align 4
  %321 = load i32, i32* @C_SLOT_SHORT, align 4
  %322 = mul nsw i32 2, %321
  %323 = add nsw i32 %320, %322
  store i32 %323, i32* %17, align 4
  br label %330

324:                                              ; preds = %309
  %325 = load i32, i32* @C_SLOT_LONG, align 4
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* @C_SIFS_BG, align 4
  %327 = load i32, i32* @C_SLOT_LONG, align 4
  %328 = mul nsw i32 2, %327
  %329 = add nsw i32 %326, %328
  store i32 %329, i32* %17, align 4
  br label %330

330:                                              ; preds = %324, %318
  %331 = load i32*, i32** %19, align 8
  %332 = load i32*, i32** %20, align 8
  %333 = call i64 @VNTWIFIbyGetMaxSupportRate(i32* %331, i32* %332)
  %334 = load i64, i64* @RATE_11M, align 8
  %335 = icmp sgt i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  store i32 164, i32* %14, align 4
  br label %338

337:                                              ; preds = %330
  store i32 165, i32* %14, align 4
  br label %338

338:                                              ; preds = %337, %336
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %10, align 4
  %343 = call i64 @VNTWIFIbIsProtectMode(i32 %342)
  %344 = icmp ne i64 %341, %343
  br i1 %344, label %345, label %365

345:                                              ; preds = %338
  %346 = load i32, i32* %10, align 4
  %347 = call i64 @VNTWIFIbIsProtectMode(i32 %346)
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 2
  store i64 %347, i64* %349, align 8
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %345
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 12
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @MACvEnableProtectMD(i64 %357)
  br label %364

359:                                              ; preds = %345
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 12
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @MACvDisableProtectMD(i64 %362)
  br label %364

364:                                              ; preds = %359, %354
  br label %365

365:                                              ; preds = %364, %338
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = call i64 @VNTWIFIbIsBarkerMode(i32 %369)
  %371 = icmp ne i64 %368, %370
  br i1 %371, label %372, label %392

372:                                              ; preds = %365
  %373 = load i32, i32* %10, align 4
  %374 = call i64 @VNTWIFIbIsBarkerMode(i32 %373)
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 3
  store i64 %374, i64* %376, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %372
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 12
  %384 = load i64, i64* %383, align 8
  %385 = call i32 @MACvEnableBarkerPreambleMd(i64 %384)
  br label %391

386:                                              ; preds = %372
  %387 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 12
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @MACvDisableBarkerPreambleMd(i64 %389)
  br label %391

391:                                              ; preds = %386, %381
  br label %392

392:                                              ; preds = %391, %365
  br label %393

393:                                              ; preds = %392, %216
  br label %394

394:                                              ; preds = %393, %121
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @RF_RFMD2959, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %394
  %401 = load i32, i32* %16, align 4
  %402 = sub nsw i32 %401, 3
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %17, align 4
  %404 = sub nsw i32 %403, 3
  store i32 %404, i32* %17, align 4
  br label %405

405:                                              ; preds = %400, %394
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* %16, align 4
  %410 = icmp ne i32 %408, %409
  br i1 %410, label %411, label %424

411:                                              ; preds = %405
  %412 = load i32, i32* %16, align 4
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 4
  store i32 %412, i32* %414, align 8
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 12
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @MAC_REG_SIFS, align 8
  %419 = add nsw i64 %417, %418
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @VNSvOutPortB(i64 %419, i32 %422)
  br label %424

424:                                              ; preds = %411, %405
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %17, align 4
  %429 = icmp ne i32 %427, %428
  br i1 %429, label %430, label %443

430:                                              ; preds = %424
  %431 = load i32, i32* %17, align 4
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 5
  store i32 %431, i32* %433, align 4
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 12
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @MAC_REG_DIFS, align 8
  %438 = add nsw i64 %436, %437
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 5
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @VNSvOutPortB(i64 %438, i32 %441)
  br label %443

443:                                              ; preds = %430, %424
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 6
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @C_EIFS, align 8
  %448 = icmp ne i64 %446, %447
  br i1 %448, label %449, label %463

449:                                              ; preds = %443
  %450 = load i64, i64* @C_EIFS, align 8
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 6
  store i64 %450, i64* %452, align 8
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 12
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @MAC_REG_EIFS, align 8
  %457 = add nsw i64 %455, %456
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 6
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  %462 = call i32 @VNSvOutPortB(i64 %457, i32 %461)
  br label %463

463:                                              ; preds = %449, %443
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 7
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %15, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %498

469:                                              ; preds = %463
  %470 = load i32, i32* %15, align 4
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 7
  store i32 %470, i32* %472, align 8
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 12
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @MAC_REG_SLOT, align 8
  %477 = add nsw i64 %475, %476
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @VNSvOutPortB(i64 %477, i32 %480)
  %482 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 7
  %484 = load i32, i32* %483, align 8
  %485 = load i32, i32* @C_SLOT_SHORT, align 4
  %486 = icmp eq i32 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %469
  %488 = load i32, i32* @TRUE, align 4
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 13
  store i32 %488, i32* %490, align 8
  br label %495

491:                                              ; preds = %469
  %492 = load i32, i32* @FALSE, align 4
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 13
  store i32 %492, i32* %494, align 8
  br label %495

495:                                              ; preds = %491, %487
  %496 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %497 = call i32 @BBvSetShortSlotTime(%struct.TYPE_4__* %496)
  br label %498

498:                                              ; preds = %495, %463
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 8
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* %14, align 4
  %503 = icmp ne i32 %501, %502
  br i1 %503, label %504, label %517

504:                                              ; preds = %498
  %505 = load i32, i32* %14, align 4
  %506 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %507 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %506, i32 0, i32 8
  store i32 %505, i32* %507, align 4
  %508 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %509 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %508, i32 0, i32 12
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @MAC_REG_CWMAXMIN0, align 8
  %512 = add nsw i64 %510, %511
  %513 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 8
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @VNSvOutPortB(i64 %512, i32 %515)
  br label %517

517:                                              ; preds = %504, %498
  %518 = load i32, i32* %9, align 4
  %519 = call i64 @VNTWIFIbIsShortPreamble(i32 %518)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %527

521:                                              ; preds = %517
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 11
  %524 = load i64, i64* %523, align 8
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 10
  store i64 %524, i64* %526, align 8
  br label %530

527:                                              ; preds = %517
  %528 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 10
  store i64 0, i64* %529, align 8
  br label %530

530:                                              ; preds = %527, %521
  %531 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %532 = load i32, i32* %8, align 4
  %533 = load i32*, i32** %19, align 8
  %534 = load i32*, i32** %20, align 8
  %535 = call i32 @s_vSetRSPINF(%struct.TYPE_4__* %531, i32 %532, i32* %533, i32* %534)
  %536 = load i32, i32* %8, align 4
  %537 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 9
  store i32 %536, i32* %538, align 8
  %539 = load i32, i32* @TRUE, align 4
  ret i32 %539
}

declare dso_local i32 @MACvSetBBType(i64, i32) #1

declare dso_local i32 @BBbReadEmbeded(i64, i32, i32*) #1

declare dso_local i32 @BBbWriteEmbeded(i64, i32, i32) #1

declare dso_local i64 @VNTWIFIbIsShortSlotTime(i32) #1

declare dso_local i64 @VNTWIFIbyGetMaxSupportRate(i32*, i32*) #1

declare dso_local i64 @VNTWIFIbIsProtectMode(i32) #1

declare dso_local i32 @MACvEnableProtectMD(i64) #1

declare dso_local i32 @MACvDisableProtectMD(i64) #1

declare dso_local i64 @VNTWIFIbIsBarkerMode(i32) #1

declare dso_local i32 @MACvEnableBarkerPreambleMd(i64) #1

declare dso_local i32 @MACvDisableBarkerPreambleMd(i64) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @BBvSetShortSlotTime(%struct.TYPE_4__*) #1

declare dso_local i64 @VNTWIFIbIsShortPreamble(i32) #1

declare dso_local i32 @s_vSetRSPINF(%struct.TYPE_4__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
