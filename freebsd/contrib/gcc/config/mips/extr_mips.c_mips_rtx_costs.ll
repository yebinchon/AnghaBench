; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_rtx_costs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_rtx_costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TARGET_MIPS16 = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@CONSTANT_POOL_COST = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@mips_cost = common dso_local global %struct.TYPE_2__* null, align 8
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @mips_rtx_costs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_rtx_costs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @FLOAT_MODE_P(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %358 [
    i32 153, label %18
    i32 155, label %131
    i32 133, label %131
    i32 145, label %131
    i32 154, label %131
    i32 142, label %141
    i32 151, label %155
    i32 137, label %158
    i32 158, label %172
    i32 146, label %172
    i32 129, label %172
    i32 157, label %183
    i32 156, label %183
    i32 143, label %183
    i32 159, label %200
    i32 144, label %210
    i32 136, label %213
    i32 141, label %213
    i32 138, label %233
    i32 139, label %244
    i32 152, label %279
    i32 140, label %279
    i32 132, label %298
    i32 131, label %298
    i32 135, label %313
    i32 128, label %333
    i32 149, label %353
    i32 130, label %353
    i32 150, label %353
    i32 148, label %353
    i32 147, label %353
    i32 134, label %353
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @TARGET_MIPS16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 157
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 156
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 143
  br i1 %29, label %30, label %44

30:                                               ; preds = %27, %24, %21
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @INTVAL(i32 %31)
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @INTVAL(i32 %35)
  %37 = icmp sle i32 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  br label %43

40:                                               ; preds = %34, %30
  %41 = call i32 @COSTS_N_INSNS(i32 1)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %38
  store i32 1, i32* %5, align 4
  br label %359

44:                                               ; preds = %27
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @INTVAL(i32 %48)
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @INTVAL(i32 %52)
  %54 = icmp slt i32 %53, 65536
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32*, i32** %9, align 8
  store i32 0, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %359

57:                                               ; preds = %51, %47, %44
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @LE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @GE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @GT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @LTU, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @LEU, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @GEU, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @GTU, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @INTVAL(i32 %90)
  %92 = icmp sge i32 %91, -32768
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @INTVAL(i32 %94)
  %96 = icmp slt i32 %95, 32768
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  store i32 1, i32* %5, align 4
  br label %359

99:                                               ; preds = %93, %89, %85
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @EQ, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @NE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @INTVAL(i32 %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  store i32 0, i32* %112, align 4
  store i32 1, i32* %5, align 4
  br label %359

113:                                              ; preds = %107, %103
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SET, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @INTVAL(i32 %118)
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @INTVAL(i32 %122)
  %124 = icmp slt i32 %123, 256
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32*, i32** %9, align 8
  store i32 0, i32* %126, align 4
  store i32 1, i32* %5, align 4
  br label %359

127:                                              ; preds = %121, %117, %113
  br label %130

128:                                              ; preds = %18
  %129 = load i32*, i32** %9, align 8
  store i32 0, i32* %129, align 4
  store i32 1, i32* %5, align 4
  br label %359

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %4, %4, %4, %4, %130
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @LEGITIMATE_CONSTANT_P(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call i32 @COSTS_N_INSNS(i32 1)
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  store i32 1, i32* %5, align 4
  br label %359

138:                                              ; preds = %131
  %139 = load i32, i32* @CONSTANT_POOL_COST, align 4
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  store i32 1, i32* %5, align 4
  br label %359

141:                                              ; preds = %4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @XEXP(i32 %142, i32 0)
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @GET_MODE(i32 %144)
  %146 = call i32 @mips_address_insns(i32 %143, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %141
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @COSTS_N_INSNS(i32 %151)
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  store i32 1, i32* %5, align 4
  br label %359

154:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %359

155:                                              ; preds = %4
  %156 = call i32 @COSTS_N_INSNS(i32 6)
  %157 = load i32*, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  store i32 1, i32* %5, align 4
  br label %359

158:                                              ; preds = %4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @DImode, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* @TARGET_64BIT, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i1 [ false, %158 ], [ %165, %162 ]
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 2, i32 1
  %170 = call i32 @COSTS_N_INSNS(i32 %169)
  %171 = load i32*, i32** %9, align 8
  store i32 %170, i32* %171, align 4
  store i32 1, i32* %5, align 4
  br label %359

172:                                              ; preds = %4, %4, %4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @DImode, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load i32, i32* @TARGET_64BIT, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = call i32 @COSTS_N_INSNS(i32 2)
  %181 = load i32*, i32** %9, align 8
  store i32 %180, i32* %181, align 4
  store i32 1, i32* %5, align 4
  br label %359

182:                                              ; preds = %176, %172
  store i32 0, i32* %5, align 4
  br label %359

183:                                              ; preds = %4, %4, %4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @DImode, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load i32, i32* @TARGET_64BIT, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @XEXP(i32 %191, i32 1)
  %193 = call i32 @GET_CODE(i32 %192)
  %194 = icmp eq i32 %193, 153
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 4, i32 12
  %197 = call i32 @COSTS_N_INSNS(i32 %196)
  %198 = load i32*, i32** %9, align 8
  store i32 %197, i32* %198, align 4
  store i32 1, i32* %5, align 4
  br label %359

199:                                              ; preds = %187, %183
  store i32 0, i32* %5, align 4
  br label %359

200:                                              ; preds = %4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = call i32 @COSTS_N_INSNS(i32 1)
  %205 = load i32*, i32** %9, align 8
  store i32 %204, i32* %205, align 4
  br label %209

206:                                              ; preds = %200
  %207 = call i32 @COSTS_N_INSNS(i32 4)
  %208 = load i32*, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  store i32 1, i32* %5, align 4
  br label %359

210:                                              ; preds = %4
  %211 = call i32 @COSTS_N_INSNS(i32 1)
  %212 = load i32*, i32** %9, align 8
  store i32 %211, i32* %212, align 4
  store i32 1, i32* %5, align 4
  br label %359

213:                                              ; preds = %4, %4
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  store i32 1, i32* %5, align 4
  br label %359

221:                                              ; preds = %213
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @DImode, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %221
  %226 = load i32, i32* @TARGET_64BIT, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = call i32 @COSTS_N_INSNS(i32 4)
  %230 = load i32*, i32** %9, align 8
  store i32 %229, i32* %230, align 4
  store i32 1, i32* %5, align 4
  br label %359

231:                                              ; preds = %225, %221
  br label %232

232:                                              ; preds = %231
  store i32 0, i32* %5, align 4
  br label %359

233:                                              ; preds = %4
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @DImode, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load i32, i32* @TARGET_64BIT, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = call i32 @COSTS_N_INSNS(i32 4)
  %242 = load i32*, i32** %9, align 8
  store i32 %241, i32* %242, align 4
  store i32 1, i32* %5, align 4
  br label %359

243:                                              ; preds = %237, %233
  store i32 0, i32* %5, align 4
  br label %359

244:                                              ; preds = %4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @SFmode, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %9, align 8
  store i32 %251, i32* %252, align 4
  br label %278

253:                                              ; preds = %244
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @DFmode, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %9, align 8
  store i32 %260, i32* %261, align 4
  br label %277

262:                                              ; preds = %253
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @SImode, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %9, align 8
  store i32 %269, i32* %270, align 4
  br label %276

271:                                              ; preds = %262
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %9, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %271, %266
  br label %277

277:                                              ; preds = %276, %257
  br label %278

278:                                              ; preds = %277, %248
  store i32 1, i32* %5, align 4
  br label %359

279:                                              ; preds = %4, %4
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %297

282:                                              ; preds = %279
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* @SFmode, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %9, align 8
  store i32 %289, i32* %290, align 4
  br label %296

291:                                              ; preds = %282
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %9, align 8
  store i32 %294, i32* %295, align 4
  br label %296

296:                                              ; preds = %291, %286
  store i32 1, i32* %5, align 4
  br label %359

297:                                              ; preds = %279
  br label %298

298:                                              ; preds = %4, %4, %297
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* @DImode, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %9, align 8
  store i32 %305, i32* %306, align 4
  br label %312

307:                                              ; preds = %298
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %9, align 8
  store i32 %310, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %302
  store i32 1, i32* %5, align 4
  br label %359

313:                                              ; preds = %4
  %314 = load i32, i32* @TARGET_64BIT, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* @DImode, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %316
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @XEXP(i32 %321, i32 0)
  %323 = call i32 @GET_MODE(i32 %322)
  %324 = load i32, i32* @SImode, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %320
  %327 = call i32 @COSTS_N_INSNS(i32 1)
  %328 = load i32*, i32** %9, align 8
  store i32 %327, i32* %328, align 4
  br label %332

329:                                              ; preds = %320, %316, %313
  %330 = call i32 @COSTS_N_INSNS(i32 2)
  %331 = load i32*, i32** %9, align 8
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %326
  store i32 1, i32* %5, align 4
  br label %359

333:                                              ; preds = %4
  %334 = load i32, i32* @TARGET_64BIT, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %333
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* @DImode, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %349

340:                                              ; preds = %336
  %341 = load i32, i32* %6, align 4
  %342 = call i32 @XEXP(i32 %341, i32 0)
  %343 = call i32 @GET_MODE(i32 %342)
  %344 = load i32, i32* @SImode, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %340
  %347 = call i32 @COSTS_N_INSNS(i32 2)
  %348 = load i32*, i32** %9, align 8
  store i32 %347, i32* %348, align 4
  br label %352

349:                                              ; preds = %340, %336, %333
  %350 = call i32 @COSTS_N_INSNS(i32 1)
  %351 = load i32*, i32** %9, align 8
  store i32 %350, i32* %351, align 4
  br label %352

352:                                              ; preds = %349, %346
  store i32 1, i32* %5, align 4
  br label %359

353:                                              ; preds = %4, %4, %4, %4, %4, %4
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mips_cost, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %9, align 8
  store i32 %356, i32* %357, align 4
  store i32 1, i32* %5, align 4
  br label %359

358:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %359

359:                                              ; preds = %358, %353, %352, %332, %312, %296, %278, %243, %240, %232, %228, %216, %210, %209, %199, %190, %182, %179, %166, %155, %154, %149, %138, %135, %128, %125, %111, %97, %55, %43
  %360 = load i32, i32* %5, align 4
  ret i32 %360
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

declare dso_local i32 @LEGITIMATE_CONSTANT_P(i32) #1

declare dso_local i32 @mips_address_insns(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
